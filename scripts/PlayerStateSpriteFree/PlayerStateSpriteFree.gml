function PlayerStateSpriteFree(){
sprite_index = sPlayer_Idle;
if (x_input > 0)
{
	sprite_index = sPlayer_Moving_Right;
}
if (x_input < 0)
{
	sprite_index = sPlayer_Moving_Left;
}
}