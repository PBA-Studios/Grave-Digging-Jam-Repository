x = obj_camera.x;
y = obj_camera.y + 45;
dialogue_counter = 0;
graveyard_text = "Memories lost...memories regained...find who you are, and be made anew."
forest_enemy_text1 = "Seek out your memories to search the graveyard of your mind."
forest_enemy_text2 = "The more you find the more you will be challenged."
forest_exit_text = "The Town of Mesta. Press Space to Continue."
npc1_text = "We are helpless to the perils of this place..only you have the power to change our course...";
npc2_text = "The Great Beast of the East, we dare not approach, perhaps you are more brave...";
forest_part2_text1 = "The town is being attacked! Face yourself to free yourself!";
forest_part2_text2 = "Return to Mesta?";
continue_text = "Press Space to Continue."
if (room == rm_cemetary)
{
	global.what_text = graveyard_text;
}
if (room == rm_forest)
{
	global.what_text = forest_enemy_text1;
}
if (room == rm_forest_part2)
{
	global.what_text = forest_part2_text1;
}