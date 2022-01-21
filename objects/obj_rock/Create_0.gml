/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 3C1D62FB
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "Spr_largerock"
/// @DnDArgument : "option_1" "Spr_medrock"
/// @DnDArgument : "option_2" "Spr_smallrock"
sprite_index = choose(Spr_largerock, Spr_medrock, Spr_smallrock);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6E42A3AF
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0E5806D9
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FD3BC37
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_smallrock"
if(sprite_index == Spr_smallrock)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 09BE1B41
	/// @DnDParent : 2FD3BC37
	/// @DnDArgument : "speed" "random_range(1,3)"
	speed = random_range(1,3);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2811730E
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_medrock"
if(sprite_index == Spr_medrock)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4EECC9C7
	/// @DnDParent : 2811730E
	/// @DnDArgument : "speed" "random_range(0.75,1.5)"
	speed = random_range(0.75,1.5);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E38A8B2
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_largerock"
if(sprite_index == Spr_largerock)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 373CB017
	/// @DnDParent : 5E38A8B2
	/// @DnDArgument : "speed" "random_range(0.5,1)"
	speed = random_range(0.5,1);
}