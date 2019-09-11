cube_size = 20;
axis_thickness = 2;
text_thickness = 1.6;
epsilon = 0.01;

preview();


module preview() {
    color("white") neutral();
    color("red") x_features();
    color("green") y_features();
    color("blue") z_features();
}


module neutral() {
    difference() {
        body_without_features();
        x_features();
        y_features();
        z_features();
    }
}

module body_without_features() {
    cube([1, 1, 1] * cube_size);
}

module x_features() {
    rotate([90, 0, 0])
    rotate([0, 90, 0])
    axis_bar_and_label("X");
}

module y_features() {
    rotate([-90, 0, 0])
    rotate([0, 0, -90])
    axis_bar_and_label("Y");
}

module z_features() {
    axis_bar_and_label("Z");
}

module axis_bar_and_label(axis) {
    axis_bar();
    
    one_label(str("+", axis), true);
    one_label(str("\u2212", axis), false);
}

module one_label(string, topside) {
    translate([1, 1, 1] * (cube_size / 2))
    rotate([0, topside ? 0 : 180, 0])
    translate([
        0,
        0,
        cube_size / 2 - text_thickness + epsilon])
    linear_extrude(text_thickness)
    text(string, 
        size=cube_size * 0.4,
        halign="center",
        valign="center");
}

module axis_bar() {
    translate([-epsilon, -epsilon, axis_thickness])
    cube([axis_thickness, axis_thickness, cube_size - axis_thickness + epsilon]);
}