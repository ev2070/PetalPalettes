// obj_custom_mouse Create

// Import relevant obj_background variables
bg_width = obj_background.width;

lake_x = obj_background.lake_x;
lake_y = obj_background.lake_y;
lake_r = obj_background.lake_r;

// Import relevant obj_flower variables
flower_center_x = -1;
flower_center_y = -1;

depth = -2;
radius = bg_width/40;

mouse_colors = [
	#000000,
	#000000,
];

reds = [
    #FF6F6F, // Soft Red
    #FF4D4D  // Lighter Red
];

greens = [
    #6BFF6F, // Light Green
    #4DFF4D  // Lighter Green
];

blues = [
    #6F6FFF, // Light Blue
    #4D4DFF  // Lighter Blue
];

// Booleans
mouse_over_lake = false;
mouse_over_flower = false;
