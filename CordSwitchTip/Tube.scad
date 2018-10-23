include <config.scad>

difference() {
    cylinder(d = tubeDiameter, h = tubeLength);
    
    union() {
        cylinder(d = tubeSmallHoleDiameter, h = tubeSmallHoleLength);
        
        translate([0, 0, tubeSmallHoleLength]) cylinder(d = tubeBigHoleDiameter, h = tubeBigHoleLength);
    }
}
