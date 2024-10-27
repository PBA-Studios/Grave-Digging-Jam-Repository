//	Init Variables
has_hurt = false;

//	Sprite Selector
switch (obj_player.moveDirection)
{
	case 0:
		sprite_index = spr_player_attack_east;
		x = obj_player.x + 10;
		y = obj_player.y - 10;
	break;
	
	case 90:
		sprite_index = spr_player_attack_north;
		x = obj_player.x;
		y = obj_player.y - 16;
	break;
	
	case 180:
		sprite_index = spr_player_attack_west;
		x = obj_player.x - 10;
		y = obj_player.y - 10;
	break;
	
	case 270:
		sprite_index = spr_player_attack_south;
		x = obj_player.x;
		y = obj_player.y - 8;
	break;
	
	default:
		//
	break;
}