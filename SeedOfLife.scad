layer_height = 2;
$fn=100;

for (i=[0:5])
{
    color("DarkRed") {
        translate([0,0,layer_height/2]){
            rotate(60*i){
                translate([10,0,0]) {
                    cylinder(layer_height,10,10,true);
                }
            }
        }
    }
    color("DarkOrange") {
        translate([0,0,2*layer_height/2]){
            intersection() {
                rotate(60*i){
                    translate([10,0,0]) {
                        cylinder(2*layer_height,10,10,true);
                    }
                }
                rotate(60*(i+1)){
                    translate([10,0,0]) {
                        cylinder(2*layer_height,10,10,true);
                    }
                }
            }
        }
    }
    color("Gold") {
        translate([0,0,3*layer_height/2]){
            intersection() {
                rotate(60*i){
                    translate([10,0,0]) {
                        cylinder(3*layer_height,10,10,true);
                    }
                }
                rotate(60*(i+2)){
                    translate([10,0,0]) {
                        cylinder(3*layer_height,10,10,true);
                    }
                }
            }
        }
    }
}