function PlayerStateDash(){
	
#region Dash Input
	
	if (dash and dashing == false) {
		dashing = true;
		sprite_state = PlayerStateSpriteDashing;
		
		var x_dir = sign(x_speed);
		x_speed = x_dir * dash_speed;
		
	}
	
	if ((abs(x_speed) < max_speed)) {
		dashing = false;
		state = PlayerStateFree;
	}
	
#endregion

#region Horizontal Movement

	if (x_speed > decel) {
		x_speed -= decel;
	} else if (x_speed < -decel) {
		x_speed += decel;
	} else {
		x_speed = 0
	}
	
	PlayerCollisionX();

#endregion

}