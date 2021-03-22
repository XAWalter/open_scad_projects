$fn=10;

// std dimensions 
width = 400;
depth = 100;
height = 5;

// front wall dimensions 
front_wall_height = 25;
front_wall_angle = 55;

// top dimensions
top_depth = 50;

// base
cube([width,depth,height]);

// back wall
translate([0,depth,0]){
	rotate([90,0,0]){
		cube([width,depth,height]);
	}
}

// front wall
translate([width,0,0]){
	rotate([front_wall_angle,0,180]){
		cube([width,front_wall_height,height]);
	}
}

// top holder
translate([0,depth-top_depth,depth-height])
cube([width,top_depth,height]);



