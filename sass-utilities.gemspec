# Replace extension with the name of your extension's .rb file
require './lib/sass-utilities'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = SassUtilities::VERSION
  s.date = SassUtilities::DATE

  # Gem Details
  # Replace "extension" with the name of your extension
  s.name = "sass-utilities"
  # Description of your extension
  s.description = %q{Various Sass script utility functions. Includes tests for existence and variable interpolation}
  # A summary of your Compass extension. Should be different than Description
  s.summary = %q{Various Sass script utility functions. Includes tests for existence and variable interpolation. Hopefully things that can be in the future done in Sass or added to Compass}
  # The names of the author(s) of the extension.
  # If more than one author, comma separate inside of the brackets
  s.authors = ["Edward O'Riordan"]
  # The email address(es) of the author(s)
  # If more than one author, comma separate inside of the brackets
  s.email = ["hello@edwardoriordan.com"]
  # URL of the extension
  s.homepage = "https://github.com/edwardoriordan/sass-utilities"

  # Gem Files
  # These are the files to be included in your Compass extension.
  # Uncomment those that you use.
  
  # README file
  s.files = ["README.md"]

  # CHANGELOG
  # s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")
  
  # Sass Files
  # s.files += Dir.glob("stylesheets/**/*.*")
  
  # Template Files
  # s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("sass",      [">= 3.3.0.alpha.93"])
  s.add_dependency("compass",   [">= 0.12.1"])
end