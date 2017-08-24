mirror([1,0,0]) {
    difference() {
        cube([19, 39.5, 61.5]);
        translate([0, 2, 0]) {
            translate([-1,0,-1]) color("pink") cube([14, 35.5, 63.5]);
            translate([12, (35.5-17.5)/2, -1]) color("red") cube([2, 17.5, 63.5]);
            translate([-5,(39.5-5)/2,7]) rotate([0,90,0]) color("blue") cylinder(30, 2.5, 2.5, $fn=20);
            translate([-5,(39.5-5)/2,17]) rotate([0,90,0]) color("blue") cylinder(30, 2.5, 2.5, $fn=20);
            translate([-5,(39.5-5)/2,32]) rotate([0,90,0]) color("blue") cylinder(30, 2.5, 2.5, $fn=20);
            translate([-5,(39.5-5)/2,54]) rotate([0,90,0]) color("blue") cylinder(30, 2.5, 2.5, $fn=20);
        }
    }


    translate([0,-17,0]) rotate([90,0,90]) {
        difference() {
            union() {
                cube([19, 39.5, 60]);
                translate([17,40,40]) rotate([90,90,0]) difference() {
                    color("cyan") union() {
                        //translate([0,-4,38.5]) cube([17.5+13,6,53.5]);
                        translate([17.5,-19,-5]) cube([13,21,52]);
                    }
                    translate([17.5+(13/2),10,0]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
                    translate([17.5+(13/2),10,40]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
                }
            }
            translate([0, 2, 0]) {
                translate([-1,0,-1]) color("pink") cube([14, 38.5, 62]);
                translate([-1,-3,-1]) color("red") cube([4, 38.5, 62]);
                translate([1,(39.5/2)-4,19]) color("blue") cube([19,4,11.5]);
                translate([1,(39.5/2)-4,32]) color("blue") cube([19,4,11.5]);
                translate([1,(39.5/2)-4,45]) color("blue") cube([19,4,11.5]);
            }
        }
    }

    translate([31,-2,0]) color("green") cube([8,47,10]);
    translate([6,38,0]) color("green") cube([30,7,10]);

    translate([-2,37.5,0]) difference() {
        union() {
            color("gray") cube([3.5,28,10]);
            translate([0,15,0]) color("gray") cube([9,4,10]);
        }
        translate([-5,23.5,5]) rotate([0,90,0]) color("blue") cylinder(30, 2, 2, $fn=20);
        translate([-5,5.5,5]) rotate([0,90,0]) color("blue") cylinder(30, 2, 2, $fn=20);
    }

    translate([20,56,0]) import("favela printer z acme nut.stl");

    /*difference() {
        color("cyan") union() {
            //translate([0,-4,38.5]) cube([17.5+13,6,53.5]);
            translate([17.5,-19,-5]) cube([13,21,52]);
        }
        translate([17.5+(13/2),10,0]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
        translate([17.5+(13/2),10,40]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
    }*/

    // motor side
    /*translate([-11,-4,0]) cube([15,6,92]);
    difference() {
        color("green") union() {
            translate([-11,-210,247.5]) rotate([0,90,0]) import("FrontalSujeccionNena17ConHuecosYfijacionesRedondeadoP.stl");
        }
        color("red") translate([-12,-10,91.9]) cube([25,15,18]);
        color("red") translate([-12,-19,16]) cube([25,15,18]);
    }*/ 
}