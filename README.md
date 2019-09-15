For 3D printers which can use two or four filament colors, a cube (or die) whose faces each indicate the axis of the coordinate system they are facing: -X, -Y, -Z, +X, +Y, and +Z. Additionally, each axis is marked as a stripe along one edge of the die, such that relative to the text, the stripe is a dot is in the bottom-left corner. Each axis has all markings in the same color.

The cube comes in “right-handed” and “left-handed” variants; right-handed is the same coordinate system used by OpenSCAD. The two versions are mirror images of each other except that the text is still in the normal reading orientation.

The provided `Makefile` will produce the four separate material STLs from the SCAD file; building the SCAD file directly will only make a color preview with (almost) no geometric features unless you modify the `part` variable.

# License

Copyright 2019 Kevin Reid <kpreid@switchb.org>

This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
