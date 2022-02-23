function PlayerCollisionX() {

var CollidedX = false;
if(place_meeting(x + x_speed, y, obj_solid)) {
	while(!place_meeting(x + sign(x_speed), y, obj_solid)) {
		x += sign(x_speed)
	}
	CollidedX = true;
	
	x_speed = 0;
} else CollidedX = false;

x += x_speed;

return CollidedX;

}

function PlayerCollisionY() {
var CollidedY = false;
if(place_meeting(x, y + y_speed, obj_solid)) {
	while(!place_meeting(x, y + sign(y_speed), obj_solid)) {
		y += sign(y_speed)
	}
	
	CollidedY = true;
	y_speed = 0;
}

y += y_speed;

return CollidedY;

}