// obj_info Step

// Check if the user clicks outside of the lake
if (mouse_check_button_pressed(mb_left) &&
	!point_in_circle(mouse_x, mouse_y, lake_x, lake_y, lake_r)) {
	
	// Unlock all flowers before removing instructions
	// Update type and info
	if (type == "instructions") {
		with (obj_flower) {
		    locked = false;
		}
		type = "color instructions";
		info = obj_manager.color_instrs;
	}
}
