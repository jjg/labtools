STEM = 60;	// stem length mm
BOWL = 20;	// bowl diameter mm

difference(){
	union(){
		// stem
		cube([STEM,5,3]);

		// scoop
		translate([STEM,2.5,0]){
			difference(){
				sphere(r=(BOWL/2),$fn=50);
				translate([-((BOWL*2)/2),-((BOWL*2)/2),-(BOWL*2)]){
					cube([(BOWL*2),(BOWL*2),(BOWL*2)]);
				}
			}
		}
	}
	// bowl hole
	translate([STEM,2.5,0]){
		sphere(r=((BOWL/2) -1),$fn=50);
	}
}