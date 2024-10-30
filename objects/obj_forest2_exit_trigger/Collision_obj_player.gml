if (dialogue_counter = 3)
{
	instance_create_layer(x, y, "Managers", obj_text_container);
	global.what_text = obj_text_container.forest_part2_text2;
}