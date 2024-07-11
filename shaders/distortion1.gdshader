shader_type canvas_item;
render_mode unshaded;

// Uniform variables
uniform sampler2D noise;  // Texture sampler for noise
uniform float speed: hint_range(0.00, 1.0, 0.01) = 0.3;  // Speed of animation
uniform float size: hint_range(0.0, 1.0, 0.01) = 0.08;  // Size of noise effect

void fragment() {
    // Calculate UV coordinates offset by time and speed
    vec2 uv = UV + TIME * speed;

    // Sample noise texture and adjust color
    vec4 noise_color = texture(noise, fract(uv));

    // Clamp noise color values and scale by size
    noise_color = clamp(noise_color * size, 0.0, 1.0);

    // Offset UV coordinates for texture sampling based on noise color
    vec4 color = texture(TEXTURE, UV + vec2(noise_color.g - size / 2.0, 0.0));

    // Output final color
    COLOR = vec4(color);
}
