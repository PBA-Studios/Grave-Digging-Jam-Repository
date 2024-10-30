if (obj_forest_leave_trigger.dialogue_counter = 0)
{
	instance_create_layer(x, y, "Managers", obj_text_container);
}
instance_create_layer(x, y, "Instances_Above", obj_fragment_light);
audio_play_sound(snd_enemy, 51, false);
instance_destroy();