// Script that draws a string of instructions for obj_info
function draw_instr_str(_x_offset, _y_coord_scale, _str, _font_scale, _col) {
	draw_text_transformed_color(
		obj_info.bg_x+_x_offset,
		obj_info.bg_y+ obj_info.bg_width*_y_coord_scale -
		string_height(obj_info.info)/2 * _font_scale,
		_str,
		_font_scale,
		_font_scale,
		0,
		_col, _col, _col, _col,
		1
	);
}
