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
#declare bola =  sphere{   <6,-1,0>, 2   };                  // Localizacion
    


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
  texture {Starfield}
}
// Lampara
light_source{   <-30,40,-40>  color White  } 
light_source{   <-4,4,0>   White  }

//==============    Figuras    ===================
//  Esfera
object{   bola   
    texture { Gold_Metal}
    normal{ bump_map { jpeg "poke.jpg" 
                        interpolate 2
                        map_type 0 once
                        bump_size 5 }
            translate <0.9, -0.75, 1>
            scale <3.8,3.9,5.3> }
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
 pigment { color SteelBlue }
    finish { Shiny }
 }
//  Texto 
text { ttf "crystal.ttf", "EEGGOO", 1, 0
   translate <-2, -1, -7>
   texture{  Polished_Brass }
  
   scale <2, 2, 1>
   rotate <-2, 1, -1>
   }
//===================================================

                                                              