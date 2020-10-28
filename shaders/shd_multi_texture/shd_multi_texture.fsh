varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D shape_texture;
uniform float time;

void main() {
    vec4 base_tex_color = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 shape_tex_color = texture2D(shape_texture, v_vTexcoord);
    
    float time_value = sin(time) / 2. + 0.5;
    vec4 time_color = mix(base_tex_color, shape_tex_color, time_value);
    
    vec4 final_tex_color = vec4(time_color.rgb, shape_tex_color.a);
    
    gl_FragColor = v_vColour * final_tex_color;
}