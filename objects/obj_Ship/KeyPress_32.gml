/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 77E3DD2B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newbullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "Obj_bullet"
/// @DnDArgument : "layer" ""bulletlayer""
/// @DnDSaveInfo : "objectid" "Obj_bullet"
var newbullet = instance_create_layer(x + 0, y + 0, "bulletlayer", Obj_bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01E4BF75
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newbullet.direction"
newbullet.direction = image_angle;