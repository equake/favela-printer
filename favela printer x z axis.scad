include <helpers.scad>;

//mirror([1,0,0]) {
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
            cube([19, 39.5, 60]);
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

    translate([-2,37.5,0]) endstop_support(true);

    translate([20,56,0]) import("favela printer z acme nut.stl");

    difference() {
        union() {
            translate([0,-4,38.5]) cube([17.5+13,6,53.5]);
            translate([17.5,-8,40]) cube([13,8,52]);
            translate([17.5,-8,40]) prism(13,4,-3.5);
        }
        translate([17.5+(13/2),5,44]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
        translate([17.5+(13/2),5,86]) rotate([90,0,0]) color("blue") cylinder(30, 2, 2, $fn=20);
    }

    // motor side
    translate([-11,-4,0]) cube([15,6,92]);
    translate([-11, -25.5, 59.2]) rotate([0,90,0]) color("green") import("Nema17Support.stl");
    /*translate([-11,-4,0]) cube([15,6,92]);
    difference() {
        color("green") union() {
            translate([-11,-210,247.5]) rotate([0,90,0]) import("FrontalSujeccionNena17ConHuecosYfijacionesRedondeadoP.stl");
        }
        color("red") translate([-12,-10,91.9]) cube([25,15,18]);
        color("red") translate([-12,-19,16]) cube([25,15,18]);
    }*/
//}