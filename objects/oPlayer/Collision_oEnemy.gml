if (y <= other.y - other.sprite_height * .9)
{
	instance_destroy(other);
	y_speed = jmpfrce;
	show_debug_message("Attacked Enemy");
}