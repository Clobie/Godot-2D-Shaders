shader_type canvas_item;
render_mode unshaded;

uniform sampler2D noise;
uniform float speed: hint_range(0.00, 1.0, 0.01) = 0.3;
uniform float size: hint_range(0.0, 1.0, 0.01) = 0.08;

void fragment(){
	vec2 uv = UV + TIME * speed;
	vec4 noise_color = texture(noise, fract(uv));
	noise_color = clamp(noise_color * size, 0.0, 1.0);
	vec4 color = texture(TEXTURE, UV + vec2(noise_color.g - size / 2.0,0.0));
	COLOR = vec4(color);
}