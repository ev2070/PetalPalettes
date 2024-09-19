// obj_particle Step

// Move particle
x += x_spd;
y += y_spd;

// Shrink particle
image_xscale -= size_decay;
image_yscale -= size_decay;

// Adjust radius based on image scale
radius = bg_width/62 * image_xscale;

// Destroy particle if too small or out of bounds
out_of_bounds = x < bg_left + radius ||
				x > bg_right - radius || 
				y > bg_bottom - radius;
if (image_xscale <= 0.01 || image_yscale <= 0.01 || out_of_bounds) {
	instance_destroy();
}
