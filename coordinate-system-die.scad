cube_size = 20;


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

module x_features() {}
module y_features() {}
module z_features() {}