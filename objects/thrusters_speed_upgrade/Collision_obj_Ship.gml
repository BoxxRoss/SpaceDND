/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E6FBFE9
/// @DnDApplyTo : {obj_Ship}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "thrusters"
with(obj_Ship) {
thrusters += 1;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0490C535
/// @DnDApplyTo : {obj_Ship}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "negativethrusters"
with(obj_Ship) {
negativethrusters += 1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5102D7ED
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 38FF1F27
/// @DnDArgument : "xpos" "150"
/// @DnDArgument : "ypos" "400"
/// @DnDArgument : "objectid" "textboxgun"
/// @DnDArgument : "layer" ""no""
/// @DnDSaveInfo : "objectid" "textboxgun"
instance_create_layer(150, 400, "no", textboxgun);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D62BB6C
/// @DnDApplyTo : {textboxgun}
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "choicein"
with(textboxgun) {
choicein = 2;

}