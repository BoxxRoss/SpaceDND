/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2BF52CD4
/// @DnDArgument : "margin" "sprite_width/2"
/// @DnDArgument : "ver" "0"
move_wrap(1, 0, sprite_width/2);

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
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		var newbullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
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
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D4F9BC3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;