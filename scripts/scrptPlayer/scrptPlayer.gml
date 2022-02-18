function oPMoving(){
var xspd = argument0;
var yspd = argument1;
var CollObj = argument2;
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
}