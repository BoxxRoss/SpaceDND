/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 35E819F8
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0794C333
/// @DnDArgument : "soundid" "BeepBox_Song"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "BeepBox_Song"
audio_play_sound(BeepBox_Song, 0, 1);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 359DEBE6
/// @DnDArgument : "room" "RM_GAMEOVER"
/// @DnDSaveInfo : "room" "RM_GAMEOVER"
room_goto(RM_GAMEOVER);