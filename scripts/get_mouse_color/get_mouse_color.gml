// Script to get a petal color based
// on background-relative mouse position
function get_mouse_color(_val1, _val2, _val3){
	return make_color_rgb((_val1) mod 256, (_val2) mod 256, (_val3) mod 256);
}
