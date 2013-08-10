Sass Utilities
==============

Compass plugin with various Sass script utility functions. Includes 

* Functions to test if a variable, mixing and function exists (these now exist in Sass 3.3 - https://github.com/nex3/sass/pull/821)
* Variable interpolation

## Installation

Make sure you have Compass and *Sass 3.3* or greater installed. *Sass 3.3 is currently in alpha*. To instal the alpha version

```sass gem install sass --pre```

To install Sass Utilities

```sass gem install sass-utilities```

Require Sass Utilities into your Compass config.rb

```sass require 'sass-utilities' ```

**Don't** import the file into your stylesheets. Sass utilities has no .sass or .scss files. If you try to import you will get an error.

## Functions

### Test for existence

```sass

$does-exist-var: 'myVar';

// note that you pass in does-exist-var, not $does-exist-var
variable-exists(does-exist-var); // returns true
variable-exists(doesnt-exist-var); // returns false

@mixin mixing-does-exist {
  -test: 'I do exist';
}

mixin-exists(mixing-does-exist); // returns true
mixin-exists(mixing-doesnt-exist); // returns false

@function function-does-exist() {
  @return 'does-exist'
}

function-exists(function-does-exist); // returns true
function-exists(function-doesnt-exist); // returns false

```

### Variable interpolation

```sass

$color: red;
$fs: 3rem;

// note that you pass in color, not $color
color: interpolate-variable(color);
font-size: interpolate-variable(fs);

```

```css

color: red;
font-size: 3rem;

```

There will be maps data type in Sass (https://github.com/nex3/sass/issues/642) which will mean that some of this functionality may not be necessary. There might still be situtations in which it is desirable (especially as the interpolate funtion doesn't throw an error if the variable doesn't exist, it just returns false).

## Coming (maybe!)

* Function and mixin interpolation - hopefully https://github.com/nex3/sass/issues/626 gets into Sass soon so an extension doesn't have to worry about it.

## License

Copyright (c) 2013 [Edward O'Riordan](http://edwardoriordan.com) (https://twitter.com/edwardoriordan)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.