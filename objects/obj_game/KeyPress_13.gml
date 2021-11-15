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
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2EFDCE14
		/// @DnDParent : 0B7ABE96
		game_restart();
		break;
}