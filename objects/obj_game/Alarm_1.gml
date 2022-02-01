if(!(room == RM_GAME))
{
	exit;
}

alarm_set(1, room_speed*8);

repeat(5)
{
	var choice = choose(0, 1);

	if(choice == 0)
	{
		var xx = choose(room_width, 0);
	
		yy = random_range(0, room_height);
	}

	else
	{
		var yy = choose(room_height, 0);
	
		xx = random_range(0, room_width);
	}

	instance_create_layer(xx, yy, "Instances", obj_rock);
}