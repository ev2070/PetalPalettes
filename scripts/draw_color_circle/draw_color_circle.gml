// Script that draws a colorful circle that
// correlates to its adjoining color info
function draw_color_circle(_y_scale_offset, _col) {
	var _radius = obj_info.bg_width/40;
	var _str = obj_info.info;
	var _font_scale = obj_manager.info_font_scale;
	
	draw_circle_color(
		obj_info.bg_x - string_width(_str)/2 * _font_scale - _radius,
		obj_info.bg_y + obj_info.bg_width * 0.225 - string_height(_str)/2 *
		_font_scale + _radius * _y_scale_offset,
		_radius,
		_col, _col,
		false
	);
}
