/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused)
{
	//MOVE
	x -= moveSpd;
	y += yAmount * .7;
	
	dist = point_distance(x, y, ownerId.x, ownerId.y);
	
	//CONDITION TO DESTROY
	
	if(abs(dist) >= 440)
	{
		instance_destroy();
	}
	
	if(markedForDestruction == true)
	{
		instance_destroy();
	}
	
	if(place_meeting(x, y, oCover))
	{
		markedForDestruction = true;
	}
	
	if(place_meeting(x, y, oPlayer))
	{
		with(oPlayer)
		{
			hp -= 1;
		}
		
		markedForDestruction = true;
	}
}