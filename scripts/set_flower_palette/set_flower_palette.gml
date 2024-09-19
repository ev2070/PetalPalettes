// Script that takes in two arrays, each with two elements,
// and a flower index to extract the RGB and hex values of
// each element to populate a flower palette
function set_flower_palette(_arr1, _arr2, _flower_ndx) {
	
	// Each array must contain only two elements
	if (array_length(_arr1) != 2) {
		show_error("Invalid _arr1 argument", true);
	} else if (array_length(_arr2) != 2) {
		show_error("Invalid _arr2 argument", true);
	}
	
	// Get R G B of first color
	var _r1 = color_get_red(_arr1[0]);
	var _g1 = color_get_green(_arr1[0]);
	var _b1 = color_get_blue(_arr1[0]);
			
	// Get R G B of second color
	var _r2 = color_get_red(_arr1[1]);
	var _g2 = color_get_green(_arr1[1]);
	var _b2 = color_get_blue(_arr1[1]);
				
	// Get R G B of third color
	var _r3 = color_get_red(_arr2[0]);
	var _g3 = color_get_green(_arr2[0]);
	var _b3 = color_get_blue(_arr2[0]);
	
	// Get R G B of fourth color
	var _r4 = color_get_red(_arr2[1]);
	var _g4 = color_get_green(_arr2[1]);
	var _b4 = color_get_blue(_arr2[1]);

	// Get hexes of each color
	var _i0h = color_get_hex(_r1, _g1, _b1);
	var _i1h = color_get_hex(_r2, _g2, _b2);
	var _o0h = color_get_hex(_r3, _g3, _b3);
	var _o1h = color_get_hex(_r4, _g4, _b4);
		
	// Set hexes, reds, green, and blues arrays of a flower
	obj_info.flower_palettes[_flower_ndx][0] =
		[_i0h, _i1h, _o0h, _o1h];
	obj_info.flower_palettes[_flower_ndx][1] =
		[string(_r1), string(_r2), string(_r3), string(_r4)];
	obj_info.flower_palettes[_flower_ndx][2] =
		[string(_g1), string(_g2), string(_g3), string(_g4)];
	obj_info.flower_palettes[_flower_ndx][3] =
		[string(_b1), string(_b2), string(_b3), string(_b4)];
}
