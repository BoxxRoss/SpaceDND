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
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 3C92F81C
		/// @DnDParent : 6F24105E
		/// @DnDArgument : "x1" "20"
		/// @DnDArgument : "y1" "50"
		/// @DnDArgument : "x2" "5"
		/// @DnDArgument : "y2" "180"
		/// @DnDArgument : "direction" "3"
		/// @DnDArgument : "value" "health"
		/// @DnDArgument : "backcol" "$FFB3B3B3"
		/// @DnDArgument : "mincol" "$FFFFA065"
		/// @DnDArgument : "maxcol" "$FFFF6E2B"
		draw_healthbar(20, 50, 5, 180, health, $FFB3B3B3 & $FFFFFF, $FFFFA065 & $FFFFFF, $FFFF6E2B & $FFFFFF, 3, (($FFB3B3B3>>24) != 0), (($FFFFFFFF>>24) != 0));
	
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
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""SPACE ROCKS ""
		draw_text_transformed(300, 0, string("SPACE ROCKS ") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 087C49BA
		/// @DnDParent : 37B78BDB
		draw_set_colour($FFFFFFFF & $ffffff);
		var l087C49BA_0=($FFFFFFFF >> 24);
		draw_set_alpha(l087C49BA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1B94ED81
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""score 1,500 points to win""
		draw_text_transformed(300, 300, string("score 1,500 points to win") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 446E6D2C
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""move with up/left/right/down keys""
		draw_text_transformed(300, 100, string("move with up/left/right/down keys") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 655E221E
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""Left click to shoot""
		draw_text_transformed(300, 200, string("Left click to shoot") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1B9D34CA
		/// @DnDParent : 37B78BDB
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "450"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""Press enter to start.""
		draw_text_transformed(300, 450, string("Press enter to start.") + "", 2, 2, 0);
	
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
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(300, 0, string("YOU WIN ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 32D72275
		/// @DnDParent : 1A4726D8
		draw_set_colour($FFFFFFFF & $ffffff);
		var l32D72275_0=($FFFFFFFF >> 24);
		draw_set_alpha(l32D72275_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 296637AE
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "2.5"
		/// @DnDArgument : "yscale" "2.5"
		/// @DnDArgument : "caption" ""Final Score: 1500""
		draw_text_transformed(300, 100, string("Final Score: 1500") + "", 2.5, 2.5, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 545547F2
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "400"
		/// @DnDArgument : "xscale" "1.5"
		/// @DnDArgument : "yscale" "1.5"
		/// @DnDArgument : "caption" ""Press Space to enter Freeplay ""
		draw_text_transformed(300, 400, string("Press Space to enter Freeplay ") + "", 1.5, 1.5, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 50E2FBB8
		/// @DnDParent : 1A4726D8
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""Press enter to restart.""
		draw_text_transformed(300, 250, string("Press enter to restart.") + "", 2, 2, 0);
	
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
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(300, 0, string("YOU LOSE ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2C564957
		/// @DnDParent : 50E1A7C6
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2C564957_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2C564957_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 115B847B
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""Final Score: ""
		draw_text_transformed(300, 100, string("Final Score: ") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 22DDA7A1
		/// @DnDParent : 50E1A7C6
		/// @DnDArgument : "x" "300"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""Press enter to restart.""
		draw_text_transformed(300, 250, string("Press enter to restart.") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 62854EC3
		/// @DnDParent : 50E1A7C6
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}