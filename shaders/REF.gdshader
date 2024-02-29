shader_type canvas_item;

// Defines
#define a b;

void vertex() {
	// Called for every vertex the material is visible on.

	// Convert cos/sin from -1, 1 to 0, 1
	float c = 0.5 - sin(TIME) / 2.0;
	float d = 0.5 - cos(TIME) / 2.0;
}

void fragment() {
	// Called for every pixel the material is visible on.
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
