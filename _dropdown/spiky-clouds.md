---
layout: page
title: spiky-clouds
description: A filter to convert images into spiky images
tags: ["needle", "drawing", "filter", "p5js"]
dropdown: Open Source
priority: 120
---
<!-- Automatically generated. Run search_repos.rb to rebuild -->


This is a filter that converts images into spiky images.
The image is created by drawing needles instead of pixels for each pixel value.

You get a crappy drawing of yours and it transforms the drawing into a spooky image:

|Original|Spiky|
|:-------------------------:|:-------------------------:|
|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds.png)|![spiky logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-min-gradient.png)|
|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena.png)|![spiky logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-min-gradient.png)|


## Installation
```bash
npm install spiky-clouds
```
### Dependencies
-   [Processing](https://processing.org/)
-   [XVFB](https://www.x.org/archive/X11R7.7/doc/man/man1/Xvfb.1.xhtml)

## Usage
```javascript
const sc = require("spiky-clouds")
sc(inputFile, outputFile, {seed: 42}).then(() => {
  console.log("done!");
});
```
### `sc(inputFile, outputFile[, opts])`:
Applies the filter in the `inputFile` generating the `outputFile`.
#### opts:
-   `seed`: Chooses the seed to be used for pseudo random number generation.
-   `minLength`: Chooses the minimum length of a needle. **Default: 0.00 (0%).**
-   `maxLength`: Chooses the maximum length of a needle. **Default: 0.02 (2%).**
-   `minWidth`: Chooses the minimum width of a needle. **Default: 0.0005 (0.05%).**
-   `maxWidth`: Chooses the maximum width of a needle. **Default: 0.001 (0.1%).**
-   `alpha`: Sets the value for the alpha channel for the needles. **Default: 255**
-   `rotation`: Chooses the mode in which the needles align. **Default:
    "min_gradient"**. Available modes:
    -   `min_gradient`: Draws the needles in the direction of the smallest gradient.
    -   `max_gradient`: Draws the needles in the direction of the largest gradient.
    -   `random`: Draws the needles randomly.
-   `angles`: Limits the available angles (in degrees) for the rotation modes, eg: `[0, 180]` - *horizontal needles*.
-   `verbose`: Shows the progress of the render.

The value arguments `maxLength`, `minLength`, `maxWidth`, `minWidth` should be a float that represents a percentage of the perimeter, eg:
0.05 => 5% of the perimeter.

#### Command line
There's also a command line application
```
Usage: spiky-clouds [-h | -v] [OPTS] INPUT_FILE OUTPUT_FILE
Converts images applying the 'spiky-clouds' filter

Arguments:
  -h, --help        Show this help.
  -v, --version     Shows the software version.
  -s, --seed        Chooses the seed to be used for pseudo random number generation.
  -l, --min-length  Chooses the minimum length of a needle. Default: 0.00 (0%).
  -L, --max-length  Chooses the maximum length of a needle. Default: 0.02 (2%).
  -w, --min-width   Chooses the minimum width of a needle. Default: 0.0005 (0.05%).
  -W, --max-width   Chooses the maximum width of a needle. Default: 0.001 (0.1%).
  -a, --alpha       Sets the value for the alpha channel for the needles. Default: 255
  -r, --rotation    Chooses the mode in which the needles align. Default: "min_gradient".
    Available modes:
      min_gradient  Draws the needles in the direction of the smallest gradient.
      max_gradient  Draws the needles in the direction of the largest gradient.
      random        Draws the needles randomly.
  -g, --angles:     Limits the available angles (in radians) for the rotation modes, eg: "[0, PI]" - horizontal needles.
  --verbose:        Shows the progress of the render
```

## Examples

|Mode|Logo|Lena|
|:-------------------------:|:-------------------------:|:-------------------------:|
|Original|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena.png)|
|Minimum gradient rotation|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-min-gradient.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-min-gradient.png)|
|Maximum gradient rotation|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-max-gradient.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-max-gradient.png)|
|Random rotation|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-random.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-random.png)|
|Medium alpha|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-medium-alpha.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-medium-alpha.png)|
|Low alpha|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-low-alpha.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-low-alpha.png)|
|Big needle length|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-big-length.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-big-length.png)|
|Small needle length|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-small-length.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-small-length.png)|
|Medium needle width|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-medium-width.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-medium-width.png)|
|Big needle width|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-big-width.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-big-width.png)|
|Angles: 45°, 135°, -45° -135°|![logo](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/spiky-clouds-angles.png)|![lena](https://raw.githubusercontent.com/luxedo/spiky-clouds/master/docs/lena-angles.png)|


## License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

---
Check out the [repo](https://github.com/luxedo/prettycode)
