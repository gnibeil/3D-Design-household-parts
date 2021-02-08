// Copyright (c) 2021, Simon Liebing <gnibeil@liebing.cc>
// All rights reserved.

// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. 
// 
// The code produces clips to repair a clothing dryer with 15mm diameter base tubes.
// The fill code produces a clip for the upper tube to refit the upper wires the cloth are places on. It has an cube on top were the wire can be melted in.
// To get a feet clip comment out the lines as described.
// final stl files and pictures can be found on thingiverse: https://www.thingiverse.com/thing:4754404
 module dryer_clip()
{ //
    union(){          
             difference(){
        cylinder(12,r=8.75,$fn=1500);
             translate([0,0,-0.1]){    
        cylinder(12.2,r=7.25,$fn=1500);
             }
             translate([-10,-5,-0.1]){
             cube([10,10,12.2]);
         }
                 }                 
    }
// comment out the following 3 lines if you want to produce a clip to replace on of the feets of the cloth dryer.    
    translate([7.5,-3,1]){
        cube([5.5,6,10]);
        }
}

dryer_clip();
