module drawer_slider() {
    height = 150;
    translate([0,0,height/2]) color("Gray") {
        cube([11.1, 34.5, height], center=true);
        translate([1, 0, 0]) cube([12, 17.3, height], center=true);
    }
}

module wall_shelving() {
    height = 200;
    translate([0, 0, height/2]) color("White") {
        difference() {
            cube([12.5, 17.5, height], center=true);
            translate([-2,0,0]) cube([12.5, 13.5, height+1], center=true);
        }
    }
}

module endstop_support(joint=false) {
    difference() {
        union() {
            color("gray") cube([3.5,29,10]);
            if (joint == true) translate([0,16,0]) color("gray") cube([9,4,10]);
        }
        translate([-5,25,5]) rotate([0,90,0]) color("blue") cylinder(30, 2, 2, $fn=20);
        translate([-5,5.5,5]) rotate([0,90,0]) color("blue") cylinder(30, 2, 2, $fn=20);
    }
}

module prism(l, w, h){
   polyhedron(
           points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
           faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
           );
}