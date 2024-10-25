// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision()
{
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + xSpeed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(xSpeed) == 1) x += TILE_SIZE - 1;
		xSpeed = 0;
		_collision = true;
	}
	//Horizontal Movement
	x += xSpeed;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + ySpeed))
	{
		y -= y mod TILE_SIZE;
		if (sign(ySpeed) == 1) y += TILE_SIZE - 1;
		ySpeed = 0;
		_collision = true;
	}
	//Vertical Movement
	y += ySpeed;
	
	return _collision;
}