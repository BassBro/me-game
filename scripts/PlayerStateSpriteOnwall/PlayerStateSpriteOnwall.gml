function PlayerStateSpriteOnwall(){
sprite_index = sPlayer_Onwall_Left;
if onwall = 1
{
	sprite_index = sPlayer_Onwall_Right;
}
else if onwall = 0
sprite_state = PlayerStateSpriteFree;
}