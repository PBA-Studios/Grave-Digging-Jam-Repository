click_counter += 1;
if (click_counter = 2)
{
	audio_play_sound(snd_button_click, 51, false);
	room_goto(rm_intro_scene);
}