/// @description Insert description here
// You can write your code in this editor


keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

//TAKE DAMAGE


//MOVE
xDir = keyRight - keyLeft;
yDir = keyDown - keyUp;

moveAmount = clamp(point_distance(0, 0, xDir, yDir), 0, 1);

dir = point_direction(0, 0, xDir, yDir);


x += lengthdir_x(moveSpeed * moveAmount, dir);
y += lengthdir_y(moveSpeed * moveAmount, dir);

if(hp <= 0)
{
	instance_destroy();
}