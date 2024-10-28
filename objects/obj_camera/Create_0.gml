//	Camera System
cam = view_camera[0];
follow = obj_player;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
x = follow.x;
y = follow.y;
xTo = follow.x;
yTo = follow.y;
instance_create_layer(x, y, "Instances_Above", obj_white_screen);
audio_play_sound(snd_azraels_crater, 51, true);