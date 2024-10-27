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