x = obj_camera.x;
y = obj_camera.y + 45;

//	Cemetary Text Manager
if (room == rm_cemetary)
{
	if (keyboard_check_pressed(vk_space))
	{
		dialogue_counter += 1;
	}
	if (dialogue_counter = 1)
	{
		global.what_text = continue_text;
	}
	if (dialogue_counter = 2)
	{
		audio_stop_all();
		room_goto(rm_forest);
	}
}
//	Forest Text Manager
if (room == rm_forest)
{
	if (obj_forest_leave_trigger.dialogue_counter = 3)
	{
		global.what_text = forest_exit_text;
		if (keyboard_check_pressed(vk_space))
		{
			audio_stop_all();
			room_goto(rm_town);
		}
	}
	if (obj_forest_leave_trigger.dialogue_counter = 1)
	{
		if (keyboard_check_pressed(vk_space))
		{
			obj_forest_leave_trigger.dialogue_counter = 2;
		}
	}
	if (obj_forest_leave_trigger.dialogue_counter = 0)
	{
		if (keyboard_check_pressed(vk_space))
		{
			global.what_text = forest_enemy_text2
			obj_forest_leave_trigger.dialogue_counter = 1;
		}
	}
}
//	Town Text Manager
if (room == rm_town)
{
	if (keyboard_check_pressed(vk_space))
	{
		instance_destroy(self);
	}
}
//	Forest pt. 2 Text Manager
if (room == rm_forest_part2)
{
	if (global.what_text = forest_part2_text1)
	{
		if (keyboard_check_pressed(vk_space))
		{
			obj_forest2_exit_trigger.dialogue_counter = 1;
			instance_destroy();
		}
	}
	if (global.what_text = forest_part2_text2)
	{
		if (keyboard_check_pressed(vk_space))
		{
			audio_stop_all();
			room_goto(rm_town_part2);
		}
	}
}