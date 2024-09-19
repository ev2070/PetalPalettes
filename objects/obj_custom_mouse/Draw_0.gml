// obj_custom_mouse Draw

// Circle (either red, green, or blue)
draw_set_alpha(0.75);
draw_circle_color(mouse_x, mouse_y, radius,
				  mouse_colors[0], mouse_colors[1], false);
draw_set_alpha(1);
