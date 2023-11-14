/// @description Insert description here
// You can write your code in this editor

//MOVE
x -= moveSpd;
y += yAmount * .7;

dist = point_distance(x, y, ownerId.x, ownerId.y);

//CONDITION TO DESTROY

if(abs(dist) >= 210)
{
	instance_destroy();
}

if(markedForDestruction == true)
{
	instance_destroy();
}

if(place_meeting(x, y, oPlayer))
{
	with(oPlayer)
	{
		hp -= 1;
	}
	
	markedForDestruction = true;
}