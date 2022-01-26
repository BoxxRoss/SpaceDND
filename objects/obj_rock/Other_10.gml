/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4C7209CA
/// @DnDArgument : "var" "chancegun"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "100"
chancegun = floor(random_range(0, 100 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 497C30E2
/// @DnDArgument : "var" "chancegun"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "95"
if(chancegun >= 95)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 02B7C3EA
	/// @DnDParent : 497C30E2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "gun_speed_upgrade"
	/// @DnDSaveInfo : "objectid" "gun_speed_upgrade"
	instance_create_layer(x + 0, y + 0, "Instances", gun_speed_upgrade);
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 664E6761
/// @DnDArgument : "sound" "sound__1_"
/// @DnDArgument : "volume" "0.5"
/// @DnDSaveInfo : "sound" "sound__1_"
audio_sound_gain(sound__1_, 0.5, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 18EC4A99
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7A588DF9
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D170347
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1B768D19
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E5E8DC6
	/// @DnDParent : 1B768D19
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 279F0851
	/// @DnDParent : 1B768D19
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_largerock"
	if(sprite_index == Spr_largerock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 2C1D3FA1
		/// @DnDParent : 279F0851
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 067FBCDF
			/// @DnDParent : 2C1D3FA1
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E12D812
			/// @DnDParent : 2C1D3FA1
			/// @DnDArgument : "expr" "Spr_medrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_medrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 01248AB9
		/// @DnDParent : 279F0851
		/// @DnDArgument : "times" "20"
		repeat(20)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2842F857
			/// @DnDParent : 01248AB9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17F46A88
	/// @DnDParent : 1B768D19
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_medrock"
	if(sprite_index == Spr_medrock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 0C7EB576
		/// @DnDParent : 17F46A88
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 639EF4D6
			/// @DnDParent : 0C7EB576
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DADA25A
			/// @DnDParent : 0C7EB576
			/// @DnDArgument : "expr" "Spr_smallrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_smallrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 771EDDF1
		/// @DnDParent : 17F46A88
		/// @DnDArgument : "times" "10"
		repeat(10)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 03744F6E
			/// @DnDParent : 771EDDF1
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57889D4B
	/// @DnDParent : 1B768D19
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_smallrock"
	if(sprite_index == Spr_smallrock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 499EE182
		/// @DnDParent : 57889D4B
		/// @DnDArgument : "times" "5"
		repeat(5)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6AC8E9D2
			/// @DnDParent : 499EE182
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}
}