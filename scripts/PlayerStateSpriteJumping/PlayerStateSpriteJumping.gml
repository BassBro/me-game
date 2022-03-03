function PlayerStateSpriteJumping(){
if sprite_index != sPlayer_Jumping
{
	sprite_index = sPlayer_Jumping;
}
if (AnimationEnd(sprite_index,image_index) || place_meeting(x, y + 1, obj_solid))
{
	sprite_state = PlayerStateSpriteFree;
}
}