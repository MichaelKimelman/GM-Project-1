/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space) && global.displayVictory)
{
	game_restart();
}

if(global.gamePaused)
{
	with(all)
	{
		previousGameSpeed = image_speed;
		image_speed = 0;
	}
}
//else
//{
//	with(all)
//	{
//		image_speed = previousGameSpeed;
//	}
//}