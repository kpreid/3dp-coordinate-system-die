.PHONY: all

all: \
	coordinate-system-die-part-n.stl \
	coordinate-system-die-part-x.stl \
	coordinate-system-die-part-y.stl \
	coordinate-system-die-part-z.stl

coordinate-system-die-part-%.stl: coordinate-system-die.scad
	openscad -Dpart=\"$*\" -o $@ coordinate-system-die.scad
