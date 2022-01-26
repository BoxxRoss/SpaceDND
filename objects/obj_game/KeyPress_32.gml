/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 329DE761
/// @DnDArgument : "expr" "room"
var l329DE761_0 = room;
switch(l329DE761_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 65980078
	/// @DnDParent : 329DE761
	/// @DnDArgument : "const" "RM_WIN"
	case RM_WIN:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 78A5C2B4
		/// @DnDParent : 65980078
		/// @DnDArgument : "soundid" "clikc"
		/// @DnDSaveInfo : "soundid" "clikc"
		audio_play_sound(clikc, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AFD3CC2
		/// @DnDParent : 65980078
		/// @DnDArgument : "expr" "9999999999999999999999999"
		/// @DnDArgument : "var" "ext"
		ext = 9999999999999999999999999;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3C3C4BD7
		/// @DnDParent : 65980078
		/// @DnDArgument : "room" "RM_GAME"
		/// @DnDSaveInfo : "room" "RM_GAME"
		room_goto(RM_GAME);
		break;
}