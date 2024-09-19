// obj_background Draw

// Sky
draw_rectangle_color(x-width/2, y-width/2, x+width/2, y+width/2,
	sky_colors[0], sky_colors[1], sky_colors[2], sky_colors[3], false);

// Grass
draw_rectangle_color(x-width/2, mountain_base_y, x+width/2, y+width/2, 
	grass_colors[0], grass_colors[1], grass_colors[2], grass_colors[3], false);

// Lake (centered within the grass)
draw_circle_color(lake_x, lake_y, lake_r, lake_colors[0], lake_colors[1], 
	false);

// Mountain
draw_triangle_color(x-width/2+mountain_offset, mountain_base_y, x, 
	mountain_peak_y, x+width/2-mountain_offset, mountain_base_y, 
	mountain_colors[0], mountain_colors[1], mountain_colors[2], false);
