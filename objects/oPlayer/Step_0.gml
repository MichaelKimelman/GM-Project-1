/// @description Insert description here
// You can write your code in this editor


keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

//TAKE DAMAGE

if(!global.gamePaused)
{
	//MOVE
	xDir = keyRight - keyLeft;
	yDir = keyDown - keyUp;
	
	moveAmount = clamp(point_distance(0, 0, xDir, yDir), 0, 1);
	
	dir = point_direction(0, 0, xDir, yDir);
	
	//NEW INCOMING CODE FOR OFFSETTING SPACE WITH TILEMAPS
	xOffset = xDir * 5;
	yOffset = yDir * 5;
	
	//COLLISION
	horizontalMove = lengthdir_x(moveSpeed * moveAmount, dir);
	if(place_meeting(x + horizontalMove, y, oEntity))
	{
		horizontalMove = 0;
	}
	
	if(tilemap_get_at_pixel(collisionTileMap, x + horizontalMove + xOffset, y))
	{
		x -= x % TILE_SIZE + xOffset;
		if(sign(horizontalMove) == 1)
		{
			x += TILE_SIZE;
		}
		horizontalMove = 0;
	}
	
	verticalMove = lengthdir_y(moveSpeed * moveAmount, dir);
	if(place_meeting(x, y + verticalMove, oEntity))
	{
		verticalMove = 0;
	}
	
	if(tilemap_get_at_pixel(collisionTileMap, x , y + verticalMove + yOffset))
	{
		y -= y % TILE_SIZE + yOffset;
		if(sign(verticalMove) == 1)
		{
			y += TILE_SIZE;
		}
		verticalMove = 0;
	}
	
	x += horizontalMove;
	y += verticalMove;
	
	if(hp <= 0)
	{
		instance_destroy();
	}
}