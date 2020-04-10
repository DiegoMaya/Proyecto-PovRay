#include "colors.inc"
//Camara
camera{
 location <0,0,-16>
 look_at<0,0,0>

}              
// Lampara
light_source{
 <-4,6,5>
 White
} 

// Fondo 
background {White} 
/*sky_sphere{ pigment { gradient <0,1,0>
                      color_map { [0.00 rgb <0.6,0.7,1.0>]
                                  [0.35 rgb <0.0,0.1,0.8>]
                                  [0.65 rgb <0.0,0.1,0.8>]
                                  [1.00 rgb <0.6,0.7,1.0>] 
                                } 
                      scale 2         
                    } // end of pigment
          } //end of s

*/  


//      Figuras
// Esfera
sphere{
    <6,-1,0>, 2                     // Localizacion
    
    pigment{ Red }
    finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }

}  

// Cilindro 
cylinder{
    <6, -8, 0>, <6, -1, 0>, .8      // Localizacion
    
    pigment{ color rgb< 0.0, 0.0, 1.0> }
    finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }
}   

sphere { 
   <6, -8, 0>, 1.5                // Localizacion
   
   //clipped_by { plane { <0, -1, 0>, 0.25 } }
   pigment{ color rgb< 0.0, 0.0, 1.0> }
   finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
}   }                                                                   