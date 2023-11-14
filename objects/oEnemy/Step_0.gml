/// @description Insert description here
// You can write your code in this editor

if(shootTimer <= 500 && createdAttack == noone)
{
	shootTimer++;
	
	if(random_range(0,1000)>= 900)
	{
		shootTimer += 40;
	}
}

if(!instance_exists(createdAttack))
{
	createdAttack = noone;
}


if(shootTimer >= 500 && createdAttack == noone)
{
	//SHOOT
	var inst = instance_create_layer(x - 10, y, "Instances", oAttack0);
	createdAttack = inst;
	with(inst)
	{
		ownerId = other.id;
		if(random_range( 0, 10) > 1)
		{
			yAmount = floor(random_range(-2, 2));
		}
		
	}
	//RESET TIMER
	shootTimer = 0;
}