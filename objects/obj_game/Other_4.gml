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

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0B132397
	/// @DnDInput : 2
	/// @DnDParent : 3102746C
	/// @DnDArgument : "script" "Script1"
	/// @DnDArgument : "arg" "obj_rock"
	/// @DnDArgument : "arg_1" "40"
	/// @DnDSaveInfo : "script" "Script1"
	script_execute(Script1, obj_rock, 40);
}