// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerWalk()
{
	//calculate axial speed
	xSpeed = lengthdir_x(moveMagnitude * walkSpeed, moveDirection);
	ySpeed = lengthdir_y(moveMagnitude * walkSpeed, moveDirection);
	
	//	Animation Switcher
	switch (moveDirection)
	{
		case 270:
			sprite_index = spr_player_walk_south;
		break;

	    case 90:
			sprite_index = spr_player_walk_north;
	    break;
	
		case 180:
			sprite_index = spr_player_walk_west;
		break;
	
		case 0:
			sprite_index = spr_player_walk_east;
	    break;
	}

//	Collision System
PlayerCollision();
}