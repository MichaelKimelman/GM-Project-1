/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused)
{
	//MOVE
	x -= moveSpd;
	y += yAmount * .7;
	
	dist = point_distance(x, y, ownerId.x, ownerId.y);
	
	//CONDITION TO DESTROY
	
	if(countDownToDestroy >= 200 && hitWall)
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
	
	if(tilemap_get_at_pixel(collisionTileMap, x , y))
	{
		moveSpd *= -1;
		hitWall = true;
	}
	if(hitWall)
	{
		countDownToDestroy++;
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