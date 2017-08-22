module prism(l, w, h){
   polyhedron(
           points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
           faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
           );
}

module support() {
    color("Red") translate([58,0,-15]) rotate([0,0,90]) prism(13, 35, 20);
    color("Blue") translate([23,10,-15]) cube([35,3,15]);

    color("Red") translate([-35,13,-15]) rotate([0,0,-90]) prism(13, 35, 20);
    color("Blue") translate([-35,10,-15]) cube([35,3,15]);

    color("Green") translate([23,45,0]) rotate([0,0,180]) prism(23, 30, 15);
}

difference() {
    translate([0,0,-15]) {
        difference() {
            cube([23,16,40]);
            color("Pink") translate([11.5,16,34.2]) cube([4.5,6,8.5], true);
            translate([3,0,3]) cube([17.2,16,12]);
            translate([0,13,0]) cube([23,3,15]);
        }
    }
    translate([3,0,0]) cube([17.2,13,25]);

}

difference() {
    support();


        rotate([90,0,0]) translate([-5,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 3.8);
        }
        rotate([90,0,0]) translate([-25,-7.5,-14]) {
           cylinder(15, 2.1, 2.1);
           translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 3.8);
        }



        rotate([90,0,0]) translate([28,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 3.9);
        }
        rotate([90,0,0]) translate([48,-7.5,-14]) {
            cylinder(15, 2.1, 2.1);
            translate([0,0,4.5]) color("Grey") cylinder(10, 2.1, 3.9);
        }
 
    rotate([0,0,0]) translate([12,28,0]) {
        cylinder(13, 2.1, 2.1);
        translate([0,0,3]) color("Grey") cylinder(10, 2.1, 5.5);
    }   
}

translate([3,11.5,25]) rotate([0,90,0]) color("Navy") prism(40,1.5,1.5);
translate([18.7,13,25]) rotate([90,90,0]) color("Navy") prism(40,1.5,1.5);
