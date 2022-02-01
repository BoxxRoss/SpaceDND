/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 534CB6D4
/// @DnDArgument : "expr" "random_range(0,100)"
/// @DnDArgument : "var" "chancet"
chancet = random_range(0,100);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7519D2BF
/// @DnDArgument : "var" "chancet"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(chancet <= 10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6FD3565B
	/// @DnDParent : 7519D2BF
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "thrusters_speed_upgrade"
	/// @DnDSaveInfo : "objectid" "thrusters_speed_upgrade"
	instance_create_layer(x + 0, y + 0, "Instances", thrusters_speed_upgrade);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A981D8A
/// @DnDArgument : "var" "chancet"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "90"
if(chancet >= 90)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09160D25
	/// @DnDParent : 2A981D8A
	/// @DnDArgument : "xpos" "Obj_bullet.x"
	/// @DnDArgument : "ypos" "Obj_bullet.y"
	/// @DnDArgument : "objectid" "gun_speed_upgrade"
	/// @DnDSaveInfo : "objectid" "gun_speed_upgrade"
	instance_create_layer(Obj_bullet.x, Obj_bullet.y, "Instances", gun_speed_upgrade);
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 2A7EFC92
/// @DnDArgument : "sound" "sound__1_"
/// @DnDArgument : "volume" "0.5"
/// @DnDSaveInfo : "sound" "sound__1_"
audio_sound_gain(sound__1_, 0.5, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7268674C
/// @DnDArgument : "soundid" "sound__1_"
/// @DnDSaveInfo : "soundid" "sound__1_"
audio_play_sound(sound__1_, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 138F4DFB
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 19639ABB
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66823CF7
	/// @DnDParent : 19639ABB
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C53A352
	/// @DnDParent : 19639ABB
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_largerock"
	if(sprite_index == Spr_largerock)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0CF13C89
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 0C53A352
		/// @DnDArgument : "score" "20"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(20);
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 60DFD3BD
		/// @DnDParent : 0C53A352
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3BAE7395
			/// @DnDParent : 60DFD3BD
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2AE8240A
			/// @DnDParent : 60DFD3BD
			/// @DnDArgument : "expr" "Spr_medrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_medrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 39BEE951
		/// @DnDParent : 0C53A352
		/// @DnDArgument : "times" "20"
		repeat(20)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 336FD97E
			/// @DnDParent : 39BEE951
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BA08B18
	/// @DnDParent : 19639ABB
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_medrock"
	if(sprite_index == Spr_medrock)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5B20B06B
		/// @DnDParent : 5BA08B18
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 74C82F8E
			/// @DnDParent : 5B20B06B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newRock"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDSaveInfo : "objectid" "obj_rock"
			var newRock = instance_create_layer(x + 0, y + 0, "Instances", obj_rock);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6947B7E5
			/// @DnDParent : 5B20B06B
			/// @DnDArgument : "expr" "Spr_smallrock"
			/// @DnDArgument : "var" "newRock.sprite_index"
			newRock.sprite_index = Spr_smallrock;
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 7A76728B
		/// @DnDParent : 5BA08B18
		/// @DnDArgument : "times" "10"
		repeat(10)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 11CBA0B7
			/// @DnDParent : 7A76728B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 10FA7BFD
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 5BA08B18
		/// @DnDArgument : "score" "10"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(10);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 767FCACB
	/// @DnDParent : 19639ABB
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "Spr_smallrock"
	if(sprite_index == Spr_smallrock)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 78D4C5BC
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 767FCACB
		/// @DnDArgument : "score" "5"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(5);
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 23440146
		/// @DnDParent : 767FCACB
		/// @DnDArgument : "times" "5"
		repeat(5)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12BB3A58
			/// @DnDParent : 23440146
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_debrie"
			/// @DnDSaveInfo : "objectid" "obj_debrie"
			instance_create_layer(x + 0, y + 0, "Instances", obj_debrie);
		}
	}
}