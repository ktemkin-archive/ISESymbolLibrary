
require 'ise'

class WidthVariationBuilder

  DEFAULT_BUS_WIDTH = 2..32
  COMPONENT_NAME_PLACEHOLDER = 'COMPONENT_NAME_PLACEHOLDER'
  BUS_WIDTH_PLACEHOLDER = 'BUS_WIDTH_PLACEHOLDER'

  #
  # Convenience method which allows quick generation of width-varied 
  # copies of a symbol.
  #
  def self.generate_width_variations_of(base_symbol, base_vhdl)

    #Create a new builder object. 
    builder = WidthVariationBuilder.new(base_symbol, base_vhdl)

    #Yield it for configuration.
    yield builder

    #Finally, generate the width-varied copie(s).
    builder.build

  end


  def initialize(base_symbol, base_vhdl_filename)

    base_symbol = ISE::Symbol.load(base_symbol) unless base_symbol.is_a?(ISE::Symbol)

    @base_symbol = base_symbol
    @base_vhdl = File::read(base_vhdl_filename)

    #Assume default values for most of our paramters...
    @widths = DEFAULT_BUS_WIDTH
    @component_name_placeholder = COMPONENT_NAME_PLACEHOLDER
    @bus_width_placeholder = BUS_WIDTH_PLACEHOLDER 
    @output_path = Dir.pwd

    #And start off with empty conditions for the values we can't infer.
    @pin_match_conditions = []
    @attribute_match_conditions = []
  end

  #
  # Setter for the component
  #
  def component_name_placeholder(value)
    @component_name_placeholder = value
  end

  def bus_width_placeholder(value)
    @bus_width_placeholder = value
  end

  def output_to(value)
    @output_path = value 
  end

  #
  # Specifies the range between which the 
  # 
  def vary_width_between(range)
    @widths = range
  end

  #
  # Generates the symbol files configured by this 
  #
  def build(output_path=@output_path)
    @widths.each do |width|

      #Create a copy of the symbol.
      symbol = @base_symbol.clone

      #If any of the pins match any of the provided pin conditions, adjust the width
      #of that pin.
      symbol.each_pin_with_name do |pin, name|
        if @pin_match_conditions.any? { |condition| condition.call(name) }
          symbol.set_pin_width!(pin, width)
        end
      end

      #If any of the attributes match any of the provided attribute conditions, adjust
      #their value.
      symbol.each_attribute do |name, value|
        if @attribute_match_conditions.any? { |condition| condition.call(name) }
          symbol[name] = width
        end
      end

      #Append the width modifier to the symbol's name.
      symbol.name = "#{symbol.name}_#{width}"

      #Determine the location at which the relevant files should be created.
      file_name_base = "#{output_path}/#{symbol.name}"

      #Create a copy of the VHDL file will all of its placeholders filled in.
      vhdl = @base_vhdl.gsub(Regexp.union(@component_name_placeholder), symbol.name)
      vhdl = vhdl.gsub(Regexp.union(@bus_width_placeholder), width.to_s)
      File::write("#{file_name_base}.vhd", vhdl)

      #Finally, save the modified symbol file.
      symbol.save("#{file_name_base}.sym")

    end
  end

  def self.create_collection_modifiers(target, name_by_collection, name_by_block, name_by_starts_with=nil)

    #
    # Uses the provided block to determine if the component should be modified.
    #
    define_method(name_by_block) do |&block|
      self.instance_variable_get(target) << block
    end

    #
    # Accepts a list of names, which denote the components to be modified.
    #
    define_method(name_by_collection) do |*collection|
      collection = collection.map { |i| i.downcase }
      self.instance_variable_get(target) << lambda { |name| collection.include?(name.downcase) }
    end

    #
    # Accepts a list of namess 
    #
    define_method(name_by_starts_with) do |*collection|
      collection = collection.map { |i| i.downcase }
      self.instance_variable_get(target) << lambda { |name| name.downcase.start_with?(*collection) }
    end

  end

  create_collection_modifiers :@pin_match_conditions, :vary_width_of, :vary_width_if, :vary_width_if_starts_with
  create_collection_modifiers :@attribute_match_conditions, :vary_value_of, :vary_value_if, :vary_value_if_starts_with

end
