/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 25418AFD
/// @DnDArgument : "obj" "target"
var l25418AFD_0 = false;
l25418AFD_0 = instance_exists(target);
if(l25418AFD_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2531A36E
	/// @DnDInput : 2
	/// @DnDParent : 25418AFD
	/// @DnDArgument : "expr" "target.x - (camera_width/2)"
	/// @DnDArgument : "expr_1" "target.y - (camera_height/2)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = target.x - (camera_width/2);
	cameraY = target.y - (camera_height/2);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 79FB8F59
	/// @DnDInput : 3
	/// @DnDParent : 25418AFD
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}