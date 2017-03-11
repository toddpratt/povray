#include "colors.inc"
#include "textures.inc"

global_settings {
    assumed_gamma 1.0
}

camera {
    location <0, 35, -70>
    direction <0, 0, 5>
    up <0, 1, 0>
    right <1, 0, 0>
    look_at <0, 0, 0>
}

light_source {<100, 100, 0> color Blue}

object {
    plane {y, 1}
    pigment {
      marble
      turbulence 3
      //lambda 2
      //omega .8
      //octaves 5
      //frequency 3
      color_map {
        [0.2 color rgbf <0, .2, .1, 0>]
        [0.8 color rgbf <.1, .2, 0, 0>]
      }
    }
    finish { ambient 3 diffuse 2 specular 1 }
    normal { waves 0.8 turbulence .4 frequency 8 }
}
