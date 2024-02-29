shader_type canvas_item;
render_mode unshaded;

void fragment() {
	float greyscale_calc_bad = (COLOR.r + COLOR.g + COLOR.g) / 3.0;
	float greyscale_calc = COLOR.r * 0.299 + COLOR.g * 0.587 + COLOR.g * 0.114;
	COLOR = vec4(vec3(greyscale_calc), COLOR.a);
}