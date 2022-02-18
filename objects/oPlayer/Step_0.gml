left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W")) || keyboard_check(vk_space);
restart = keyboard_check(ord("R"));

if restart
room_restart()

xspd = spd * (right - left);
if (place_meeting(x, y + 1, CollObj) and (up))
{
	yspd = jumpf;
}
yspd += grv

if place_meeting(oPlayer.x + xspd, oPlayer.y, CollObj)
{
	while !place_meeting(oPlayer.x + sign(xspd), oPlayer.y, CollObj)
	{
		oPlayer.x += sign(xspd);
	}
	xspd = 0;
}
oPlayer.x += xspd;

if place_meeting(oPlayer.x, oPlayer.y + yspd, CollObj)
{
	while !place_meeting(oPlayer.x, oPlayer.y + sign(yspd), CollObj)
	{
		oPlayer.y += sign(yspd);
	}
	yspd = 0;
}
oPlayer.y += yspd;