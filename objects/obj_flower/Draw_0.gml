// obj_flower Draw

// Stem
draw_rectangle_color(flower_center_x-bg_width/120, flower_center_y,
	flower_center_x+bg_width/120, flower_center_y+bg_width/4, stem_colors[0],
	stem_colors[1], stem_colors[2], stem_colors[3], false);

// Outer Petals
draw_petal(-outer_petal_offset2, outer_petal_offset1,
	flower_size-outer_petal_offset2, flower_size+outer_petal_offset1,
	outer_petal_colors);
draw_petal(outer_petal_offset1, -outer_petal_offset2,
	flower_size+outer_petal_offset1, flower_size-outer_petal_offset2,
	outer_petal_colors);
draw_petal(-outer_petal_offset1, -outer_petal_offset2,
	-flower_size-outer_petal_offset1, flower_size-outer_petal_offset2,
	outer_petal_colors);
draw_petal(-outer_petal_offset2, -outer_petal_offset1,
	flower_size-outer_petal_offset2, -flower_size-outer_petal_offset1,
	outer_petal_colors);

// Inner petals
draw_roundrect_color(flower_center_x+inner_petal_offset,
	flower_center_y+inner_petal_offset, flower_center_x+flower_size,
	flower_center_y+flower_size, inner_petal_colors[0],
	inner_petal_colors[1], false);
draw_roundrect_color(flower_center_x+inner_petal_offset,
	flower_center_y-inner_petal_offset, flower_center_x+flower_size,
	flower_center_y-flower_size, inner_petal_colors[0],
	inner_petal_colors[1], false);
draw_roundrect_color(flower_center_x-inner_petal_offset,
	flower_center_y+inner_petal_offset, flower_center_x-flower_size,
	flower_center_y+flower_size, inner_petal_colors[0],
	inner_petal_colors[1], false);
draw_roundrect_color(flower_center_x-inner_petal_offset,
	flower_center_y-inner_petal_offset, flower_center_x-flower_size,
	flower_center_y-flower_size, inner_petal_colors[0],
	inner_petal_colors[1], false);

// Flower Center
draw_circle_color(flower_center_x, flower_center_y, flower_center_r,
	flower_center_colors[0], flower_center_colors[1], false);

// Flower Number
draw_set_halign(fa_left);
draw_text_transformed_color(flower_center_x - string_width(type)/2 *
	obj_manager.flower_font_scale, flower_center_y - string_height(type)/2 *
	obj_manager.flower_font_scale, string(type), obj_manager.flower_font_scale,
	obj_manager.flower_font_scale, 0, #FF1493, #FF1493, #FF1493, #FF1493, 1);
