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
	/// @DnDHash : 059BE4C5
	/// @DnDParent : 3102746C
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5A291520
	/// @DnDParent : 3102746C
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 72FC4ED7
		/// @DnDInput : 2
		/// @DnDParent : 5A291520
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C09387A
		/// @DnDParent : 5A291520
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4949B059
			/// @DnDParent : 3C09387A
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4641F1FE
		/// @DnDParent : 5A291520
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 40E6295D
			/// @DnDParent : 4641F1FE
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(room_width*0.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 759DA649
		/// @DnDInput : 2
		/// @DnDParent : 5A291520
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E6F5651
		/// @DnDParent : 5A291520
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 324EE777
			/// @DnDParent : 2E6F5651
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 639B7F39
		/// @DnDParent : 5A291520
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 32CBE102
			/// @DnDParent : 639B7F39
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(room_height*0.7, room_height));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 53FB8E0D
		/// @DnDParent : 5A291520
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_rock"
		/// @DnDSaveInfo : "objectid" "obj_rock"
		instance_create_layer(xx, yy, "Instances", obj_rock);
	}
}