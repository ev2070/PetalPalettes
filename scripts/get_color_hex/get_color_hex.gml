// Script takes in rgb values (three integers)
// and returns its equivalent hex (string)
function color_get_hex(_red, _green, _blue) {	
	var _red_hex = dec_to_hex(_red, 2);
	var _green_hex = dec_to_hex(_green, 2);
	var _blue_hex = dec_to_hex(_blue, 2);
	
	return "#" + _red_hex + _green_hex + _blue_hex;
}
