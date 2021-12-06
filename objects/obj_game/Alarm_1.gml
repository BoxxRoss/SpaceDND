/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 237E57FF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "RM_GAME"
if(!(room == RM_GAME))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 43B12BBC
	/// @DnDParent : 237E57FF
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F6E6898
/// @DnDArgument : "steps" "300"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 300);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4134B68D
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 098D85B5
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 3A3CB2EB
	/// @DnDInput : 2
	/// @DnDParent : 098D85B5
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var xx = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 29A64C09
	/// @DnDParent : 098D85B5
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4D084CDA
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5300B990
	/// @DnDInput : 2
	/// @DnDParent : 4D084CDA
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var yy = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 367B41A1
	/// @DnDParent : 4D084CDA
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7EDA54D7
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_rock"
/// @DnDSaveInfo : "objectid" "obj_rock"
instance_create_layer(xx, yy, "Instances", obj_rock);