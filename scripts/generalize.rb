
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
        if @pin_match_conditions.any? { |condition| condition.(name) }
          symbol.set_pin_width!(pin, width)
        end
      end

      #If any of the attributes match any of the provided attribute conditions, adjust
      #their value.
      symbol.each_attribute do |name, value|
        if @attribute_match_conditions.any? { |condition| condition.(name) }
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

  def self.create_collection_modifiers(target, name_by_collection, name_by_block, name_by_starts_with=nil, name_by_regex=nil)

    #
    # Uses the provided block to determine if the component should be modified.
    #
    define_method(name_by_block) do |&block|
      target << block
    end

    #
    # Accepts a list of names, which denote the components to be modified.
    #
    define_method(name_by_collection) do |*collection|
      
      #Automatically add a condition according to the type of the item.
      #For strings, check for case-insensitive equivalence (as VHDL is 
      #For regular expressions, check to see if the regex matches.
      collection.each do |item|
        instance_variable_get(target) << case item
          when String then lambda { |name| self.class.matches_pin_name(name, item) }
          when Regexp then lambda { |name| item === name }
          else raise ArgumentError, "Expected a string or regular expression!"
        end
      end
    end

    #
    # Accepts a list of name prexfies. Any component which starts with a given prefix
    # will be modified.
    #
    if name_by_starts_with
      define_method(name_by_starts_with) do |*collection|

        #Ensure each member of the collection is lowercase,
        #so our compare is case-insensitive.
        collection = collection.map { |i| i.downcase }

        #Check to see if the given pin matches any of our prefixes.
        instance_variable_get(target) << lambda { |name| name.downcase.start_with?(*collection) }

      end
    end

    #
    # Accepts a list of regular expressions. Any component whose name matches the given expressions
    # will be modified.
    #
    if name_by_regex
      define_method(name_by_regex) do |collection|
        instance_variable_get(target) << lambda { |name| name === Regexp.union(*collection) }
      end
    end


  end

  create_collection_modifiers :@pin_match_conditions, :vary_width_of, :vary_width_if, :vary_width_if_starts_with, :vary_width_if_matches
  create_collection_modifiers :@attribute_match_conditions, :vary_value_of, :vary_value_if, :vary_value_if_starts_with, :vary_width_if_matches

  private 

  #
  # Convenience function which retursn only the base name of the pin, without its bus suffix.
  #
  def self.matches_pin_name(pin_name, base_name)

    #Extract the base name of the pin...
    pin_name, _, _ = ISE::Symbol.parse_pin_name(pin_name)

    #If it's zero, we have a match.
    return pin_name.casecmp(base_name).zero?

  end

end
