function PlayerStateSpriteDashing(){
sprite_index = sPlayer_Dashing_Left;
if (x_speed > 0)
{
	sprite_index = sPlayer_Dashing_Right;
}
if AnimationEnd(sprite_index,image_index)
{
	sprite_state = PlayerStateSpriteFree;
}
}