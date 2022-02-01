/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E61D283
/// @DnDInput : 2
/// @DnDArgument : "expr" "8+obj_Ship.speed"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "moresprite"
speed = 8+obj_Ship.speed;
moresprite = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EDDA79F
/// @DnDArgument : "var" "moresprite"
/// @DnDArgument : "value" "1"
if(moresprite == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36F3A068
	/// @DnDParent : 1EDDA79F
	/// @DnDArgument : "expr" "Spr_bigbullet"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = Spr_bigbullet;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5E2F5DFF
/// @DnDArgument : "angle" "obj_Ship.image_angle"
image_angle = obj_Ship.image_angle;