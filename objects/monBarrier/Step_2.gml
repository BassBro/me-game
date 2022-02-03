if place_meeting(x + spdx, y, soBarrier)
{
	while (!place_meeting(x + sign(spdx), y, soBarrier))
	{
		x += sign(spdx);
	}
	spdx = 0;
}

x += spdx

if place_meeting(x, y + spdy, soBarrier)
{
	while (!place_meeting(x, y + sign(spdy), soBarrier))
	{
		y += sign(spdy);
	}
	spdy = 0;
}

y += spdy;