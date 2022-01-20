/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 49720AA5
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D26DFE6
/// @DnDArgument : "var" "obj_rock.sprite_index"
/// @DnDArgument : "value" "Spr_smallrock"
if(obj_rock.sprite_index == Spr_smallrock)
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
	/// @DnDHash : 11230E07
	/// @DnDApplyTo : other
	/// @DnDParent : 0D26DFE6
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52E2AB72
/// @DnDArgument : "var" "obj_rock.sprite_index"
/// @DnDArgument : "value" "Spr_medrock"
if(obj_rock.sprite_index == Spr_medrock)
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
	/// @DnDHash : 16FFCD73
	/// @DnDApplyTo : other
	/// @DnDParent : 52E2AB72
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E5B6E48
/// @DnDArgument : "var" "obj_rock.sprite_index"
/// @DnDArgument : "value" "Spr_largerock"
if(obj_rock.sprite_index == Spr_largerock)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E0917C5
	/// @DnDParent : 2E5B6E48
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10246CBE
	/// @DnDApplyTo : other
	/// @DnDParent : 2E5B6E48
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 11851205
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 2E5B6E48
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_game) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}
}