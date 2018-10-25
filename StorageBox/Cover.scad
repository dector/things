include <config.scad>;

use <utils.scad>;

module Cover(boxSize, overlap = coverOverlap, gap = coverGap, thickness = coverThickness) {
    
    coverSize = [
        boxSize.x + 2*coverThickness + 2*coverGap,
        boxSize.y + 2*coverThickness + 2*coverGap,
        coverThickness + coverOverlap        
    ];

    difference() {
        cube(coverSize);
        translate([thickness + gap, thickness + gap, thickness]) cube([boxSize.x, boxSize.y, coverOverlap]);
    }
}

boxSize = [
    boxXSize(cellsCount.x, cellSize.x, innerThickness, outerThickness),
    boxYSize(cellsCount.y, cellSize.y, innerThickness, outerThickness)
];
Cover(boxSize);
