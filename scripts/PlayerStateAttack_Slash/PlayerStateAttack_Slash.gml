function PlayerStateAttack_Slash(){

x_speed = 0
y_speed = 0

ProcessAttack(sPlayer_Attack_Slash, sPlayer_Attack_SlashHB);

//trigger combo chain
if ((attack) and (image_index > 1))
{
	state = PlayerStateAttack_Combo;
}

if (Animation_End())
{
	sprite_index = sPlayer_Idle;
	state = PlayerStateFree;
}
}