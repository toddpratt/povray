#include "colors.inc"
#include "textures.inc"

camera {
   location <0, 4.25, -45>
   direction <0, 0, 5>
   up  <0, 1, 0>
   right <1, 0, 0>
   look_at <0, 0, 90>
}

//Key Light
light_source {<50, 100, -60> color rgb White}

//Back Light
light_source {<100, 50, 40> color rgb White}

object {
   sphere {<2, -1, 3> .5}
   pigment {color rgb <5, 10, 1>}
   texture { Blue_Agate }
   finish { ambient .4 diffuse .4 specular .25 }
}

object {
   sphere {<-.6, 2.6, -2> 1.6}
   pigment {color rgb <.1, .2, .4>}
   //texture { Blood_Marble }
   finish { ambient .4 diffuse .4 specular .25 }
   normal { waves turbulence 3 }
}

object {
   disc {<-.6, 2.6, -2>, <-0.3, 1, -0.5>, 2, 1.7}
   pigment {
      marble
      turbulence 2
      color_map {
        [0.2 color rgbf <0, .2, .1, .5>]
        [0.4 color rgbf <.1, .2, 0, .5>]
      }
   }
   finish { ambient .4 diffuse .4 specular .25 }
   normal { bumps }
}

object {
   disc {<-.6, 2.6, -2>, <-0.3, 1, -0.5>, 2.7, 2}
   pigment {
      radial
      frequency 50
      color_map {
        [0.5 color rgbf <0, .2, .1, .8>]
        [0.5 color rgbf <0, .2, .6, .95>]
      }
   }
   finish { ambient .4 diffuse .4 specular .25 }
}
