/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2CA11D04
/// @DnDArgument : "expr" "room"
var l2CA11D04_0 = room;
switch(l2CA11D04_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 23730774
	/// @DnDParent : 2CA11D04
	/// @DnDArgument : "const" "RM_START"
	case RM_START:
		/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 60278927
		/// @DnDParent : 23730774
		audio_stop_all();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2680D7AD
		/// @DnDParent : 23730774
		/// @DnDArgument : "soundid" "clikc"
		/// @DnDSaveInfo : "soundid" "clikc"
		audio_play_sound(clikc, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1651908B
		/// @DnDParent : 23730774
		/// @DnDArgument : "room" "RM_GAME"
		/// @DnDSaveInfo : "room" "RM_GAME"
		room_goto(RM_GAME);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1EF5FA9C
	/// @DnDParent : 2CA11D04
	/// @DnDArgument : "const" "RM_GAMEOVER"
	case RM_GAMEOVER:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 087ECAA8
		/// @DnDParent : 1EF5FA9C
		/// @DnDArgument : "soundid" "clikc"
		/// @DnDSaveInfo : "soundid" "clikc"
		audio_play_sound(clikc, 0, 0);
	
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 26B88E3A
		/// @DnDParent : 1EF5FA9C
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B7ABE96
	/// @DnDParent : 2CA11D04
	/// @DnDArgument : "const" "RM_WIN"
	case RM_WIN:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 358F5FF5
		/// @DnDParent : 0B7ABE96
		/// @DnDArgument : "soundid" "clikc"
		/// @DnDSaveInfo : "soundid" "clikc"
		audio_play_sound(clikc, 0, 0);
	
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2EFDCE14
		/// @DnDParent : 0B7ABE96
		game_restart();
		break;
}