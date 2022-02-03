{
	if ((oPlayer.x != Lx) or (oPlayer.y != Ly)) and (((abs(oPlayer.x - x)) < 200) and ((abs(oPlayer.x - x) < 100)))
	{
		var path = path_add();
		mp_potential_path(path,oPlayer.x, oPlayer.y, 2, 4, false);
		path_start(path, 2, path_action_stop, true);
	}
	Lx = oPlayer.x; Ly = oPlayer.y;
}