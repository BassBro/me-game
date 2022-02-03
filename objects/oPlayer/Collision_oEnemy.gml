if sprite_index = sPlayerAR and oEnemy.x = bbox_right
{
	global.encanmove = false;
	alarm[0] = fps * 4;
}
else if sprite_index = sPlayerAL and oEnemy.x = bbox_left
{
	global.encanmove = false;
	alarm[0] = fps * 4;
}