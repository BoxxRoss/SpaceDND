/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E61D283
/// @DnDInput : 3
/// @DnDArgument : "expr" "8+obj_Ship.speed"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "image_yscale"
/// @DnDArgument : "var_2" "image_xscale"
speed = 8+obj_Ship.speed;
image_yscale = 1;
image_xscale = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5E2F5DFF
/// @DnDArgument : "angle" "obj_Ship.image_angle"
image_angle = obj_Ship.image_angle;