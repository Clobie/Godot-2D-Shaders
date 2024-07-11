shader_type canvas_item;
render_mode unshaded;

// Credit to FencerDevLog for the original code
// https://www.youtube.com/watch?v=WthCMZ1nm2Q
// Modified version adding alpha mask and more

// Uniform variables for controlling the shader's appearance
uniform vec3 effect_color: source_color = vec3(0.2, 0.3, 0.8);
uniform int octave_count: hint_range(1, 20) = 5;
uniform float amp_start: hint_range(0.0, 1.0) = 0.131;
uniform float amp_coeff: hint_range(0.0, 1.0) = 0.54;
uniform float freq_coeff: hint_range(0.0, 5.0) = 3.4;
uniform float speed: hint_range(0.0, 2.0) = 1.005;
uniform float alpha_threshold: hint_range(0.0, 100.0) = 2.171;
uniform float width: hint_range(0.0, 4.97) = 2.773;
uniform float offset: hint_range(-5.0, 5.0) = 0.275;
uniform float speed_modif = 1.0;
uniform float alpha: hint_range(0.0, 1.0) = 1.0;
uniform float seed: hint_range( 1.0, 50.0) = 1.0;
uniform float uv_alpha_distance_mask = 1.0;

// Function to generate pseudo-random values
float random(vec2 uv) {
    return fract(sin(dot(uv.xy,
        vec2(12.9898,78.233))) * 43758.5453123);
}

// Function to generate a pseudo-random hash value (1D)
float hash12(vec2 x) {
    return fract(cos(mod(dot(x, vec2(13.9898, 8.141)), 3.14)) * 43758.5453);
}

// Function to generate a pseudo-random hash vector (2D)
vec2 hash22(vec2 uv) {
    uv = vec2(dot(uv, vec2(127.1,311.7)),
              dot(uv, vec2(269.5,183.3)));
    return 2.0 * fract(sin(uv) * 43758.5453123) - 1.0;
}

// Function to generate Perlin noise
float noise(vec2 uv) {
    vec2 iuv = floor(uv);
    vec2 fuv = fract(uv);
    vec2 blur = smoothstep(0.0, 1.0, fuv);
    return mix(mix(dot(hash22(iuv + vec2(0.0,0.0)), fuv - vec2(0.0,0.0)),
                   dot(hash22(iuv + vec2(1.0,0.0)), fuv - vec2(1.0,0.0)), blur.x),
               mix(dot(hash22(iuv + vec2(0.0,1.0)), fuv - vec2(0.0,1.0)),
                   dot(hash22(iuv + vec2(1.0,1.0)), fuv - vec2(1.0,1.0)), blur.x), blur.y) + 0.5;
}

// Function to generate fractal Brownian motion (fbm)
float fbm(vec2 uv, int octaves) {
    float value = 0.0;
    float amplitude = amp_start;
    for (int i = 0; i < octaves; i++) {
        value += amplitude * noise(uv);
        uv *= freq_coeff;
        amplitude *= amp_coeff;
    }
    return value;
}

// Main fragment shader function
void fragment() {
    // Convert UV coordinates to range [-1, 1] for procedural texture generation
    vec2 uv = 2.0 * UV - 1.0;

    // Apply fractal Brownian motion (fbm) for animated distortion
    uv += 2.0 * fbm(uv + seed + TIME * speed, octave_count) - offset;

    // Calculate distance from center and adjust color intensity
    float d = abs(uv.x) * (5.0 - width);
    vec3 color = effect_color * mix(0.0, 0.05, hash12(vec2(1.0))) / d;

    // Combine color components and apply alpha masking
    float cadded = color.r + color.b + color.g;
    if (cadded < alpha_threshold) {
        // If color intensity is below threshold, make pixel transparent
        COLOR.a = 0.0;
    } else {
        // Otherwise, blend color and adjust alpha based on vertical position
        COLOR = vec4(color, cadded - abs(uv.y) / 2.0) - 0.5;
        COLOR.a = alpha;
    }

    // Apply alpha mask based on UV coordinate
    if (UV.y > uv_alpha_distance_mask) {
        COLOR.a = 0.0;
    }
}
