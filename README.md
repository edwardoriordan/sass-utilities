Sass Utilities
==============

Compass plugin with various Sass script utility functions. Includes 

* Functions to test if a variable, mixing and function exists
* Variable interpolation

## Installation

Make sure you have Compass and *Sass 3.3* or greater installed. Sass 3.3 is currently in alpha. To instal the alpha version

```gem install sass --pre```

To install Sass Utilities

```gem install modular-scale```

Require Compass and Singularity into your Compass config.rb

``` require 'sass-utilities' ```

Import the file into your stylesheets

```@import 'sass-utilities';```

## Coming (maybe!)

* Function and mixin interpolation - hopefully https://github.com/nex3/sass/issues/626 gets into Sass soon so an extension doesn't have to worry about it.