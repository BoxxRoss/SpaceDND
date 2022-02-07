/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65053677
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "health"
with(obj_game) {
health = 100;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4115A68A
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E5DB64A
/// @DnDArgument : "objectid" "textboxgun"
/// @DnDSaveInfo : "objectid" "textboxgun"
instance_create_layer(0, 0, "Instances", textboxgun);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A07BDB9
/// @DnDApplyTo : {textboxgun}
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "choicein"
with(textboxgun) {
choicein = 4;

}