/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused)
{
	if(instance_exists(oPlayer))
	{
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
				if(random_range( 0, 10) > 5)
				{
					yAmount = 0;
				}
				else
				{
					yAmount = choose(-1, 1);
				}
				
			}
			//RESET TIMER
			shootTimer = 0;
		}
	}
}