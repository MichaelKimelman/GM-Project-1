/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, oPlayer))
{
	goalReached = true;
}

if(goalReached == true && countToPause <= 120 )
{
	countToPause++;
}

if(countToPause >= 120)
{
	global.gamePaused = true;
	global.displayVictory = true;
	
}

//if(gameFinish)
//{
//	with(all)
//	{
//		image_speed = 0;
//	}
//}