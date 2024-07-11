// This shader is designed for 2D canvas items and operates in an unshaded render mode,
// meaning it doesn't respond to lighting. The fragment function combines two scrolling 
// noise textures to create a dynamic fire effect, which is then used to sample a color 
// from a color texture.

shader_type canvas_item;
render_mode unshaded;

// Uniforms for noise textures and color texture, with repeat enabled
uniform sampler2D noise_texture1: repeat_enable;
uniform sampler2D noise_texture2: repeat_enable;
uniform sampler2D color_texture;

// Uniforms for controlling the scroll speed of the noise textures
uniform vec2 texture1_scroll = vec2(0.1, 0.34);
uniform vec2 texture2_scroll = vec2(0.02, 0.0);

void fragment() {
    // Sample the first noise texture, scrolling over time
    float tex1color = texture(noise_texture1, UV + texture1_scroll * TIME).r;
    
    // Sample the second noise texture, scrolling over time
    float tex2color = texture(noise_texture2, UV + texture2_scroll * TIME).r;
    
    // Combine the noise values to create an energy value, modulating with the UV coordinate
    float energy = tex1color * tex2color - (1.0 - UV.y);
    
    // Sample the color texture using the energy value to get the final color
    vec4 color = texture(color_texture, vec2(energy));
    
    // Set the output color to the sampled color
    COLOR = color;
}
