// obj_particle Create

randomize(); // Initialize random number generator with new seed

// Import relevant obj_background variables
bg_width = obj_background.width;
bg_left = obj_background.x-bg_width/2;
bg_right = obj_background.x+bg_width/2;
bg_bottom = obj_background.y+bg_width/2;

radius = bg_width/62;

// Particle behavior (pollen- / petal-like feel)
x_spd = random_range(-2, 2); // Left and right
y_spd = random_range(1, 2);  // Down only

image_xscale = random_range(0.5, 1);
image_yscale = image_xscale;

size_decay = random_range(0.0005, 0.002);

colors = [
	get_random_color(),
	get_random_color(),
];

// Boolean
out_of_bounds = false;
