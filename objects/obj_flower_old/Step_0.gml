// Step

// If mouse moving, change petal colors
if (curr_mx != prev_mx || curr_my != prev_my) {
	flower_color1 = make_color_rgb(random(255),random(255),random(255));
	flower_color2 = make_color_rgb(random(255),random(255),random(255));
	petal2_color1 = make_color_rgb(random(255),random(255),random(255));
	petal2_color2 = make_color_rgb(random(255),random(255),random(255));
}

// Update previous and current mouse positions
prev_mx = curr_mx;
prev_my = curr_my;
curr_mx = mouse_x;
curr_my = mouse_y;
