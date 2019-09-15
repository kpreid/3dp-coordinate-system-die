.PHONY: all

all: \
	coordinate-system-die-rh-n.stl \
	coordinate-system-die-rh-x.stl \
	coordinate-system-die-rh-y.stl \
	coordinate-system-die-rh-z.stl \
	coordinate-system-die-lh-n.stl \
	coordinate-system-die-lh-x.stl \
	coordinate-system-die-lh-y.stl \
	coordinate-system-die-lh-z.stl

coordinate-system-die-lh-%.stl: coordinate-system-die.scad
	openscad -Dpart=\"$*\" -Dleft_handed=true -o $@ coordinate-system-die.scad
coordinate-system-die-rh-%.stl: coordinate-system-die.scad
	openscad -Dpart=\"$*\" -Dleft_handed=false -o $@ coordinate-system-die.scad
