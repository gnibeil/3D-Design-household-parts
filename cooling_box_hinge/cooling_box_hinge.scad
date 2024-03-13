// This script greates a replacement hinge for a cooling box. In this special case of MobiFridge. 
// 
// Since only one hinge was produced the measurements are not super precize and should be optimized. But with some work after printing the parts could be used. To fit the two parts together a shortend 2.5 x 55 mm nail was used.

module screw_part()
{   
  difference(){
   union(){   
   cube([15,43,3]); 
   translate([0,0,5]){rotate(v=[1,0,0],a=-90){ difference(){cylinder(43,r=5,$fn=500);translate([0,0,-0.1]){cylinder(45,r=1.15,$fn=500);} } }}
   }
  translate([10,21.5,-0.1]){cylinder(3.2,r=2,$fn=500);}
  translate([10,21.5,-0.1]){cylinder(1.6,r1=4,r2=2,$fn=500);}
  translate([10,6,-0.1]){cylinder(3.2,r=2,$fn=500);}
  translate([10,6,-0.1]){cylinder(1.6,r1=4,r2=2,$fn=500);}
  translate([10,37,-0.1]){cylinder(3.2,r=2,$fn=500);}
  translate([10,37,-0.1]){cylinder(1.6,r1=4,r2=2,$fn=500);}
  translate([-5,6,-0.1]){cube([10,6,95]);}
 translate([-5,18,-0.1]){cube([10,6,95]);}
 translate([-5,30,-0.1]){cube([10,6,95]);} 
}
}

module stick_part()
{
difference(){
 union(){
     translate([-45,6,6]){cube([45,31,4]);}
     translate([0,6,5]){rotate(v=[1,0,0],a=-90){ difference(){cylinder(31,r=5,$fn=500);translate([0,0,-0.1]){cylinder(35,r=1,$fn=500);} } }}
     translate([-6,6,6]){cube([11,31,8]);}
     }
    translate([-45.1,12,9]){cube([42,6,1.5]);}   
    translate([-45.1,24,9]){cube([42,6,1.5]);} 
    translate([-6.5,12,-5]){cube([14,6,20]);}   
    translate([-6.5,24,-5]){cube([14,6,20]);} 
    translate([-48,-1,1]){rotate(45){cube(10);}}
    translate([-48,30,1]){rotate(45){cube(10);}}
    translate([-8,5.9,14]){rotate(v=[1,0,0],a=-90){cylinder(31.2,r=4,$fn=500);}}
    }

}


// display the constructed objects
//screw_part();
stick_part();
