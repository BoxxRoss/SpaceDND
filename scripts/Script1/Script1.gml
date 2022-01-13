/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 042E0854
/// @DnDInput : 3
/// @DnDArgument : "var" "obj"
/// @DnDArgument : "value" "argument[0]"
/// @DnDArgument : "var_1" "number"
/// @DnDArgument : "value_1" "argument[1]"
/// @DnDArgument : "var_2" "boundcheck"
/// @DnDArgument : "value_2" "true"
var obj = argument[0];
var number = argument[1];
var boundcheck = true;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 1CD4C581
/// @DnDArgument : "var" "boundcheck"
/// @DnDArgument : "value" "true"
while ((boundcheck == true)) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6B08CEE3
	/// @DnDParent : 1CD4C581
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = (random_range(0, room_width));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 37839405
	/// @DnDParent : 1CD4C581
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = (random_range(0, room_height));

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 776EA89E
	/// @DnDInput : 6
	/// @DnDApplyTo : {camera}
	/// @DnDParent : 1CD4C581
	/// @DnDArgument : "var" "boundcheck"
	/// @DnDArgument : "function" "point_in_rectangle()"
	/// @DnDArgument : "arg" "xx"
	/// @DnDArgument : "arg_1" "yy"
	/// @DnDArgument : "arg_2" "cameraX"
	/// @DnDArgument : "arg_3" "cameraY"
	/// @DnDArgument : "arg_4" "cameraX + cameraWidth"
	/// @DnDArgument : "arg_5" "cameraY + cameraHeight"
	with(camera) {
		boundcheck = point_in_rectangle()(xx, yy, cameraX, cameraY, cameraX + cameraWidth, cameraY + cameraHeight);
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3B2199E4
/// @DnDArgument : "objectid" "obj"
instance_create_layer(0, 0, "Instances", obj);