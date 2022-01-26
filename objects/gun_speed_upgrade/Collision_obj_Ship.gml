/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E96F55D
/// @DnDApplyTo : {obj_Ship}
/// @DnDArgument : "expr" "-3"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "upgc"
with(obj_Ship) {
upgc += -3;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5102D7ED
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 38FF1F27
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "150"
/// @DnDArgument : "ypos" "400"
/// @DnDArgument : "objectid" "textboxgun"
/// @DnDArgument : "layer" ""no""
/// @DnDSaveInfo : "objectid" "textboxgun"