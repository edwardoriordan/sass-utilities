require 'compass'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('sass-utilities', :path => extension_path)

module SassUtilities
  VERSION = "1.0"
  DATE = "2013-03-03"
end

module Sass::Script::Functions

  # Exists
  def variable_exists(variable_name)
    if(environment.var(variable_name.value))
      Sass::Script::Bool.new(true)
    else
      Sass::Script::Bool.new(false)
    end
  end

  def mixin_exists(mixin_name)
    if(environment.mixin(mixin_name.value))
      Sass::Script::Bool.new(true)
    else
      Sass::Script::Bool.new(false)
    end
  end

  def function_exists(function_name)
    if(environment.function(function_name.value))
      Sass::Script::Bool.new(true)
    else
      Sass::Script::Bool.new(false)
    end
  end

  # Interpolate
  def interpolate_variable(variable_name)
    environment.var(variable_name.value) || Sass::Script::Bool.new(false)  
  end

end