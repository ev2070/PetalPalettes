// obj_custom_mouse Step

// While instructions are up,
// if mouse is over the lake, cursor is red
// else, cursor is blue
if (obj_info.type == "instructions") {
	mouse_over_lake =
		point_in_circle(mouse_x, mouse_y, lake_x, lake_y, lake_r);
	if (mouse_over_lake && !array_equals(mouse_colors, reds)) {
		mouse_colors = reds;
	} else if (!mouse_over_lake && !array_equals(mouse_colors, blues)) {
		mouse_colors = blues;
	}
	
//// Once instructions are gone,
//// if mouse is over a locked flower, cursor is green
//// else, cursor is blue
} else {
	mouse_over_flower = false; // Reset
	with (obj_flower) {
		if (mouse_on_flower && locked) {
			obj_custom_mouse.mouse_over_flower = true;
			break;
		}
	}
	if (mouse_over_flower && !array_equals(mouse_colors, greens)) {
		mouse_colors = greens;
	} else if (!mouse_over_flower && !array_equals(mouse_colors, blues)) {
		mouse_colors = blues;
	}
}
