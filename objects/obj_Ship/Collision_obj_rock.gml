/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 148D35C3
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 49720AA5
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7DD7CCA1
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 09C6AD9B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_explosion"
/// @DnDSaveInfo : "objectid" "Obj_explosion"
instance_create_layer(x + 0, y + 0, "Instances", Obj_explosion);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 631AD00D
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "steps" "120"
/// @DnDArgument : "alarm" "2"
with(obj_game) {
alarm_set(2, 120);

}