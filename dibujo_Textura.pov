/*
  Creado por: Diego Maya Estrada
  Material de apoyo recuperado de:
       Design of Surfaces by "texture" with POV-Ray de
             http://www.f-lohmueller.de/pov_tut/tex/tex_160e.htm
       POV-Ray demo files preview - Index

*/
#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//========================



//=======================
//Camara
camera{
 location <0,0,-16>
 look_at<0,0,0>

}              
// Fondo 
//background {White} 
plane {
  z, 3.01
  hollow on
  pigment {Blue_Sky}
}
// Lampara
light_source{   <-4,6,0>   White  } 
light_source{   <-4,4,0>   White  }

//==============    Figuras    ===================
//  Esfera
sphere{
    <6,-1,0>, 2                     // Localizacion
    
texture {  Ruby_Glass  }


}  

//  Cilindro 
cylinder{
    <6, -8, 0>, <6, -2, 0>, .4      // Localizacion
    
    texture {  Chrome_Metal }
    finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }
}   

sphere { 
   <6, -8, 0>, 1.2                // Localizacion
   
   //clipped_by { plane { <0, -1, 0>, 0.25 } }
 pigment {
        crackle
        colour_map {
            [0.05 colour rgb<0, 0, 0> ]
            [0.08 colour rgb<0, 1, 1> ]
            [0.10 colour rgb<0, 1, 1> ]
            [1.00 colour rgb<0, 0, 1> ]
        }
    scale 0.3
    }
    finish { Shiny }
 }
//  Texto 
text { ttf "crystal.ttf", "EEGGOO", 1, 0
   translate <-2, -1, -7>
   texture{  Polished_Chrome  }
  
   scale <2, 2, 1>
   rotate <-2, 1, -1>
   }
//===================================================

                                                              