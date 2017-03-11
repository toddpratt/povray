#include "colors.inc"
#include "textures.inc"

global_settings {
    assumed_gamma 1.0
}

camera {
    location <-50, 20, -20>
    direction <0, 0, 5>
    up  <0, 1, 0>
    right <1, 0, 0>
    look_at <0, 5, 0>
}

light_source {<80, 10, -80> color White}
light_source {<-1000, 800, -800> color White}

object {
    plane {z, 2}
    pigment {
      checker
      pigment {
        marble turbulence 3
        color_map {
          [0.2 color rgb <0, .5, .5>]
          [0.8 color rgb <1, .5, .5>]
          [0.8 color White]
        }
      },
      pigment {
        marble turbulence 2
        color_map {
          [0.2 color rgbf <1, 1, .5>]
          [0.8 color Black]
        }
      }
    }
   //finish { ambient .2 diffuse .2 specular .1 reflection .1}
}

object {
    plane {y, 0}
    pigment {
      checker
      pigment {
        marble turbulence 3
        frequency 0.7 
        color_map {
          [0.0 color rgb <0.4, 0.7, 1.0>]
          [0.4 color Black]
        }
      },
      pigment {
        marble turbulence 2
        frequency 1
        color_map {
          [0.0 color rgb <0.0, 0.9, 0.9>]
          [0.2 color rgb <0.3, 0.9, 0.7>]
          [0.5 color White]
        }
        rotate 90*x
      }
    }
    //finish { diffuse 1 reflection .1}
    //normal { ripples 0.7 }
}

