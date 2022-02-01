/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D9E0F0E
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "RM_GAMEOVER"
if(room == RM_GAMEOVER)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0BF547C5
	/// @DnDParent : 3D9E0F0E
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58D60025
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10+thrusters"
if(speed > 10+thrusters)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4D62A842
	/// @DnDParent : 58D60025
	/// @DnDArgument : "speed" "10+thrusters"
	speed = 10+thrusters;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A09FFCA
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-10+negativethrusters"
if(speed < -10+negativethrusters)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52C8E538
	/// @DnDParent : 7A09FFCA
	/// @DnDArgument : "speed" "-10-negativethrusters"
	speed = -10-negativethrusters;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2BF52CD4
/// @DnDArgument : "margin" "sprite_width/2"
move_wrap(1, 1, sprite_width/2);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 40F1584A
var l40F1584A_0;
l40F1584A_0 = mouse_check_button(mb_left);
if (l40F1584A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5519E550
	/// @DnDParent : 40F1584A
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5BC17287
		/// @DnDParent : 5519E550
		/// @DnDArgument : "soundid" "sound__2_"
		/// @DnDSaveInfo : "soundid" "sound__2_"
		audio_play_sound(sound__2_, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 6B38DA1B
		/// @DnDParent : 5519E550
		/// @DnDArgument : "sound" "sound__2_"
		/// @DnDArgument : "volume" "0.3"
		/// @DnDSaveInfo : "sound" "sound__2_"
		audio_sound_gain(sound__2_, 0.3, 0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 65435512
		/// @DnDParent : 5519E550
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newbullet"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		newbullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E652E1A
		/// @DnDParent : 5519E550
		/// @DnDArgument : "var" "imagee"
		imagee = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13FFEA96
		/// @DnDParent : 5519E550
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "newbullet.direction"
		newbullet.direction = image_angle;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D081557
		/// @DnDParent : 5519E550
		/// @DnDArgument : "expr" "50+upgc"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 50+upgc;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D4F9BC3
/// @DnDArgument : "expr" "-3"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -3;