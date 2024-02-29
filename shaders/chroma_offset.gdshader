shader_type canvas_item;
render_mode unshaded;

uniform float offset = 10.0;

void fragment() {
	vec4 cr = texture(TEXTURE, UV);
	vec4 cg = texture(TEXTURE, vec2(UV.x + (offset * TEXTURE_PIXEL_SIZE.x), UV.y));
	vec4 cb = texture(TEXTURE, vec2(UV.x - (offset *  TEXTURE_PIXEL_SIZE.x), UV.y));
	COLOR = vec4( cr.r, cg.g, cb.b, cr.a);
}
