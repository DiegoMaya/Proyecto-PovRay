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
   	pigment{    image_map { jpeg "pasto.jpg"}  }
    finish { ambient 0.3 diffuse 0.6 }
    scale <.10,.1,1>
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

blob {
    threshold .1
    sphere  { <4.5,0,-5.5>, 2, 1 pigment {White} }
    sphere  { <10.5,0,-5.5>, 2, 1 pigment {White} }
    sphere  { <7.5,3,-5.5>, 2, 1 pigment {White} }
    sphere  { <7.5,-3,-5.5>, 2, 1 pigment {White} } 
    sphere  { <7.5,0,-5.5>,2, 1 pigment {Yellow} }
    cylinder{ <7.5,-2.5,-5.5>, <7.5,-8.5,-5.5>, 1, 2 pigment {Green}}
    finish { phong 1 }
    translate < 2,1, -4.5>
  }