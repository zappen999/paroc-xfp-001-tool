$fn=100;

CROSS_THICKNESS=4;
CROSS_DEPTH=3;
SPACER_ID=31;
TOOL_LENGTH=80;

module cross() {
	translate([0, 0, (-CROSS_DEPTH*5)+CROSS_DEPTH]) {
		cube([CROSS_THICKNESS, 100, CROSS_DEPTH*10], center=true);
		rotate([0, 0, 90])
			cube([CROSS_THICKNESS, 100, CROSS_DEPTH*10], center=true);
	}
}

module handle() {
	difference() {
		cylinder(TOOL_LENGTH, d=SPACER_ID);
		translate([0, 0, 15])
			cylinder(TOOL_LENGTH, d=SPACER_ID-8);
	}
}

difference() {
	handle();
	cross();
}
