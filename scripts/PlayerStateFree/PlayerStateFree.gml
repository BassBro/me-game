// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
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
	
	PlayerCollisionX();

#endregion

#region Vertical Movement
	
	y_speed += grv;
	
	if (place_meeting(x, y + 1, obj_solid) and up) {
		y_speed = jmpfrce;
	}
	
	PlayerCollisionY();

#endregion

if (dash and candash = true) {
	state = PlayerStateDash;
}
}