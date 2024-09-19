// obj_info Draw

// Info
var _font_scale = obj_manager.info_font_scale;
if (type == "instructions") {
    // Instructions (center justified)
    draw_set_halign(fa_center);
	
	var _instr = "WELCOME TO\nPETAL PALETTES!";
	draw_instr_str(0, 0.17, _instr, _font_scale*1.35, text_colors[0]);

	_instr = "Move your mouse to\nCREATE beautiful\ncolor palettes!";
	draw_instr_str(0, 0.225, _instr, _font_scale*0.9, text_colors[1]);

    _instr = "Press 1 2 3 4 5 to\nLOCK a flower's palette!";
	draw_instr_str(0, 0.315, _instr, _font_scale*0.9, text_colors[2]);
	
	_instr = "Click outside the lake\nto get STARTED!";
	draw_instr_str(0, 0.385, _instr, _font_scale*0.9, text_colors[3]);

} else if (type == "color instructions") {
	// Color instructions (center justified)
	draw_set_halign(fa_center);
	draw_instr_str(0, 0.225, info, _font_scale, text_colors[4]);	

} else if (type == "color info") {
	// Color hexes and RGB values (left justified)
	draw_set_halign(fa_left);
	draw_instr_str(-string_width(info)/2 * _font_scale+bg_width/40, 0.225,
		info, _font_scale, text_colors[4]);
	
	// Circles with colors correlated to adjoining info
	draw_color_circle(2.5, circle_colors[0]);
	draw_color_circle(5, circle_colors[1]);
	draw_color_circle(7.5, circle_colors[2]);
	draw_color_circle(10, circle_colors[3]);
}
