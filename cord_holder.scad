$fn = 50;


// CHANGE
size = 35;


// CONSTANTS
diameter = size;
hole_diameter = diameter/4;
hole_depth = diameter;
opening_width = diameter/9;

// small top opening
//minkowski(){
	//sphere(1); 
	difference(){
		
		// cable holding hole
		difference(){
			
			// cutting bottom half of circle
			difference(){
				sphere(d=diameter);
	
				// cut with cube	
				translate([0,0,-diameter/4]){
					cube([diameter,diameter,diameter/2],center = true);
				}
			}
			
			// cut with cylinder
			translate([0, hole_depth/2, diameter/3]){
				rotate([90,0,0]){
					cylinder(h = hole_depth, d = hole_diameter);
				}
			}
		}
		
		// cut with small cube
		translate([0,0,diameter/2]){
			cube([opening_width,hole_depth,opening_width], center = true);
		}
	}
//}
