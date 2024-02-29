shader_type canvas_item;
render_mode unshaded;

uniform sampler2D noise_texture2: repeat_enable;
uniform sampler2D color_texture;

uniform vec2 texture1_scroll = vec2(0.1, 0.34);
uniform vec2 texture2_scroll = vec2(0.02, 0.0);

void fragment() {
	float tex1color = texture(TEXTURE, UV + texture1_scroll * TIME).r;
	float tex2color = texture(noise_texture2, UV + texture2_scroll * TIME).r;
	float energy = tex1color * tex2color - (1.0 - UV.y);
	vec4 color = texture(color_texture, vec2(energy));
	COLOR = color;
}
