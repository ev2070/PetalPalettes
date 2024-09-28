// obj_flower Step

// Check if obj_info is in the room
if (instance_number(obj_info) == 1) {
	
	// An instructions info object will lock all flowers
	if (obj_info.type == "instructions") {
		locked = true;
	
	// After info object is no longer of type "instructions":
	} else {
		
		// A flower's locked state can be toggled by their corresponding key
		if (keyboard_check_pressed(ord(string(type)))) {
			locked = !locked;
			
			// Add its color info to info object, if locked
			// Update the flower center to be grayscale
			if (locked) {
				set_flower_palette(inner_petal_colors,
									outer_petal_colors, type-1);
				flower_center_colors = locked_center_colors;
				
			// Else, clear its color info from info object
			// Update the flower center to be colorful
			} else {
				obj_info.flower_palettes[type-1] = [[],[],[],[]];
				
				// If flower_palettes is empty, go back to color instructions
				if (array_deep_equals(obj_info.flower_palettes,
					obj_info.empty_palettes)) {
					obj_info.type = "color instructions";
					obj_info.info = obj_manager.color_instrs;
				}
				
				flower_center_colors = unlocked_center_colors;
			}
		}
	}
}

// If user mouse clicks on a locked flower, then
// set the color information to be displayed,
// set the colors of the circles to be displayed,
// and spawn particles
mouse_clicked = mouse_check_button_pressed(mb_left);
mouse_on_flower = point_in_circle(mouse_x, mouse_y,
					flower_center_x, flower_center_y, bg_width/10);
if (locked && obj_info.type != "instructions"
	&& mouse_clicked && mouse_on_flower) {
	set_info(type);
	
	// Set circle colors
	obj_info.circle_colors[0] = inner_petal_colors[0];
	obj_info.circle_colors[1] = inner_petal_colors[1];
	obj_info.circle_colors[2] = outer_petal_colors[0];
	obj_info.circle_colors[3] = outer_petal_colors[1];
	
	create_particles(mouse_x, mouse_y, bg_width/100, bg_width/20, 30);
}


// Convert mouse position to background-relative position
mx_bg = mouse_x-bg_x+(bg_width/2);
my_bg = mouse_y-bg_y+(bg_width/2);

// Ensure the flower is not locked
// Ensure that the mouse position is within obj_background bounds
mouse_within_bg = mx_bg >= 0 && mx_bg <= bg_width &&
				  my_bg >= 0 && my_bg <= bg_width;
if (!locked && mouse_within_bg) {
	
	// If mouse moves, change petal colors according to flower type
	if (mouse_x != prev_mx || mouse_y != prev_my) {
		
		// Petal colors will be completely random
		if (type == 1) {
			inner_petal_colors[0] = get_random_color();
			inner_petal_colors[1] = get_random_color();
			outer_petal_colors[0] = get_random_color();
			outer_petal_colors[1] = get_random_color();
		
		// Petal colors uniquely based on background-relative mouse position
		} else if (type == 2) {
			inner_petal_colors[0] = get_mouse_color(mx_bg, my_bg,
													mx_bg+my_bg);
			inner_petal_colors[1] = get_mouse_color(mx_bg+50, my_bg+50,
													mx_bg+my_bg+100);
			outer_petal_colors[0] = get_mouse_color(mx_bg/2, my_bg/3,
													mx_bg+my_bg);
			outer_petal_colors[1] = get_mouse_color((mx_bg+50)/2, (my_bg+50)/3,
													mx_bg+my_bg+100);
		} else if (type == 3) {
			inner_petal_colors[0] = get_mouse_color(mx_bg+100, my_bg-50,
													mx_bg*2);
			inner_petal_colors[1] = get_mouse_color(mx_bg+150, my_bg,
													(mx_bg*2)+50);
			outer_petal_colors[0] = get_mouse_color(mx_bg/3, my_bg/2,
													mx_bg-my_bg);
			outer_petal_colors[1] = get_mouse_color(mx_bg/3+50, my_bg/2+50,
													mx_bg-my_bg+50);
		} else if (type == 4) {
			inner_petal_colors[0] = get_mouse_color(mx_bg*2, my_bg*2,
													mx_bg+my_bg*2);
			inner_petal_colors[1] = get_mouse_color(mx_bg*2+50, my_bg*2+50,
													mx_bg+my_bg*2+50);
			outer_petal_colors[0] = get_mouse_color(mx_bg/2, my_bg/2,
													mx_bg-my_bg);
			outer_petal_colors[1] = get_mouse_color(mx_bg/2+50, my_bg/2+50,
													mx_bg-my_bg+50);
		} else if (type == 5) {
			inner_petal_colors[0] = get_mouse_color(mx_bg+my_bg, mx_bg-my_bg, 
													mx_bg*my_bg);
			inner_petal_colors[1] = get_mouse_color(mx_bg+my_bg+50, 
													mx_bg-my_bg+50, 
													mx_bg*my_bg+50);
			outer_petal_colors[0] = get_mouse_color(mx_bg/3, my_bg/3, 
													mx_bg+my_bg);
			outer_petal_colors[1] = get_mouse_color(mx_bg/3+50, my_bg/3+50, 
													mx_bg+my_bg+50);
        }
	}
}

// Update previous mouse position
prev_mx = mouse_x;
prev_my = mouse_y;
