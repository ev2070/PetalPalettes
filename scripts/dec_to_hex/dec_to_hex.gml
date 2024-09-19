// Modified helper script from:
//      https://www.gmlscripts.com/script/dec_to_hex by xot
// Returns a given value as a string of hexadecimal digits
function dec_to_hex(_dec, _len = 1) {
    var _hex = "";
 
    if (_dec < 0) {
        show_error("Negative _dec argument.", true);
    }
	if (_dec > 255) {
		show_error("_dec argument too large.", true)
	}
 
    var _dig = "0123456789ABCDEF";
    while (_len-- || _dec) {
        _hex = string_char_at(_dig, (_dec & $F) + 1) + _hex;
        _dec = _dec >> 4;
    }
 
    return _hex;
}
