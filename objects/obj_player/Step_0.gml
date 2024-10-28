//	Action System
//get player input
keyInteract = keyboard_check_pressed(vk_enter);
keyInventory = keyboard_check_pressed(ord("I"));

//	Movement System
//true = 1, false = 0
//get player input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

//check if player wants to move
moveMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
//calculate direction
if (moveMagnitude)
{
	moveDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
}
//change direction to match player input
if (moveMagnitude == true)
{
	direction = moveDirection;
}

//	Attack System
if (global.active_attack = false)
{
	if (keyboard_check_pressed(vk_space))
	{
		if (moveDirection = 270)
		{
			instance_create_layer(x, y, "Instances_Above", obj_player_attack);
			global.active_attack = true;
		}
		if (moveDirection != 270)
		{
			instance_create_layer(x, y, "Instances_Below", obj_player_attack);
			global.active_attack = true;
		}
	}
}

//	Grave Text System
global.closest_grave_instance = instance_nearest(x, y, obj_grave_text_trigger);
if (distance_to_object(global.closest_grave_instance) < 16)
{
	global.active_grave = global.closest_grave_instance.grave_name;
}
if (distance_to_object(global.closest_grave_instance) > 16)
{
	global.active_grave = "none";
}



//	Pause Controller
if (!global.paused)
{
	script_execute(state);
}