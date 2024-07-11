shader_type canvas_item;
render_mode unshaded;

// Uniform variable controlling the progress of the effect (0.0 to 1.0)
uniform float progress : hint_range(0.0, 1.0) = 0.5;

// Function to generate pseudo-random values
float random(vec2 uv) {
	return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 438.5453);
}

void fragment() {
	// Get the size of the texture
	float size_x = float(textureSize(TEXTURE, 0).x);
	float size_y = float(textureSize(TEXTURE, 0).y);
	
	// Fetch the original pixel color from the texture
	vec4 pixelColor = texture(TEXTURE, UV);
	
	// Calculate UV coordinate snapped to pixel grid
	vec2 UVr = vec2(floor(UV.x * size_x) / size_x, floor(UV.y * size_y) / size_y);
	
	// Calculate visibility based on a random threshold and sinusoidal modulation over time
	//float visible = step(progress, random(UVr));
	float visible = step(0.5 - sin(TIME * 2.0) / 2.0, random(UVr));
	
	// Output final color with modified alpha based on visibility and original pixel alpha
	COLOR = vec4(pixelColor.r, pixelColor.g, pixelColor.b, min(visible, pixelColor.a));
}
