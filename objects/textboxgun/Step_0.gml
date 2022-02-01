/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 309BFB7B
/// @DnDArgument : "expr" "-10+up"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "down"
down += -10+up;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EB19D06
/// @DnDArgument : "var" "down"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-300"
if(down <= -300)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BE33E05
	/// @DnDParent : 3EB19D06
	/// @DnDArgument : "expr" "-300"
	/// @DnDArgument : "var" "down"
	down = -300;
}