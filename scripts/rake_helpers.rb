require 'require_all'
require_all '.'

#
# Helpers which allows global access to generation functions.
#

def generate_width_variations_of(base_symbol, base_vhdl, output_path=Dir.pwd, &block)
  WidthVariationBuilder.generate_width_variations_of(base_symbol, base_vhdl, output_path, &block)  
end
