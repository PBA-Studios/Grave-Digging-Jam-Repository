draw_set_color(c_black);
draw_set_font(fnt_grave_text);
if (global.active_grave != "none")
{
	draw_text_ext(global.closest_grave_instance.x, global.closest_grave_instance.y + 9, global.active_grave, 10, 40);
}