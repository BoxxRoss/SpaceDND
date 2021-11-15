/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0C22E8EF
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4DA41E32
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0B6301D8
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3FF7A7D3
	/// @DnDParent : 0B6301D8
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62D87699
	/// @DnDParent : 0B6301D8
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_largerock"
	if(sprite_index == Spr_largerock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 552FB970
		/// @DnDParent : 62D87699
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 51C1652B
			/// @DnDParent : 552FB970
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F93C8A0
			/// @DnDParent : 552FB970
			/// @DnDArgument : "expr" "Spr_medrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_medrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 58019574
		/// @DnDParent : 62D87699
		/// @DnDArgument : "times" "20"
		repeat(20)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 480E7190
			/// @DnDParent : 58019574
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E158FDF
	/// @DnDParent : 0B6301D8
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_medrock"
	if(sprite_index == Spr_medrock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 488D61A5
		/// @DnDParent : 5E158FDF
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 37D472DA
			/// @DnDParent : 488D61A5
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47C7CD40
			/// @DnDParent : 488D61A5
			/// @DnDArgument : "expr" "Spr_smallrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_smallrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 51E6263E
		/// @DnDParent : 5E158FDF
		/// @DnDArgument : "times" "10"
		repeat(10)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 63F0BDB9
			/// @DnDParent : 51E6263E
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 662F416D
	/// @DnDParent : 0B6301D8
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_smallrock"
	if(sprite_index == Spr_smallrock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3223D129
		/// @DnDParent : 662F416D
		/// @DnDArgument : "times" "5"
		repeat(5)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 73AB7984
			/// @DnDParent : 3223D129
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}
}