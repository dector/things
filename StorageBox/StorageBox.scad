include <config.scad>;

use <utils.scad>;

module StorageBox(cellsCount, cellSize, innerThickness = innerThickness, outerThickness = outerThickness, bottomThickness = bottomThickness) {
    
    boxSize = [
        boxXSize(cellsCount.x, cellSize.x, innerThickness, outerThickness),
        boxYSize(cellsCount.y, cellSize.y, innerThickness, outerThickness),
        boxZSize(cellSize.z, bottomThickness)
    ];

    difference() {
        cube(boxSize);    // Outer bound

        union() {
            for (i = [1:cellsCount.x]) {
                for (j = [1:cellsCount.y]) {
                    x = outerThickness + (i-1) * (cellSize.x + innerThickness);
                    y = outerThickness + (j-1) * (cellSize.y + innerThickness);
                    z = bottomThickness;

                    translate([x, y, z]) cube([cellSize.x, cellSize.y, cellSize.z]);    // Cell
                }
            }
        }
    }
}

StorageBox(cellsCount, cellSize);
