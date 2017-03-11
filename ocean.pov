#include "colors.inc"
#include "textures.inc"

global_settings {
    assumed_gamma 1.0
}

camera {
    location <0, 3.25, -35>
    direction <0, 0, 5>
    up  <0, 1, 0>
    right <1, 0, 0>
    look_at <0, 0, 20>
}

light_source {<50, 100, -60> color rgb White}

object {
    plane {y, 0.00001}
    pigment { color rgb <0, 0.3, 0.6> }
    finish { ambient .2 diffuse .2 specular .2 }
    normal { bumps 0.7 frequency 0.3 turbulence 0.6}
}

