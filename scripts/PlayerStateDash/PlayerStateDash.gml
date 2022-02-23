function PlayerStateDash(){
	
#region Dash Input
	
	if (dash and dashing == false) {
		dashing = true;
		
		var x_dir = sign(x_speed);
		
		x_speed = dash_speed * x_dir;
	}
	
	if (dashing) {
		dash_counter += 1;
		if(dash_counter mod 240) {
			instance_create_depth(x, y, depth + 1, oPlayer_Effect);
		}
	}
	
	if (abs(x_speed) < max_speed) {
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
