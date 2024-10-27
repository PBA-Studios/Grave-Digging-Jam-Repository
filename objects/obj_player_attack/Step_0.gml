//	Position Controller
switch (sprite_index)
{
	case spr_player_attack_east:
		fixedX = obj_player.x + 10;
		fixedY = obj_player.y - 10;
	break;
	
	case spr_player_attack_north:
		fixedX = obj_player.x;
		fixedY = obj_player.y - 16;
	break;
	
	case spr_player_attack_west:
		fixedX = obj_player.x - 10;
		fixedY = obj_player.y - 10;
	break;
	
	case spr_player_attack_south:
		fixedX = obj_player.x;
		fixedY = obj_player.y - 8;
	break;
	
	default:
		//
	break;
}

//move player
x = fixedX;
y = fixedY;