// Copyright (c) 2019, Simon Liebing <gnibeil@liebing.cc>
// All rights reserved.

// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. 

 module stove_handle_backing()
{ 
union(){    
 difference(){
   // union defining the outer shape of the handle      
   union() {
   //cylinder at the bottom  
     translate([0,0,8]){  
     cylinder(2,r=25);
     }
      translate([0,0,5]){
     cylinder(3,r=9);
     }
   // handle part at the cylinder     
      translate([-23,-5,10]){
         cube([46,10,20]);
         } 
   // pointing mark at the front  
     translate([23,-0.5,10]){
     cube([1,1,21]);
     }
   // mark on top of the handle part    
   translate([0,-0.5,30]){
     cube([24,1,1]);
     }  
  }
   // inner hole  
  translate([0,0,-0.1]){
 cylinder(14.1,r=4.2);     
   }}
   // round parts in the center  
   translate([0,0,0]){
       difference(){
       cylinder(8,r=9);
       translate([0,0,-0.1]){
           cylinder(8.1,r=4.2);
           }
       translate([-8.5,-9,-0.1]){
           cube([17.5,6,8.1]);
           }   
       translate([-8.35,4.21,-0.1]){
           cube([16.6,4.9,8.1]);
           }      
           }
   //scale holder 1    
         translate([0,16,2]){
             cylinder(6,r=2);
             }  
        translate([0,16,6.5]){
             cylinder(1.5,r=3);
             }
   //scale holder 2       
         translate([0,-16,2]){
             cylinder(6,r=2);
             } 
         translate([0,-16,6.5]){
             cylinder(1.5,r=3);
             }
   // guidance for scale       
             translate([-10,-10,6.5]){
             cylinder(1.5,r=2.25);
             }
             translate([10,-10,6.5]){
             cylinder(1.5,r=2.25);
             }
   // adds the strait part in the inner hole              
      translate([-4.2,-4.2,5]){
          cube([8.2,1,9.5]);
          }
   // produces the outer half cylinder          
      difference(){
      translate([0,5.15,0]){
         cylinder(8,r=4);
     }
          translate([-4,0.2,-.1]){
         cube([8,4.01,8.1]);
              }
         }    
       }
   }
  }
stove_handle_backing();
