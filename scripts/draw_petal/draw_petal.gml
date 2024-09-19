// Script that draws a flower petal
function draw_petal(_offset1, _offset2, _offset3, _offset4, _arr) {
	var _x = flower_center_x;
	var _y = flower_center_y;
	draw_roundrect_color(
		_x+_offset1,
		_y+_offset2,
		_x+_offset3,
		_y+_offset4,
		_arr[0], _arr[1],
		false
	);
}
