// obj_background Create

// Center the background within the room
x = room_width/2;
y = room_height/2;

// The background will be a square and a multiple of 255
width = (room_width <= room_height)
		? (room_width div 255) * 255
		: (room_height div 255) * 255;

// Mountain y positions
mountain_offset = width/20;
mountain_base_y = y - mountain_offset;
mountain_peak_y = y - width/2 + mountain_offset;

// Lake dimensions
lake_x = x;
lake_y = y + width*0.225;
lake_r = width/5;

// Color palettes for background elements
sky_colors = [
    #FFB6C1,  // Light Pink
    #FF6F61,  // Coral Pink
    #E6E6FA,  // Lavender
    #FF1493   // Deep Pink
];

grass_colors = [
    #8FBC8F,  // Dark Sea Green
    #98FB98,  // Pale Green
    #00FF7F,  // Spring Green
    #9ACD32   // Yellow Green
];

lake_colors = [
    #5BC0EB,  // Turquoise Blue
    #8DE4A4   // Seafoam Green
];

mountain_colors = [
    #C0C0C0,  // Silver Gray
    #D8BFD8,  // Thistle
    #E6E6FA,  // Lavender
];
