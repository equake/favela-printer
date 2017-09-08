include <helpers.scad>;
include <vendor/nutsnbolts/cyl_head_bolt.scad>;

difference() {
    union() {
        translate([0, -18.7, 0]) endstop_support();
        translate([2, -3.5, 0]) cylinder(10, 8, 8, $fn=40);
    }
    translate([-1,-3.5,20]) hole_threaded("M6", l=32, thread="modeled");
    translate([3, -18.7, 0]) scale([3,1,1]) endstop_support();
}