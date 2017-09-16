include <helpers.scad>;

$fn=20;
base_screws();
vertical_shaft();
motor();
//debug();

module base_screws() {
    color("Red") translate([38,0,0]) rotate([0,0,90]) prism(13, 15, 10);
    
    difference() {
        color("Blue") translate([23,00,-15]) cube([35,13,15]);
        rotate([90,0,0]) translate([28,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
        }
        rotate([90,0,0]) translate([48,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
        }
    }

    difference() {
        color("Blue") translate([-51.5,0,-15]) cube([51.5,13,15]);
        rotate([90,0,0]) translate([-5,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
        }
        rotate([90,0,0]) translate([-25,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
        }
        rotate([90,0,0]) translate([-45,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
        }
    }

    difference() {
        color("Green") translate([24.5, 48, 0]) rotate([0, 0, 180]) prism(26, 30, 15);
        translate([12, 28, -1]) {
            cylinder(13, 2.1, 2.1);
            translate([0, 0, 1]) color("Grey") cylinder(13, 2.1, 6);
        }
    }
    
    /*difference() {
        color("Green") translate([-83,29.5,0]) rotate([0,0,-90]) prism(29.5, 32, 15);
        translate([-62, 21, -1]) {
            cylinder(13, 2.1, 2.1);
            translate([0, 0, 1]) color("Grey") cylinder(13, 2.1, 6);
        }
    }*/
}

module vertical_shaft() {
    difference() {
        translate([0,0,-15]) {
            difference() {
                union() {
                    cube([23,16,15]);
                    translate([-1.5,0,15]) cube([26,18,44]);
                }
                #color("Pink") translate([11.5,18.3,34.2]) cube([4.5,10,8.5], true);
                #color("Pink") translate([11.5,13.3,53]) rotate([-90,0,0]) cylinder(10, 2.1, 2.1);
                translate([3,-1,3]) cube([17.2,18,12]);
                translate([-3.5,13,-1]) cube([30,4,16]);
            }
        }
        translate([3,-1,-1]) cube([17.2,14,47]);
    }
    translate([3,11.5,44]) rotate([0,90,0]) color("Purple") prism(56,1.5,1.5);
    translate([18.7,13,44]) rotate([90,90,0]) color("Purple") prism(56,1.5,1.5);
}

module motor() {
    translate([-51.5,0,0]) {
        size = 5;
        difference() {
            color("gray") cube([50, 49.5, 44]);
            translate([4, 11, -1]) cube([42.3, 46, 46]);
            translate([4, -1, -1]) cube([42.3, 16, 41]);
            color("blue") translate([-0.5,30,-0.1]) cube([5,20,8]);
        }
        //color("gray") translate([4,12.5,40]) scale([1,1,2]) import("vendor/Shapeoko_NEMA17_Mount/nema17_mount.stl");
        color("gray") intersection() {
            translate([30.7,33,44]) rotate([180, 0, 0]) import("Nema17Support.stl");
            translate([0,11,40]) cube([50,48,5]);
        }
        color("Red") translate([size+4, 0, 0]) rotate([0, 0, 90]) prism(8, size, size);
        color("Red") translate([4, 0, 40-size]) rotate([90, 0, 90]) prism(8, size, size);
        color("Red") translate([46.5-size, 0, 40]) rotate([180,0,90]) prism(8, size, size);
        color("Red") translate([46.5, 0, size]) rotate([-90,0,90]) prism(8, size, size);
        color("pink") translate([6,0,0]) rotate([0, -43, 0]) cube([55, 3, 3]);
        color("pink") translate([4,0,38]) rotate([0, 43, 0]) cube([55, 3, 3]);
    }
}

module debug() {
    %color("DarkSlateGray") translate([31,11,90]) rotate([0, 0, 90]) import("favela printer x z axis left.stl");
    %translate([11.5, 18, 0]) rotate([0, 0, 90]) union() {
        translate([0, 0, 50]) drawer_slider();
        translate([-11.8, 0, -12]) wall_shelving();
    }
    %translate([-27.5, 38, 30 ]) { 
        color("Gainsboro") import("vendor/Nema17_Stepper.stl");
        #color("SlateGray") translate([1, -4.3, 30]) cylinder(300, 4, 4); 
    }
}