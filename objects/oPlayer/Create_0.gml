gamepad_set_axis_deadzone(0,0.5);

accel = 1;
decel = accel / 2;
max_speed = 5;
max_speed_wjump = 4;
ymax_speed = 10;

x_speed = 0;
y_speed = 0;

jmpfrce = -6;
wjmpfrce = -5;
grv = 0.3;
grv_wall = 0.2;
onground = true;
onwall = 0;

wjDelay = 0;
MwjDelay = 12;

max_stamina = 100;
stamina = max_stamina;

hitByAttack = ds_list_create();

state = PlayerStateFree;
sprite_state = PlayerStateSpriteFree;

dust = 0;

dash_speed = max_speed * 3;
dashing = false;
candash = true;

global.lives = 5;

obj_solid = oBarrier;