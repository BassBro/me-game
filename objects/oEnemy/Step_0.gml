if point_distance(x, y, oPlayer.x, oPlayer.y) > 32
{
    move_towards_point(oPlayer.x, y, spd);
}
else speed = 0;