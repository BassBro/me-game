function PlayerStateFree(){

wjDelay = max(wjDelay - 1, 0)

if (wjDelay = 0)
{
#region Horizontal Movement
	
	if (x_input != 0) {
		x_speed += accel * x_input;
		x_speed = clamp(x_speed, -max_speed, max_speed);
	} else {
		if(x_speed > decel) {
			x_speed -= decel;
		} else if (x_speed < -decel) {
			x_speed += decel;
		} else {
			x_speed = 0
		}
	}
	
#endregion
}

PlayerCollisionX();

if (wjDelay = 0)
{
#region Vertical Movement
	
	y_speed += grv;
	y_speed = clamp(y_speed, -ymax_speed, ymax_speed);
	
	onground = place_meeting(x, y + 1, obj_solid)
	if (onground and jump)
	{
		y_speed = jmpfrce;
		sprite_state = PlayerStateSpriteJumping;
	}

#endregion
}

PlayerCollisionY();

onwall = place_meeting(x + 1, y, obj_solid) - place_meeting(x - 1, y, obj_solid);

if (dash and candash = true) state = PlayerStateDash;


if ((onwall !=0) and (onground = false))
{
	sprite_state = PlayerStateSpriteOnwall;
	state = PlayerStateOnwall;
}
}