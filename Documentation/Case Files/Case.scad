difference(){
    union(){
        rotate([90,0,0])import("C:/Users/n01158072/Downloads/MAIN (1).STL");
        $fn=64;
        translate([31,-18.3,17.2]){

        xdim2 = 57;
        ydim2 = 37;
        zdim2 = 1;
        translate([-xdim2/2, -ydim2/2, -zdim2])
        {
            cube([xdim2,ydim2,zdim2]);
        }
    }
    }
    xdim1 = 56;
    ydim1 = 35;
    zdim1 = 90;
    translate([31,-18.3,17.2]){
        translate([-xdim1/2, -ydim1/2, -11.5])
        {
            cube([xdim1,ydim1,zdim1]);
        }
    }
}
translate([0,10,0]){
import("C:/Users/n01158072/Downloads/CAP.STL");
}