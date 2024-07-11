// This shader is designed for 2D canvas items and operates in an unshaded render mode,
// meaning it doesn't respond to lighting. The fragment function converts the color of 
// each pixel to greyscale. It demonstrates both an incorrect and a correct method of 
// calculating greyscale. The final color is set using the correct method.

shader_type canvas_item;
render_mode unshaded;

void fragment() {
	float greyscale_calc_bad = (COLOR.r + COLOR.g + COLOR.g) / 3.0;
	float greyscale_calc = COLOR.r * 0.299 + COLOR.g * 0.587 + COLOR.g * 0.114;
	COLOR = vec4(vec3(greyscale_calc), COLOR.a);
}
