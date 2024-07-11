// This shader is designed for 2D canvas items and operates in an unshaded render mode,
// meaning it doesn't respond to lighting. It samples the texture at three different
// UV coordinates to create a color shift effect. The `offset` uniform controls the 
// distance of the UV offset for sampling the texture. The resulting color combines 
// the red channel from the original UV, the green channel from an offset UV, and 
// the blue channel from another offset UV, creating a chromatic aberration effect.

shader_type canvas_item;
render_mode unshaded;

uniform float offset = 10.0;

void fragment() {
	vec4 cr = texture(TEXTURE, UV);
	vec4 cg = texture(TEXTURE, vec2(UV.x + (offset * TEXTURE_PIXEL_SIZE.x), UV.y));
	vec4 cb = texture(TEXTURE, vec2(UV.x - (offset *  TEXTURE_PIXEL_SIZE.x), UV.y));
	COLOR = vec4( cr.r, cg.g, cb.b, cr.a);
}
