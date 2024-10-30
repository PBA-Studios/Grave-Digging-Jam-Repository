if (dialogue_counter = 1)
{
	audio_play_sound(snd_monster_snarl, 51, false);
	alarm[0] = room_speed * 1.25;
	dialogue_counter = 2;
}