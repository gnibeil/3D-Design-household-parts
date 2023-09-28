/*
This project is to create handles fitting a clage K5 water boiler/heater

Copyright (c) 2023, Simon Liebing <gnibeil@liebing.cc>
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 
*/

module handle()
{
 color("red",alpha)
 union(){
 difference(){
  union(){for ( i = [0:1:10]){ rotate(a=36*i,v=[0,0,1]){translate([-9,-9,7]){rotate(a=42,v=[0,0,1]){cube([18,18,10]);}}}}  cylinder(23,r=18.5,$fn=500);  }
  translate([0,0,2]){cylinder(21.1,r=15,$fn=500);}
    }
difference(){cylinder(39,r=7.5,$fn=500);   
  for ( i = [0:1:20]){ rotate(a=18*i+9.5,v=[0,0,1]){translate([-2.75,-2.75,21]){rotate(a=42,v=[0,0,1]){cube([5.5,5.5,25]);}}}}
   translate([-0.75,-8,21]){cube([1.5,16,20]);}
   translate([0,0,2]){cylinder(37.1,r=4.5,$fn=500);}
   translate([-2.25,-6.5,21]){cube([4.5,13,20]);}
    } }
    }

module ring()
 {
 color("lightgreen",alpha)
 difference()
     {cylinder(8,r=10,$fn=500);
      translate([0,0,-0.1]){cylinder(8.2,r=7.65,$fn=500);}   }       
 }
    

// Choose which part you want to create my moving the comment
handle();
//ring();
