/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 49720AA5
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D26DFE6
/// @DnDArgument : "var" "other.sprite_index"
/// @DnDArgument : "value" "Spr_smallrock"
if(other.sprite_index == Spr_smallrock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641B5E42
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 0D26DFE6
	/// @DnDArgument : "expr" "-25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -25;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00C02D9D
	/// @DnDApplyTo : other
	/// @DnDParent : 0D26DFE6
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52E2AB72
/// @DnDArgument : "var" "other.sprite_index"
/// @DnDArgument : "value" "Spr_medrock"
if(other.sprite_index == Spr_medrock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 082325C8
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 52E2AB72
	/// @DnDArgument : "expr" "-50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -50;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58D14137
	/// @DnDApplyTo : other
	/// @DnDParent : 52E2AB72
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E5B6E48
/// @DnDArgument : "var" "other.sprite_index"
/// @DnDArgument : "value" "Spr_largerock"
if(other.sprite_index == Spr_largerock)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A00EE62
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 2E5B6E48
	/// @DnDArgument : "expr" "-100"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_game) {
	health += -100;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 538749AE
	/// @DnDApplyTo : other
	/// @DnDParent : 2E5B6E48
	with(other) instance_destroy();
}