// obj_flower Create

randomize(); // Initialize random number generator with new seed

// Import relevant obj_background variables
bg_width = obj_background.width;
bg_x = obj_background.x;
bg_y = obj_background.y;

// Record mouse position
prev_mx = mouse_x;
prev_my = mouse_y;

// Convert mouse position to background-relative position
mx_bg = mouse_x-bg_x+(bg_width/2);
my_bg = mouse_y-bg_y+(bg_width/2);

flower_size = bg_width/12;

// Flower circular center dimensions
flower_center_x = x;
flower_center_y = y;
flower_center_r = bg_width/30;

// Vertical/Horizontal offsets for petals
inner_petal_offset = bg_width/120;
outer_petal_offset1 = bg_width*0.025;
outer_petal_offset2 = bg_width*0.0416;

// Color palettes for flower elements
stem_colors = [
    #9ACD32,  // Yellow Green
    #6B8E23,  // Olive Drab
    #8FBC8F,  // Dark Sea Green
    #32CD32   // Lime Green
];

flower_center_colors = [
    #FFD700,  // Gold
    #FF69B4   // Hot Pink
];

inner_petal_colors = [
	#F393EA,  // Bubblegum Bliss
	#EF00A5   // Neon Fuchsia
];

outer_petal_colors = [
	#B10977,  // Deep Magenta
	#7A0030   // Crimson Kiss
];

// Variables controlling color changing behavior
type = -1;
locked = false;

// Booleans
mouse_within_bg = false;
mouse_clicked = false;
mouse_on_flower = false;
