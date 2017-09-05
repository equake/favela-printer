$fn=20;

module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

module support() {
    color("Red") translate([38,0,0]) rotate([0,0,90]) prism(13, 15, 10);
    color("Blue") translate([23,00,-15]) cube([35,13,15]);

    //color("Red") translate([-35,13,-15]) rotate([0,0,-90]) prism(13, 35, 20);
    //color("Blue") translate([-54,10,-15]) cube([54,3,15]);
    color("Blue") translate([-51.5,0,-15]) cube([51.5,13,15]);

    color("Green") translate([24.5,45,0]) rotate([0,0,180]) prism(26, 30, 15);
}

difference() {
    translate([0,0,-15]) {
        difference() {
            union() {
                cube([23,16,15]);
                translate([-1.5,0,15]) cube([26,18,44]);
            }
            color("Pink") translate([11.5,17,34.2]) cube([4.5,10,8.5], true);
            color("Pink") translate([11.5,12,53]) rotate([-90,0,0]) cylinder(10, 2.1, 2.1);
            translate([3,-1,3]) cube([17.2,18,12]);
            translate([-3.5,13,-1]) cube([30,4,16]);
        }
    }
    translate([3,-1,-1]) cube([17.2,14,47]);
}

difference() {
    support();

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

    rotate([90,0,0]) translate([28,-7.5,-14]) {
        cylinder(15, 2.1, 2.1);
        translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
    }
    rotate([90,0,0]) translate([48,-7.5,-14]) {
        cylinder(15, 2.1, 2.1);
        translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 4.5);
    }
    
    rotate([0,0,0]) translate([12,28,-1]) {
        cylinder(13, 2.1, 2.1);
        translate([0,0,3]) color("Grey") cylinder(10, 2.1, 6);
    }   
}

translate([3,11.5,44]) rotate([0,90,0]) color("Purple") prism(56,1.5,1.5);
translate([18.7,13,44]) rotate([90,90,0]) color("Purple") prism(56,1.5,1.5);

// motor
translate([-51.5,0,0]) {
    size = 5;
    difference() {
        color("gray") cube([50, 51, 44]);
        translate([4, 14, -1]) cube([42.3, 42, 46]);
        translate([4, -1, -1]) cube([42.3, 16, 41]);
        color("blue") translate([-0.5,31.5,-0.1]) cube([5,20,8]);
    }
    color("gray") translate([4,14,40]) scale([1,1,2]) import("../Shapeoko_NEMA17_Mount/nema17_mount.stl");
    color("Red") translate([size+4, 0, 0]) rotate([0, 0, 90]) prism(13, size, size);
    color("Red") translate([4, 0, 40-size]) rotate([90, 0, 90]) prism(13, size, size);
    color("Red") translate([46.5-size, 0, 40]) rotate([180,0,90]) prism(13, size, size);
    color("Red") translate([46.5, 0, size]) rotate([-90,0,90]) prism(13, size, size);


}