shader_type canvas_item;

// Defines
#define a b;

// Called for every vertex the material is visible on.
void vertex() {
    
    // Convert sin from -1, 1 to 0, 1
    float c = 0.5 - sin(TIME) / 2.0;

    // Convert cos from -1, 1 to 0, 1
    float c = 0.5 - cos(TIME) / 2.0;

    // Absolute value
    float abs_value = abs(-1.5);
    
    // Square root
    float sqrt_value = sqrt(16.0);
    
    // Exponential (e^x)
    float exp_value = exp(1.0);
    
    // Natural logarithm (ln)
    float log_value = log(10.0);
    
    // Power function (x^y)
    float pow_value = pow(2.0, 3.0);
    
    // Modulo
    float mod_value = mod(10.0, 3.0);
    
    // Clamp value between min and max
    float clamped_value = clamp(-1.0, 0.0, 1.0);
    
    // Smoothstep interpolation
    float smoothstep_value = smoothstep(0.0, 1.0, 0.5);
    
    // Step function (returns 0.0 if x < edge, otherwise 1.0)
    float step_value = step(0.5, 0.6);
    
    // Mix two values based on a control factor
    float mixed_value = mix(0.0, 1.0, 0.5);
    
    // Fractional part of a floating point value
    float fract_value = fract(2.3);
    
    // Floor value (largest integer less than or equal to x)
    float floor_value = floor(2.7);
    
    // Ceiling value (smallest integer greater than or equal to x)
    float ceil_value = ceil(2.3);
    
    // Sine function
    float sine_value = sin(TIME);
    
    // Cosine function
    float cosine_value = cos(TIME);
    
    // Tangent function
    float tangent_value = tan(TIME);
    
    // Arcsine function (returns angle in radians)
    float arcsine_value = asin(0.5);
    
    // Arccosine function (returns angle in radians)
    float arccosine_value = acos(0.5);
    
    // Arctangent function (returns angle in radians)
    float arctangent_value = atan(1.0);
    
    // Hyperbolic sine function
    float sinh_value = sinh(1.0);
    
    // Hyperbolic cosine function
    float cosh_value = cosh(1.0);
    
    // Hyperbolic tangent function
    float tanh_value = tanh(1.0);
    
    // Length of a vector
    float length_value = length(vec2(3.0, 4.0));
    
    // Distance between two points
    float distance_value = distance(vec2(1.0, 2.0), vec2(4.0, 6.0));
    
    // Dot product of two vectors
    float dot_value = dot(vec2(1.0, 2.0), vec2(3.0, 4.0));
    
    // Cross product of two vectors
    float cross_value = cross(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0)).z;
    
    // Normalize a vector
    vec2 normalized_vector = normalize(vec2(5.0, 0.0));
    
    // Reflect vector off a surface with a normal
    vec2 reflected_vector = reflect(vec2(1.0, 1.0), vec2(0.0, 1.0));
    
    // Refract vector through a surface with a normal and refraction index
    vec2 refracted_vector = refract(vec2(0.0, 1.0), vec2(0.0, 1.0), 0.5);
    
    // Modulus (integer remainder)
    float modulus_value = 10.0 % 3.0;
    
    // Radians to degrees conversion
    float degrees_value = degrees(PI);
    
    // Degrees to radians conversion
    float radians_value = radians(180.0);
    
    // Smooth a value over time
    float smooth_value = smooth(0.0, 1.0, 0.5);
    
    // Inverse square root
    float inversesqrt_value = inversesqrt(16.0);
    
    // Floor a value and discard fractional part
    float trunc_value = trunc(2.7);
    
    // Round a value to the nearest integer
    float round_value = round(2.3);
    
    // Fract a value and discard integer part
    float fract_value = fract(2.3);
    
    // Min and max values
    float min_value = min(1.0, 2.0);
    float max_value = max(1.0, 2.0);
    
    // Sign function (returns -1.0 if x < 0, 0.0 if x == 0, 1.0 if x > 0)
    float sign_value = sign(-2.5);
    
    // Absolute value of integer
    float abs_value = abs(-1.5);
    
    // Clamp value between min and max
    float clamped_value = clamp(-1.0, 0.0, 1.0);
    
    // Smoothstep interpolation
    float smoothstep_value = smoothstep(0.0, 1.0, 0.5);
    
    // Step function (returns 0.0 if x < edge, otherwise 1.0)
    float step_value = step(0.5, 0.6);
    
    // Mix two values based on a control factor
    float mixed_value = mix(0.0, 1.0, 0.5);
    
    // Fractional part of a floating point value
    float fract_value = fract(2.3);
    
    // Floor value (largest integer less than or equal to x)
    float floor_value = floor(2.7);
    
    // Ceiling value (smallest integer greater than or equal to x)
    float ceil_value = ceil(2.3);
    
    // Sine function
    float sine_value = sin(TIME);
    
    // Cosine function
    float cosine_value = cos(TIME);
    
    // Tangent function
    float tangent_value = tan(TIME);
    
    // Arcsine function (returns angle in radians)
    float arcsine_value = asin(0.5);
    
    // Arccosine function (returns angle in radians)
    float arccosine_value = acos(0.5);
    
    // Arctangent function (returns angle in radians)
    float arctangent_value = atan(1.0);
    
    // Hyperbolic sine function
    float sinh_value = sinh(1.0);
    
    // Hyperbolic cosine function
    float cosh_value = cosh(1.0);
    
    // Hyperbolic tangent function
    float tanh_value = tanh(1.0);
    
    // Length of a vector
    float length_value = length(vec2(3.0, 4.0));
    
    // Distance between two points
    float distance_value = distance(vec2(1.0, 2.0), vec2(4.0, 6.0));
    
    // Dot product of two vectors
    float dot_value = dot(vec2(1.0, 2.0), vec2(3.0, 4.0));
    
    // Cross product of two vectors
    float cross_value = cross(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0)).z;
    
    // Normalize a vector
    vec2 normalized_vector = normalize(vec2(5.0, 0.0));
    
    // Reflect vector off a surface with a normal
    vec2 reflected_vector = reflect(vec2(1.0, 1.0), vec2(0.0, 1.0));
    
    // Refract vector through a surface with a normal and refraction index
    vec2 refracted_vector = refract(vec2(0.0, 1.0), vec2(0.0, 1.0), 0.5);
    
    // Modulus (integer remainder)
    float modulus_value = 10.0 % 3.0;
    
    // Radians to degrees conversion
    float degrees_value = degrees(PI);
    
    // Degrees to radians conversion
    float radians_value = radians(180.0);
    
    // Smooth a value over time
    float smooth_value = smooth(0.0, 1.0, 0.5);
    
    // Inverse square root
    float inversesqrt_value = inversesqrt(16.0);
    
    // Floor a value and discard fractional part
    float trunc_value = trunc(2.7);
    
    // Round a value to the nearest integer
    float round_value = round(2.3);
    
    // Fract a value and discard integer part
    float fract_value = fract(2.3);
    
    // Min and max values
    float min_value = min(1.0, 2.0);
    float max_value = max(1.0, 2.0);
    
    // Sign function (returns -1.0 if x < 0, 0.0 if x == 0, 1.0 if x > 0)
    float sign_value = sign(-2.5);
    
    // Absolute value of integer
    float abs_value = abs(-1.5);
    
    // Clamp value between min and max
    float clamped_value = clamp(-1.0, 0.0, 1.0);
    
    // Smoothstep interpolation
    float smoothstep_value = smoothstep(0.0, 1.0, 0.5);
    
    // Step function (returns 0.0 if x < edge, otherwise 1.0)
    float step_value = step(0.5, 0.6);
    
    // Mix two values based on a control factor
    float mixed_value = mix(0.0, 1.0, 0.5);
    
    // Fractional part of a floating point value
    float fract_value = fract(2.3);
    
    // Floor value (largest integer less than or equal to x)
    float floor_value = floor(2.7);
    
    // Ceiling value (smallest integer greater than or equal to x)
    float ceil_value = ceil(2.3);
    
    // Sine function
    float sine_value = sin(TIME);
    
    // Cosine function
    float cosine_value = cos(TIME);
    
    // Tangent function
    float tangent_value = tan(TIME);
    
    // Arcsine function (returns angle in radians)
    float arcsine_value = asin(0.5);
    
    // Arccosine function (returns angle in radians)
    float arccosine_value = acos(0.5);
    
    // Arctangent function (returns angle in radians)
    float arctangent_value = atan(1.0);
    
    // Hyperbolic sine function
    float sinh_value = sinh(1.0);
    
    // Hyperbolic cosine function
    float cosh_value = cosh(1.0);
    
    // Hyperbolic tangent function
    float tanh_value = tanh(1.0);
    
    // Length of a vector
    float length_value = length(vec2(3.0, 4.0));
    
    // Distance between two points
    float distance_value = distance(vec2(1.0, 2.0), vec2(4.0, 6.0));
    
    // Dot product of two vectors
    float dot_value = dot(vec2(1.0, 2.0), vec2(3.0, 4.0));
    
    // Cross product of two vectors
    float cross_value = cross(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0)).z;
    
    // Normalize a vector
    vec2 normalized_vector = normalize(vec2(5.0, 0.0));
    
    // Reflect vector off a surface with a normal
    vec2 reflected_vector = reflect(vec2(1.0, 1.0), vec2(0.0, 1.0));
    
    // Refract vector through a surface with a normal and refraction index
    vec2 refracted_vector = refract(vec2(0.0, 1.0), vec2(0.0, 1.0), 0.5);
    
    // Modulus (integer remainder)
    float modulus_value = 10.0 % 3.0;
    
    // Radians to degrees conversion
    float degrees_value = degrees(PI);
    
    // Degrees to radians conversion
    float radians_value = radians(180.0);
    
    // Smooth a value over time
    float smooth_value = smooth(0.0, 1.0, 0.5);
    
    // Inverse square root
    float inversesqrt_value = inversesqrt(16.0);
    
    // Floor a value and discard fractional part
    float trunc_value = trunc(2.7);
    
    // Round a value to the nearest integer
    float round_value = round(2.3);
    
    // Fract a value and discard integer part
    float fract_value = fract(2.3);
    
    // Min and max values
    float min_value = min(1.0, 2.0);
    float max_value = max(1.0, 2.0);
    
    // Sign function (returns -1.0 if x < 0, 0.0 if x == 0, 1.0 if x > 0)
    float sign_value = sign(-2.5);
    
    // Absolute value of integer
    float abs_value = abs(-1.5);
    
    // Clamp value between min and max
    float clamped_value = clamp(-1.0, 0.0, 1.0);
    
    // Smoothstep interpolation
    float smoothstep_value = smoothstep(0.0, 1.0, 0.5);
    
    // Step function (returns 0.0 if x < edge, otherwise 1.0)
    float step_value = step(0.5, 0.6);
    
    // Mix two values based on a control factor
    float mixed_value = mix(0.0, 1.0, 0.5);
    
    // Fractional part of a floating point value
    float fract_value = fract(2.3);
    
    // Floor value (largest integer less than or equal to x)
    float floor_value = floor(2.7);
    
    // Ceiling value (smallest integer greater than or equal to x)
    float ceil_value = ceil(2.3);
    
    // Sine function
    float sine_value = sin(TIME);
    
    // Cosine function
    float cosine_value = cos(TIME);
    
    // Tangent function
    float tangent_value = tan(TIME);
    
    // Arcsine function (returns angle in radians)
    float arcsine_value = asin(0.5);
    
    // Arccosine function (returns angle in radians)
    float arccosine_value = acos(0.5);
    
    // Arctangent function (returns angle in radians)
    float arctangent_value = atan(1.0);
    
    // Hyperbolic sine function
    float sinh_value = sinh(1.0);
    
    // Hyperbolic cosine function
    float cosh_value = cosh(1.0);
    
    // Hyperbolic tangent function
    float tanh_value = tanh(1.0);
    
    // Length of a vector
    float length_value = length(vec2(3.0, 4.0));
    
    // Distance between two points
    float distance_value = distance(vec2(1.0, 2.0), vec2(4.0, 6.0));
    
    // Dot product of two vectors
    float dot_value = dot(vec2(1.0, 2.0), vec2(3.0, 4.0));
    
    // Cross product of two vectors
    float cross_value = cross(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0)).z;
    
    // Normalize a vector
    vec2 normalized_vector = normalize(vec2(5.0, 0.0));
    
    // Reflect vector off a surface with a normal
    vec2 reflected_vector = reflect(vec2(1.0, 1.0), vec2(0.0, 1.0));
    
    // Refract vector through a surface with a normal and refraction index
    vec2 refracted_vector = refract(vec2(0.0, 1.0), vec2(0.0, 1.0), 0.5);
    
    // Modulus (integer remainder)
    float modulus_value = 10.0 % 3.0;
    
    // Radians to degrees conversion
    float degrees_value = degrees(PI);
    
    // Degrees to radians conversion
    float radians_value = radians(180.0);
    
    // Smooth a value over time
    float smooth_value = smooth(0.0, 1.0, 0.5);
    
    // Inverse square root
    float inversesqrt_value = inversesqrt(16.0);
    
    // Floor a value and discard fractional part
    float trunc_value = trunc(2.7);
    
    // Round a value to the nearest integer
    float round_value = round(2.3);
    
    // Fract a value and discard integer part
    float fract_value = fract(2.3);
    
    // Min and max values
    float min_value = min(1.0, 2.0);
    float max_value = max(1.0, 2.0);
    
    // Sign function (returns -1.0 if x < 0, 0.0 if x == 0, 1.0 if x > 0)
    float sign_value = sign(-2.5);
}

// Called for every pixel the material is visible on.
void fragment() {
    
}
