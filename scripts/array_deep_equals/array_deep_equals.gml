// Script checks if two given arrays are equivalent
// via deep comparison (recursive)
function array_deep_equals(_arr1, _arr2) {
    // Ensure arguments are both arrays
    if (!is_array(_arr1) || !is_array(_arr2)) {
        show_error("Both arguments must be arrays", true);
    }

	// Check if arrays are both empty
    if (array_length(_arr1) == 0 && array_length(_arr2) == 0) {
        return true;
    }
	
    // Ensure both have the same length
    if (array_length(_arr1) != array_length(_arr2)) {
        return false;
    }

    // Loop through each element in the arrays
    for (var _i = 0; _i < array_length(_arr1); _i++) {
        
        // If both elements are arrays, recurse
        if (is_array(_arr1[_i]) && is_array(_arr2[_i])) {
            if (!array_deep_equals(_arr1[_i], _arr2[_i])) {
                return false;
            }
		// Otherwise, do a direct comparison
        } else {
            if (_arr1[_i] != _arr2[_i]) {
                return false;
            }
        }
    }

    // At this point, all elements are equal
    return true;
}
