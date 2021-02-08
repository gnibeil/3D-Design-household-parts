// Copyright (c) 2021, Simon Liebing <gnibeil@liebing.cc>
// All rights reserved.

// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. 
// clip to knot on the end of a window cover string to easialy open and close the window cover
// final stl files and pictures can be found on thingiverse: https://www.thingiverse.com/thing:4754328
module knob_for_window_cover()
{   rotate(180,[1,0,0])
 difference(){   
  cylinder(25,r1=3,r2=7.5,$fn=1500);
   translate([0,0,-0.1]){
   cylinder(5.2,r=2,$fn=1500);
    }
   translate([0,0,4.9]){
    cylinder(20.2,r1=2,r2=6.5,$fn=1500);
   }   
   }
 }
 knob_for_window_cover();
 
