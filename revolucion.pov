#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//================================================
 

//================================================
//Camara
camera{
 location <10,5,-30>
 look_at<6,0,0>

}              
  //plano y    
  plane {
    y, -8
   	texture {
   	pigment{    image_map { jpeg "mar.jpg"}  }
    finish { ambient 0.3 diffuse 0.6 }
    scale <10,100,1>
    }	
}	    

  //Plano z
  plane {
    z, 10
    pigment{  FBM_Clouds  }
 } 
  plane {
    z, 11
    pigment{  color SlateBlue  }
 }
  
  //Plano x
  plane {
    x, -10
     texture {Starfield}
  }
  plane {
    x, -9.8
    pigment{  FBM_Clouds  }
 } 
 
//}
// Lampara
light_source{   <-4,40,-20>  color White  } 
light_source{   <15,4,0>   White  }

//==============    Figuras    ===================
 
lathe {  linear_spline 4,  <2, 0>, <3, 0>, <3, 5>, <2, 5>//, <2, 0>, <1, 1>, <2, 2>, <3, 3> 
  pigment {Red}
  rotate <-50,0,-30>
  translate <3, 0, -2>
 } 
height_field {
    tga "mar.tga"
    smooth
    pigment { Jade }
    translate <-.5, -2.5, -.5>
    scale <60, 2, 40>
  }