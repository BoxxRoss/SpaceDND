/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3EEDD94D
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DF8A655
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_smallrock"
if(sprite_index == Spr_smallrock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 581269E9
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 2DF8A655
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -10;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65465637
	/// @DnDParent : 2DF8A655
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DD3828E
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_medrock"
if(sprite_index == Spr_medrock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F3275D8
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 3DD3828E
	/// @DnDArgument : "expr" "-25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -25;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 23501351
	/// @DnDParent : 3DD3828E
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D5C236B
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Spr_largerock"
if(sprite_index == Spr_largerock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 034C1860
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 0D5C236B
	/// @DnDArgument : "expr" "-75"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -75;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D540D50
	/// @DnDParent : 0D5C236B
	instance_destroy();
}