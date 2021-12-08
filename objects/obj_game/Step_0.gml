/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29238154
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "RM_GAME"
if(room == RM_GAME)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4A8A7D5C
	/// @DnDParent : 29238154
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score == 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 40B6D96C
		/// @DnDParent : 4A8A7D5C
		audio_stop_all();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 49AA7C8F
		/// @DnDParent : 4A8A7D5C
		/// @DnDArgument : "soundid" "winsong"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "winsong"
		audio_play_sound(winsong, 0, 1);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 58E1EFA3
		/// @DnDParent : 4A8A7D5C
		/// @DnDArgument : "room" "RM_WIN"
		/// @DnDSaveInfo : "room" "RM_WIN"
		room_goto(RM_WIN);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1E62D0D5
	/// @DnDParent : 29238154
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 336B02C3
		/// @DnDParent : 1E62D0D5
		/// @DnDArgument : "steps" "90"
		alarm_set(0, 90);
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 2FA0BD50
		/// @DnDParent : 1E62D0D5
		/// @DnDArgument : "lives" "1"
		
		__dnd_lives = real(1);
	}
}