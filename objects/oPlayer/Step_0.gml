jump = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
//attack = gamepad_button_check(0, gp_face3);
dash = keyboard_check(ord("S")) || gamepad_button_check(0, gp_face2);
right = keyboard_check(ord("D")) || (gamepad_axis_value(0, gp_axislh) > 0 );
left = keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axislh) < 0 );		
x_input = right - left

//execute state
script_execute(state);
script_execute(sprite_state);

//if dashing apply a cooldown
if (state = PlayerStateDash)
{
	candash = false;
	alarm[0] = room_speed * 0.5;
}