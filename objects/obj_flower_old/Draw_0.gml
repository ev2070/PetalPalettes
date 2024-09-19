// Draw

// night sky
draw_rectangle_color(0,0, room_width, room_width/2,
					 c_black, c_black, c_purple, c_purple, false);

// moon
draw_circle_color(moonx, moony, moonr, 
				  c_white, c_ltgray, false);

// grass
draw_rectangle_color(0, mountain_base_y,
					 room_width, room_width/2, 
					 grass_color1, grass_color2, grass_color3, grass_color4,
					 false);

// mountain
draw_triangle_color(mountain_base_x1, mountain_base_y,
					room_width/2, mountain_peak_y,
					mountain_base_x2, mountain_base_y, 
					mountain_color1, mountain_color2, mountain_color3, false);

// flower (petals, center, stem)
draw_rectangle_color(stem_x1, room_width/4,
					stem_x2, room_width/2,
					stem_color, stem_color, stem_color, stem_color, false);

draw_roundrect_color(flower_center_x-petal2_offset2,
					flower_center_y+petal2_offset1,
					flower_center_x+flower_size-petal2_offset2,
					flower_center_y+flower_size+petal2_offset1,
					petal2_color1, petal2_color2, false);
draw_roundrect_color(flower_center_x+petal2_offset1,
					flower_center_y-petal2_offset2,
					flower_center_x+flower_size+petal2_offset1,
					flower_center_y+flower_size-petal2_offset2,
					petal2_color1, petal2_color2, false);
draw_roundrect_color(flower_center_x-petal2_offset1,
					flower_center_y-petal2_offset2,
					flower_center_x-flower_size-petal2_offset1,
					flower_center_y+flower_size-petal2_offset2,
					petal2_color1, petal2_color2, false);
draw_roundrect_color(flower_center_x-petal2_offset2,
					flower_center_y-petal2_offset1,
                    flower_center_x+flower_size-petal2_offset2,
					flower_center_y-flower_size-petal2_offset1,
                    petal2_color1, petal2_color2, false);

draw_roundrect_color(flower_center_x+flower_center_offset,
					flower_center_y+flower_center_offset,
					flower_center_x+flower_size,
					flower_center_y+flower_size,
					flower_color1, flower_color2, false);
draw_roundrect_color(flower_center_x+flower_center_offset,
					flower_center_y-flower_center_offset,
					flower_center_x+flower_size,
					flower_center_y-flower_size,
					flower_color1, flower_color2, false);
draw_roundrect_color(flower_center_x-flower_center_offset,
					flower_center_y+flower_center_offset,
					flower_center_x-flower_size,
					flower_center_y+flower_size,
					flower_color1, flower_color2, false);
draw_roundrect_color(flower_center_x-flower_center_offset,
					flower_center_y-flower_center_offset, 
					flower_center_x-flower_size,
					flower_center_y-flower_size,
					flower_color1, flower_color2, false);
			
draw_circle_color(flower_center_x, flower_center_y, flower_center_r,
				  flower_center_color, flower_center_color, false);
