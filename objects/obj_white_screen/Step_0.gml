x = obj_camera.x;
y = obj_camera.y;
image_alpha = clamp(image_alpha - 0.0025, 0, 1);
if (image_alpha < 0.01)
{
	instance_destroy();
}