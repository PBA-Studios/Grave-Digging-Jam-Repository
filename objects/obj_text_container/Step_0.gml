x = obj_camera.x;
y = obj_camera.y + 45;
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