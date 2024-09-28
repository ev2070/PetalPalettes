// obj_manager Create

// Set window settings; Hide mouse cursor
window_set_size(window_get_width()*0.8, window_get_height()*0.9);
window_set_position(0, window_get_height()*0.05);
window_set_caption("Petal Palettes");
window_set_cursor(cr_none);

// Info on instructions
instrs = 
	"WELCOME TO\nPETAL PALETTES!" +
	"Move your mouse to\nCREATE beautiful\ncolor palettes!" +
	"Press 1 2 3 4 5 to\nLOCK a flower's palette!" +
	"Click outside the lake\nto get STARTED!";
	
color_instrs =
	"After locking\na flower,\nclick on it to see\nits color details!";

// Show instructions
var _instrs_info = instance_create_depth(0, 0, -2, obj_info);
_instrs_info.info = instrs;

// Import relevant obj_background variables
bg_width = obj_background.width;
bg_x = obj_background.x;
bg_y = obj_background.y;

/// Set up flowers
// Position for top flower
top_flower_x = bg_x;
top_flower_y = bg_y-bg_width/4;

// Positions for bottom flowers
bottom_left_flower_x = bg_x-bg_width/3;
bottom_right_flower_x = bg_x+bg_width/3;
bottom_flowers_y = bg_y+bg_width/5;

// Positions for middle flowers
middle_left_flower_x = bg_x-bg_width/6;
middle_right_flower_x = bg_x+bg_width/6;
middle_flowers_y = top_flower_y + (bottom_flowers_y-top_flower_y)/2;

// Spawn five flowers
var _top_flower = instance_create_depth(top_flower_x, top_flower_y, -1, 
					obj_flower);
var _middle_left_flower = instance_create_depth(middle_left_flower_x,
							middle_flowers_y, -1, obj_flower);
var _middle_right_flower = instance_create_depth(middle_right_flower_x,
							middle_flowers_y, -1, obj_flower);
var _bottom_left_flower = instance_create_depth(bottom_left_flower_x,
							bottom_flowers_y, -1, obj_flower);
var _bottom_right_flower = instance_create_depth(bottom_right_flower_x,
							bottom_flowers_y, -1, obj_flower);

// Set each flower's type to uniquely determine their petal colors
_top_flower.type = 1;
_middle_left_flower.type = 2;
_middle_right_flower.type = 3;
_bottom_left_flower.type = 4;
_bottom_right_flower.type = 5;

// Set font
draw_set_font(fnt_oshigo);

// Vertical/Horizontal scale for flower text and info text
flower_font_scale = bg_width*0.002;
info_font_scale = bg_width*0.00125;
