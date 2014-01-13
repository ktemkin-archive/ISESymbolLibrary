
require 'require_all'
require_all '.'

require 'ise'

#
# Helpers which allows global access to generation functions.
#

def bus_widths(args)
  #Get the bus widths, or the defaults if they don't exist.
  low = args[:low] || DEFAULT_BUS_WIDTHS.first
  high = args[:high] || DEFAULT_BUS_WIDTHS.last

  #And return a range which includes each bus width do be created.
  low..high
end

def generate_width_variations_of(base_symbol, base_vhdl, &block)
  WidthVariationBuilder.generate_width_variations_of(base_symbol, base_vhdl, &block)  
end

#More specific helper with sane defaults.
def generate_standard_width_variations_of(base_name, args)
  WidthVariationBuilder.generate_width_variations_of("base_files/#{base_name}.sym", "base_files/#{base_name}.vhd") do |s|
    s.vary_value_of              'BusWidth'
    s.vary_width_between          bus_widths(args)
    yield s
  end
end

#
# Helper function which creates a Rake rule to generate simple parts.
#
def create_simple_rule(regex, *elements)
  rule(regex, STD_ARGS) do |t, args|
    generate_standard_width_variations_of(t.name, args) { |s| s.vary_width_of(*elements) }
  end
end
