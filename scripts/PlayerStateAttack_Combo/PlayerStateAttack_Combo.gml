function PlayerStateAttack_Combo()
{

x_speed = 0
y_speed = 0

ProcessAttack(sPlayer_Attack_Combo, sPlayer_Attack_ComboHB);

if (Animation_End())
{
	sprite_index = sPlayer_Idle;
	state = PlayerStateFree;
}
}