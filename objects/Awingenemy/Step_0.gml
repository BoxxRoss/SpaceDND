/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 02E51F47
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A6426C5
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "time"
time += -1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 786C2B1E
/// @DnDArgument : "obj" "obj_Ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_Ship"
var l786C2B1E_0 = false;
l786C2B1E_0 = instance_exists(obj_Ship);
if(!l786C2B1E_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 15EEB91F
	/// @DnDParent : 786C2B1E
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7026BEA7
/// @DnDArgument : "var" "time"
/// @DnDArgument : "op" "3"
if(time <= 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 04CE022A
	/// @DnDParent : 7026BEA7
	/// @DnDArgument : "x" "obj_Ship.x"
	/// @DnDArgument : "y" "obj_Ship.y"
	direction = point_direction(x, y, obj_Ship.x, obj_Ship.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 476943C1
	/// @DnDParent : 7026BEA7
	/// @DnDArgument : "expr" "60"
	/// @DnDArgument : "var" "time"
	time = 60;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6DCFCFD7
/// @DnDInput : 2
/// @DnDArgument : "function" "motion_add"
/// @DnDArgument : "arg" "image_angle"
/// @DnDArgument : "arg_1" "0.06"
motion_add(image_angle, 0.06);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E6D7BB1
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(speed >= 3)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 157B55DA
	/// @DnDParent : 6E6D7BB1
	/// @DnDArgument : "speed" "3"
	speed = 3;
}