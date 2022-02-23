up = keyboard_check(vk_space);
dash = keyboard_check(vk_shift);
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"));
x_input = right - left

//execute state
script_execute(state);

//if dashing apply a cooldown
if state = PlayerStateDash {
	candash = false
	alarm[0] = room_speed * 0.5
}
