if keyboard_check_pressed(ord("R"))
room_restart();
//Movement
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

spdx = (right - left) * spd;
spdy = (down - up) * spd;
//Animation
if keyboard_check_pressed(vk_shift)
{
	RunTog = !RunTog;
	if RunTog = true
	{
		spd = 3;
	} else spd = 2
}
if keyboard_check(vk_nokey)
{
	image_speed = 0;
	if temp = 0
	{
		sprite_index = sPlayerLL;
	}
	else if temp = 1
	{
		sprite_index = sPlayerLR;
	}
	else if temp = 2
	{
		sprite_index = sPlayerLU;
	}
	else if temp = 3
	{
		sprite_index = sPlayerLD;
	}
}
else if keyboard_check(vk_left)
{
	temp = 0
	image_speed = spd * 1.5;
	sprite_index = sPlayerAL;
}
else if keyboard_check(vk_right)
{
	temp = 1
	image_speed = spd * 1.5;
	sprite_index = sPlayerAR;
}
else if sign(spdx) = -1
{
	temp = 0
	image_speed = spd * 1.5;
	sprite_index = sPlayerWL;
}
else if sign(spdx) = 1
{
	temp = 1
	image_speed = spd * 1.5;
	sprite_index = sPlayerWR;
}
else if sign(spdy) = -1
{
	temp = 2
	image_speed = spd * 1.5;
	sprite_index = sPlayerWU;
}
else if sign(spdy) = 1 
{
	temp = 3
	image_speed = spd * 1.5;
	sprite_index = sPlayerWD;
}