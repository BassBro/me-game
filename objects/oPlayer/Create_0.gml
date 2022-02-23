accel = 1;
decel = accel / 2;
max_speed = 5;

x_speed = 0;
y_speed = 0;

jmpfrce = -8;
grv = 0.3;

dash_speed = max_speed * 3;
dash_counter = 0;
dashing = false;
candash = true;

global.lives = 5;

obj_solid = oBarrier;

state = PlayerStateFree;
