// obj_info Create

// Info to be displayed
info = "";

// Types: "instructions", "color instructions", "color info"
type = "instructions";

text_colors = [
    #D50032,  // Vivid Red
	#FF007F,  // Vivid Magenta
    #007BFF,  // Bright Blue
    #7B00FF,  // Electric Violet
	#003366
];

// Import relevant obj_background variables
bg_width = obj_background.width;
bg_x = obj_background.x;
bg_y = obj_background.y;

lake_x = obj_background.lake_x;
lake_y = obj_background.lake_y;
lake_r = obj_background.lake_r;

flower_palettes =
	[
		// Flower 1 - hexes, reds, greens, blues
		[ [], [], [], [] ],
		// Flower 2 - hexes, reds, greens, blues
		[ [], [], [], [] ],
		// Flower 3 - hexes, reds, greens, blues
		[ [], [], [], [] ],
		// Flower 4 - hexes, reds, greens, blues
		[ [], [], [], [] ],
		// Flower 5 - hexes, reds, greens, blues
		[ [], [], [], [] ]
	];

empty_palettes = 
	[
		[ [], [], [], [] ],
		[ [], [], [], [] ],
		[ [], [], [], [] ],
		[ [], [], [], [] ],
		[ [], [], [], [] ]
	];

// Each color info object correspondes to one flower
flower_type = -1;

// To identify each color with its details
circle_colors = [
	#000000,  // Flower color 1
	#000000,  // Flower color 2
	#000000,  // Flower color 3
	#000000,   // Flower color 4	
];
