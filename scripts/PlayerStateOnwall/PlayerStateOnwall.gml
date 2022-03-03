function PlayerStateOnwall(){
if (onwall !=0)
{
	var side = bbox_left;
	if (onwall == 1) side = bbox_right;
	dust ++;
	onwall = place_meeting(x + 1, y, obj_solid) - place_meeting(x - 1, y, obj_solid);
	y_speed += grv_wall;
	y_speed = clamp(y_speed, -0.5, 0.5)
	PlayerCollisionY();
	if ((dust > 2) && (y_speed > 0)) with (instance_create_layer(side, bbox_top, "Effects", oDust))
	{
		other.dust = 0;
		hspeed = -other.onwall * 0.5;
	}
	
	if jump
	{
		wjDelay = MwjDelay;
		x_speed = -onwall * max_speed_wjump;
		y_speed = wjmpfrce;
		state = PlayerStateFree;
	}
	if (dash and candash = true) 
	
	{
		wjDelay = MwjDelay;
		state = PlayerStateDash;
	}
	if left || right
	{
		state = PlayerStateFree;
	}
} 
else
{
	wjDelay = MwjDelay;
	state = PlayerStateFree;
}










}