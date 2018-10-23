include <config.scad>

cylinder(d = capBigDiameter, h = capBigHeight);

translate([0, 0, capBigHeight])
cylinder(d = capSmallDiameter, h = capSmallHeight);