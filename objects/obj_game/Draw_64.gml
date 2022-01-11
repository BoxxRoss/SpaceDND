/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 53658BC1
/// @DnDArgument : "expr" "room"
var l53658BC1_0 = room;
switch(l53658BC1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6F24105E
	/// @DnDParent : 53658BC1
	/// @DnDArgument : "const" "RM_GAME"
	case RM_GAME:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 33D5FB3E
		/// @DnDParent : 6F24105E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 43D677E4
		/// @DnDParent : 6F24105E
		/// @DnDArgument : "x" "25"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "Spr_livesship"
		/// @DnDSaveInfo : "sprite" "Spr_livesship"
		var l43D677E4_0 = sprite_get_width(Spr_livesship);
		var l43D677E4_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l43D677E4_2 = __dnd_lives; l43D677E4_2 > 0; --l43D677E4_2) {
			draw_sprite(Spr_livesship, 0, 25 + l43D677E4_1, y + 60);
			l43D677E4_1 += l43D677E4_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 37B78BDB
	/// @DnDParent : 53658BC1
	/// @DnDArgument : "const" "RM_START"
	case RM_START:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 00A82A59
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1511F89E
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "color" "$FF4FF6FF"
		draw_set_colour($FF4FF6FF & $ffffff);
		var l1511F89E_0=($FF4FF6FF >> 24);
		draw_set_alpha(l1511F89E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 57D74C42
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""SPACE ROCKS ""
		draw_text_transformed(175, 0, string("SPACE ROCKS ") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 087C49BA
		/// @DnDParent : 37B78BDB
		draw_set_colour($FFFFFFFF & $ffffff);
		var l087C49BA_0=($FFFFFFFF >> 24);
		draw_set_alpha(l087C49BA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1E0BFD5F
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "caption" ""score 1,000 points to win""
		draw_text(175, 100, string("score 1,000 points to win") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 05947D67
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "caption" ""move with up/left/right/down keys""
		draw_text(175, 150, string("move with up/left/right/down keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 70246F4A
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Left click to shoot""
		draw_text(175, 200, string("Left click to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 45333E4A
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Press enter to start.""
		draw_text(175, 250, string("Press enter to start.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 274559D7
		/// @DnDParent : 37B78BDB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1A4726D8
	/// @DnDParent : 53658BC1
	/// @DnDArgument : "const" "RM_WIN"
	case RM_WIN:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 709A5DFE
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0F4BBF39
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "color" "$FF00FF2E"
		draw_set_colour($FF00FF2E & $ffffff);
		var l0F4BBF39_0=($FF00FF2E >> 24);
		draw_set_alpha(l0F4BBF39_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 43FF7A1B
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(175, 0, string("YOU WIN ") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 32D72275
		/// @DnDParent : 1A4726D8
		draw_set_colour($FFFFFFFF & $ffffff);
		var l32D72275_0=($FFFFFFFF >> 24);
		draw_set_alpha(l32D72275_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 575692C0
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "caption" ""Final Score:""
		draw_text(175, 100, string("Final Score:") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1A5AF8E6
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Press enter to restart.""
		draw_text(175, 250, string("Press enter to restart.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4211305A
		/// @DnDParent : 1A4726D8
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 50E1A7C6
	/// @DnDParent : 53658BC1
	/// @DnDArgument : "const" "RM_GAMEOVER"
	case RM_GAMEOVER:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F955264
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 058961AC
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l058961AC_0=($FF0000FF >> 24);
		draw_set_alpha(l058961AC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 66B87CC9
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(175, 0, string("YOU LOSE ") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2C564957
		/// @DnDParent : 50E1A7C6
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2C564957_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2C564957_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2F13B097
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "caption" ""Final Score:""
		draw_text(175, 100, string("Final Score:") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 276ABB5D
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "x" "175"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Press enter to restart.""
		draw_text(175, 250, string("Press enter to restart.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 62854EC3
		/// @DnDParent : 50E1A7C6
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}