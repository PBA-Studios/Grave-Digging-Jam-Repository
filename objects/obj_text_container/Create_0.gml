x = obj_camera.x;
y = obj_camera.y + 45;
dialogue_counter = 0;
graveyard_text = "Memories lost...memories regained...find who you are, and be made anew."
forest_text = "The Town of Mesta. Press Space to Continue. [NOT IN GAME YET]"
continue_text = "Press Space to Continue."
if (room == rm_cemetary)
{
	global.what_text = graveyard_text;
}
if (room == rm_forest)
{
	global.what_text = forest_text;
}
