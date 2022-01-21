/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CCA4D83
/// @DnDInput : 5
/// @DnDArgument : "expr_2" "obj_Ship"
/// @DnDArgument : "expr_3" "600"
/// @DnDArgument : "expr_4" "600"
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "var_1" "cameraY"
/// @DnDArgument : "var_2" "target"
/// @DnDArgument : "var_3" "cameraWidth"
/// @DnDArgument : "var_4" "cameraHeight"
cameraX = 0;
cameraY = 0;
target = obj_Ship;
cameraWidth = 600;
cameraHeight = 600;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0F27DEE8
/// @DnDInput : 2
/// @DnDArgument : "function" "display_set_gui_size"
/// @DnDArgument : "arg" "cameraWidth"
/// @DnDArgument : "arg_1" "cameraHeight"
display_set_gui_size(cameraWidth, cameraHeight);