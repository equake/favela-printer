include <helpers.scad>;
include <vendor/nutsnbolts/cyl_head_bolt.scad>;

%rotate([0,0,180]) color("DarkSlateGray") translate([-15.3,-48.6,50]) import("favela printer x z axis right.stl");
%translate([22, 28.8, 0]) union() {
    translate([0, 0, 25]) drawer_slider();
    translate([-11.8, 0, 0]) wall_shelving();
}


difference() {
    union() {
        translate([0,-16,0]) cube([17,57,16]);
        #translate([0,5,0]) cube([4,8,33.2]);
        #translate([0,-16,0]) cube([4,8,33.2]);
        translate([0,-16,33.1]) endstop_support();
    }
    rotate([0, -90, 0]) translate([8, 28.8, -25]) color("Red") cylinder(30, 2.5, 2.5, $fn=20);
    translate([4,21-1]) color("Green") cube([12.5,2.5,18]);
    translate([4,35.2,-1]) color("Green") cube([12.5,2.5,18]);
    translate([14.4,20,-1]) color("Green") cube([7,17.7,18]);
    translate([4,-17,-1]) cube([15,34,18]);

    //#translate([10, 5, 31]) hole_threaded("M6", l=32, thread="modeled");
}

%translate([1,-28,25]) rotate([90,0,90]) color("Red") import("vendor/endstop/endstop.stl");


/*translate([10,0,50]) difference() {
    union() {
        translate([0, -18.7, 0]) endstop_support();
        translate([2, -3.5, 0]) cylinder(10, 8, 8, $fn=40);
    }
    translate([-1,-3.5,20]) hole_threaded("M6", l=32, thread="false");
    #translate([3, -18.7, 0]) scale([3,1,1]) endstop_support();
}*/