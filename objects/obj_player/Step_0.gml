//	Action System
//get player input
keyInteract = keyboard_check_pressed(vk_enter);
keyInventory = keyboard_check_pressed(ord("I"));

//	Movement System
//true = 1, false = 0
//get player input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

//check if player wants to move
moveMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
//calculate direction
if (moveMagnitude)
{
	moveDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
}
//change direction to match player input
if (moveMagnitude == true)
{
	direction = moveDirection;
}

//	Pause Controller
if (!global.paused)
{
	script_execute(state);
}