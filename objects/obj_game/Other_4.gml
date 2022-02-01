if(room == RM_GAME)
{
	var l108F15C9_0 = mainsong;
	if (audio_is_playing(l108F15C9_0))
	{
		audio_stop_sound(mainsong);
	}

	audio_sound_gain(mainsong, 10, 0);

	audio_play_sound(mainsong, 0, 1);

	alarm_set(1, 200);

	repeat(100)
	{
		var choice = choose(0, 1);
	
		if(choice == 0)
		{
			variable = 0;
		
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		else
		{
			var xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		var choice = choose(0, 1);
	
		if(choice == 0)
		{
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		else
		{
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		instance_create_layer(xx, yy, "Instances", obj_rock);
	}
}