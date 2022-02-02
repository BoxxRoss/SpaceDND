
	
if(room == RM_GAMEOVER)
{
	instance_destroy();
}

if(speed > 10+thrusters)
{
	speed = 10+thrusters;
}

if(speed < -10+negativethrusters)
{
	speed = -10-negativethrusters;
}

move_wrap(1, 1, sprite_width/2);

var l40F1584A_0;
l40F1584A_0 = mouse_check_button(mb_left);
if (l40F1584A_0)
{
	if(cooldown <= 0)
	{
		audio_play_sound(sound__2_, 0, 0);
	
		audio_sound_gain(sound__2_, 0.3, 0);
	
		newbullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		imagee = 0;
	
		newbullet.direction = image_angle;
	
		cooldown = 50+upgc;
		
		
		if moresprite = 1 
			event_user(1);
		{
			
		}
	}
}

cooldown += -3;