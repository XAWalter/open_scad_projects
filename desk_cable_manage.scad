$fn = 50;

// CHANGE
// NO SMALLER THAN 25
size = 50;


// CONSTANT
width = size;
depth = width*(3/5);
height = width*(2/5);

hole_diameter = width/7;
opening = width*.07;

difference(){
	difference(){
		// cut bottom half of ellipse 
		difference(){
			resize([width,depth,height]){
				sphere(1);
			}
				
			translate([0,0,-height/2]){
				cube([width,depth,height], center = true);
			}
		}
		
		translate([0,0,height/4+.25]){
			rotate([90,0,0]){
				cylinder(h = depth, d = hole_diameter, center = true); 
			}
		
			translate([-width/4,0,0]){
				rotate([90,0,0]){
					cylinder(h = depth, d = hole_diameter, center = true); 
				}
			}
		
			translate([width/4,0,0]){
				rotate([90,0,0]){
					cylinder(h = depth, d = hole_diameter, center = true); 
				}
			}
		}
	}
	
	translate([0,0,height/2]){
		cube([opening,depth,width/10], center = true);
	}
}
