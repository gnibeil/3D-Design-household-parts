// Copyright (c) 2019, Simon Liebing <gnibeil@liebing.cc>
// All rights reserved.

// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. 

 module stove_handle_flame()
{ 
union(){    
 difference(){
// union defining the outer shape of the handle   
     union() {
     //cylinder at the bottom    
     cylinder(10,r=25);
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
 // space inside the handle 
  translate([0,0,-0.1]){
 cylinder(8.1,r=23);
 cylinder(14.1,r=4.2);     
   }}
    // round parts in the center
   translate([0,0,0]){
     // produces the  two large ring parts  
       difference(){
       cylinder(8,r=9);
       translate([0,0,-0.1]){
           cylinder(8.1,r=6.3);
           }
       translate([-8.35,-9,-0.1]){
           cube([16.6,4.5,8.1]);
           }   
       translate([-8.35,5,-0.1]){
           cube([16.6,4.2,8.1]);
           }      
           }
     // adds the strait part in the inner hole      
      translate([-4.2,-4.2,8]){
        cube([8.2,1,6.5]);
          } 
     // produces the outer half cylinder 
          difference(){
      translate([0,5.15,0]){
        cylinder(8,r=4);
     }
          translate([-4,0.8,-.1]){
         cube([8,4.01,8.1]);
              }
         }    
       }
   }
  }
stove_handle_flame();
