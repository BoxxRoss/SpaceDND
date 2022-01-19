/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3102746C
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "RM_GAME"
if(room == RM_GAME)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 108F15C9
	/// @DnDParent : 3102746C
	/// @DnDArgument : "soundid" "mainsong"
	/// @DnDSaveInfo : "soundid" "mainsong"
	var l108F15C9_0 = mainsong;
	if (audio_is_playing(l108F15C9_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 21932730
		/// @DnDParent : 108F15C9
		/// @DnDArgument : "soundid" "mainsong"
		/// @DnDSaveInfo : "soundid" "mainsong"
		audio_stop_sound(mainsong);
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 2BD19E2C
	/// @DnDParent : 3102746C
	/// @DnDArgument : "sound" "mainsong"
	/// @DnDArgument : "volume" "10"
	/// @DnDSaveInfo : "sound" "mainsong"
	audio_sound_gain(mainsong, 10, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 579EED7E
	/// @DnDParent : 3102746C
	/// @DnDArgument : "soundid" "mainsong"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "mainsong"
	audio_play_sound(mainsong, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0D42C1CB
	/// @DnDParent : 3102746C
	/// @DnDArgument : "steps" "200"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 200);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7B6E04BE
	/// @DnDParent : 3102746C
	
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 1AE38E81
		/// @DnDInput : 2
		/// @DnDParent : 7B6E04BE
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42169918
		/// @DnDParent : 7B6E04BE
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7B6A9964
			/// @DnDParent : 42169918
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4F4069AA
		/// @DnDParent : 7B6E04BE
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7AD8C489
			/// @DnDParent : 4F4069AA
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 61E9F8B8
		/// @DnDInput : 2
		/// @DnDParent : 7B6E04BE
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EFDFF90
		/// @DnDParent : 7B6E04BE
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 65037422
			/// @DnDParent : 3EFDFF90
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 25CB2D97
		/// @DnDParent : 7B6E04BE
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3784D9B0
			/// @DnDParent : 25CB2D97
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 35F6C1F6
		/// @DnDParent : 7B6E04BE
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_rock"
		/// @DnDSaveInfo : "objectid" "obj_rock"
		instance_create_layer(xx, yy, "Instances", obj_rock);
	}
}