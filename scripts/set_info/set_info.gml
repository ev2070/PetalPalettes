// Script that sets the info object to "color info"
// and builds the color info to be displayed
function set_info(_flower_type) {
	// Fetch hexes and RGB's for each color of the given flower
	var _hex1 = obj_info.flower_palettes[_flower_type-1][0][0];
	var _r1 = obj_info.flower_palettes[_flower_type-1][1][0];
	var _g1 = obj_info.flower_palettes[_flower_type-1][2][0];
	var _b1 = obj_info.flower_palettes[_flower_type-1][3][0];
	
	var _hex2 = obj_info.flower_palettes[_flower_type-1][0][1];
	var _r2 = obj_info.flower_palettes[_flower_type-1][1][1];
	var _g2 = obj_info.flower_palettes[_flower_type-1][2][1];
	var _b2 = obj_info.flower_palettes[_flower_type-1][3][1];
	
	var _hex3 = obj_info.flower_palettes[_flower_type-1][0][2];
	var _r3 = obj_info.flower_palettes[_flower_type-1][1][2];
	var _g3 = obj_info.flower_palettes[_flower_type-1][2][2];
	var _b3 = obj_info.flower_palettes[_flower_type-1][3][2];
	
	var _hex4 = obj_info.flower_palettes[_flower_type-1][0][3];
	var _r4 = obj_info.flower_palettes[_flower_type-1][1][3];
	var _g4 = obj_info.flower_palettes[_flower_type-1][2][3];
	var _b4 = obj_info.flower_palettes[_flower_type-1][3][3];
	
	obj_info.type = "color info";
	obj_info.info = 
		"Flower " + string(_flower_type) + "\n\n" +
		_hex1 + "\n" + _r1 + ", " + _g1 + ", " + _b1 + "\n\n" +
		_hex2 + "\n" + _r2 + ", " + _g2 + ", " + _b2 + "\n\n" +
		_hex3 + "\n" + _r3 + ", " + _g3 + ", " + _b3 + "\n\n" +
		_hex4 + "\n" + _r4 + ", " + _g4 + ", " + _b4;
}
