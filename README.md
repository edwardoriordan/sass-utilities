Sass Utilities
==============

Compass plugin with various Sass script utility functions. Includes 

* Functions to test if a variable, mixing and function exists
* Variable interpolation

## Installation

Make sure you have Compass and *Sass 3.3* or greater installed. *Sass 3.3 is currently in alpha*. To instal the alpha version

```sass gem install sass --pre```

To install Sass Utilities

```sass gem install modular-scale```

Require Sass Utilities into your Compass config.rb

```sass require 'sass-utilities' ```

Import the file into your stylesheets

```sass @import 'sass-utilities';```

## Functions

### Test for existence

```sass

$does-exist-var: 'myVar';

// note that you pass in does-exist-var, not $does-exist-var
variable_exists(does-exist-var); // returns true
variable_exists(doesnt-exist-var); // returns false

@mixin mixing-does-exist {
  -test: 'I do exist';
}

mixin_exists(mixing-does-exist); // returns true
mixin_exists(mixing-doesnt-exist); // returns false

@function function-does-exist() {
  @return 'does-exist'
}

function_exists(function-does-exist); // returns true
function_exists(function-doesnt-exist); // returns false

```

### Variable interpolation

```sass

$color: red;
$fs: 3rem;

color: interpolate_variable(color);
font-size: interpolate_variable(fs);

```

```css

color: red;
font-size: 3rem;

```

This is obviously a silly example. Interpolation can be very useful in other contexts. We might be getting a maps data type in sass (https://github.com/nex3/sass/issues/642) which will mean that some of this functionality may not be necessary. There might still be situtation in which is is desirable (especially as the interpolate funtion doesn't throw an error if the variable doesn't exist, it justs returns false).

## Coming (maybe!)

* Function and mixin interpolation - hopefully https://github.com/nex3/sass/issues/626 gets into Sass soon so an extension doesn't have to worry about it.