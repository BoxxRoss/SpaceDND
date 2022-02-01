/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27A31E8D
/// @DnDApplyTo : {Obj_bullet}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "moresprite"
with(Obj_bullet) {
moresprite = 1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6A914EE4
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 207E0150
/// @DnDArgument : "xpos" "150"
/// @DnDArgument : "ypos" "400"
/// @DnDArgument : "objectid" "textboxgun"
/// @DnDArgument : "layer" ""no""
/// @DnDSaveInfo : "objectid" "textboxgun"
instance_create_layer(150, 400, "no", textboxgun);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54714DD3
/// @DnDApplyTo : {textboxgun}
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "choicein"
with(textboxgun) {
choicein = 3;

}