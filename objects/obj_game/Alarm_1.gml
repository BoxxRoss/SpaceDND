/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CF28B49
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "RM_GAME"
if(!(room == RM_GAME))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2378D8DA
	/// @DnDParent : 6CF28B49
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5ECA9313
/// @DnDArgument : "steps" "room_speed*8"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed*8);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 54724882
/// @DnDArgument : "times" "5"
repeat(5)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 27BAE37B
	/// @DnDInput : 2
	/// @DnDParent : 54724882
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "1"
	var choice = choose(0, 1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 318B4B3A
	/// @DnDParent : 54724882
	/// @DnDArgument : "var" "choice"
	if(choice == 0)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 28C59276
		/// @DnDInput : 2
		/// @DnDParent : 318B4B3A
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "room_width"
		var xx = choose(room_width, 0);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2DA99774
		/// @DnDParent : 318B4B3A
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_height"
		var yy = floor(random_range(0, room_height + 1));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 10C43BB8
	/// @DnDParent : 54724882
	else
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 1C4236AE
		/// @DnDInput : 2
		/// @DnDParent : 10C43BB8
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "room_height"
		var yy = choose(room_height, 0);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 37DDE3DA
		/// @DnDParent : 10C43BB8
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_width"
		var xx = floor(random_range(0, room_width + 1));
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6FB4F7E8
	/// @DnDParent : 54724882
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj_rock"
	/// @DnDSaveInfo : "objectid" "obj_rock"
	instance_create_layer(xx, yy, "Instances", obj_rock);
}