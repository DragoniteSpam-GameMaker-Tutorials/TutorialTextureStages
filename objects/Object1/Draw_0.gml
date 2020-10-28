

shader_set(shd_multi_texture);

var sampler_other = shader_get_sampler_index(shd_multi_texture, "shape_texture");
texture_set_stage(sampler_other, sprite_get_texture(spr_tree_2, 0));
var uniform_time = shader_get_uniform(shd_multi_texture, "time");
shader_set_uniform_f(uniform_time, current_time / 1000);

draw_sprite_ext(spr_clouds, 0, x, y, 4, 4, 0, c_white, 1);

shader_reset();