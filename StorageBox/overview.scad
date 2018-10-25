use <StorageBox.scad>;
use <Cover.scad>;

include <config.scad>;
use <utils.scad>;

translate([outerThickness + coverGap, outerThickness + coverGap, 0]) StorageBox(cellsCount, cellSize);

translate([0, 0, boxZSize(cellSize.z, bottomThickness) + (1-$t)*10]) {
    boxSize = [
        boxXSize(cellsCount.x, cellSize.x, innerThickness, outerThickness),
        boxYSize(cellsCount.y, cellSize.y, innerThickness, outerThickness)
    ];
    mirror([0, 0, 1]) Cover(boxSize);
}
