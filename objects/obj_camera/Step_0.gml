//update camera's destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//move camera to destination
{
	x += (xTo - x) / 5;
	y += (yTo - y) / 5;
}

//keep camera within room borders
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//draw canera view
camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);