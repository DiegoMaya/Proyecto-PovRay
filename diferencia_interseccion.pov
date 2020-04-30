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
    scale <.00001,1000,.01>
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
difference{
    
    sphere{   <3.1,-1,>, 3.3   }
    box{  <6, -4, -2.5>, <0.2, 2, 2.5> }
    
    pigment{ Red }
    finish { phong 1.0  }
    rotate <10, -20 , >        
    translate <2, 2, -2>
    
   }
intersection{ 
    
    sphere{ <3.1,-1,>, 3.3   
            pigment{ Blue }
            }
    box{ <6, -4, -2.5>, <0.2, 2, 2.5> 
         pigment{ Red }
         }
    
    
    finish { phong 1.0  }
    rotate <10, -20 , > 
    translate <10, 2, -2.5>
    
    }
    
    