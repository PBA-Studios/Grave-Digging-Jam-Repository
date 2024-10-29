//state init
state = PlayerWalk;

//set up collisions map
collisionMap = layer_tilemap_get_id(layer_get_id("Collisions"));

//init player variables
xSpeed = 0;
ySpeed = 0;
moveDirection = 270;
walkSpeed = 2;
rollSpeed = 2.5;
global.pop_up_text = false;
if (room == rm_forest)
{
	constantY = y;
	music = audio_play_sound(snd_forest_theme, 51, true);
	audio_sound_gain(music, 0, 0);
	audio_sound_gain(music, 0.9, 5000); 
}