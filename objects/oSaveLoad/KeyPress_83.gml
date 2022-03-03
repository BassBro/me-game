/// @desc Save Game

// make save array
if keyboard_check(vk_control) {
var _saveData = array_create(0);

//for every instance, create a struct and add it to the array
with(pSaveMe) 
{
	var _saveEntiity = 
	{
		obj : object_get_name(object_index),
		y : y,
		x : x,
	}
	array_push(_saveData, _saveEntiity);
}

//turn all this data into a JSON string and save it via buffer
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
buffer_write( _buffer, buffer_string, _string);
buffer_save( _buffer, "savedgame.save");
buffer_delete( _buffer);

show_debug_message("Game saved! " + _string);
}