/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 459418C8
/// @DnDArgument : "x" "175"
/// @DnDArgument : "y" "640+down"
/// @DnDArgument : "sprite" "Textbox"
/// @DnDSaveInfo : "sprite" "Textbox"
draw_sprite(Textbox, 0, 175, 640+down);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47EE89BF
/// @DnDArgument : "var" "choicein"
/// @DnDArgument : "value" "1"
if(choicein == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 64CAA424
	/// @DnDParent : 47EE89BF
	/// @DnDArgument : "color" "$FFE5E5E5"
	draw_set_colour($FFE5E5E5 & $ffffff);
	var l64CAA424_0=($FFE5E5E5 >> 24);
	draw_set_alpha(l64CAA424_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3C740154
	/// @DnDParent : 47EE89BF
	/// @DnDArgument : "x" "219"
	/// @DnDArgument : "y" "650+down"
	/// @DnDArgument : "xscale" "1.1"
	/// @DnDArgument : "yscale" "1.1"
	/// @DnDArgument : "caption" ""Firing speed upgrade""
	draw_text_transformed(219, 650+down, string("Firing speed upgrade") + "", 1.1, 1.1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 76C0E4F3
	/// @DnDParent : 47EE89BF
	/// @DnDArgument : "color" "$FFB2B2B2"
	draw_set_colour($FFB2B2B2 & $ffffff);
	var l76C0E4F3_0=($FFB2B2B2 >> 24);
	draw_set_alpha(l76C0E4F3_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 710F9011
	/// @DnDParent : 47EE89BF
	/// @DnDArgument : "x" "230"
	/// @DnDArgument : "y" "695+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""Increases The firing speed ""
	draw_text_transformed(230, 695+down, string("Increases The firing speed ") + "", 0.8, 0.8, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 20046176
	/// @DnDParent : 47EE89BF
	/// @DnDArgument : "x" "245"
	/// @DnDArgument : "y" "740+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""of the ship by 10%""
	draw_text_transformed(245, 740+down, string("of the ship by 10%") + "", 0.8, 0.8, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 195EE7E9
/// @DnDArgument : "var" "choicein"
/// @DnDArgument : "value" "2"
if(choicein == 2)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1AA630D1
	/// @DnDParent : 195EE7E9
	/// @DnDArgument : "color" "$FFE5E5E5"
	draw_set_colour($FFE5E5E5 & $ffffff);
	var l1AA630D1_0=($FFE5E5E5 >> 24);
	draw_set_alpha(l1AA630D1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 74DCC4FD
	/// @DnDParent : 195EE7E9
	/// @DnDArgument : "x" "219"
	/// @DnDArgument : "y" "650+down"
	/// @DnDArgument : "xscale" "1.1"
	/// @DnDArgument : "yscale" "1.1"
	/// @DnDArgument : "caption" ""Thrusters Speed Upgrade""
	draw_text_transformed(219, 650+down, string("Thrusters Speed Upgrade") + "", 1.1, 1.1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3BED5429
	/// @DnDParent : 195EE7E9
	/// @DnDArgument : "color" "$FFB2B2B2"
	draw_set_colour($FFB2B2B2 & $ffffff);
	var l3BED5429_0=($FFB2B2B2 >> 24);
	draw_set_alpha(l3BED5429_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 72725AF4
	/// @DnDParent : 195EE7E9
	/// @DnDArgument : "x" "230"
	/// @DnDArgument : "y" "695+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""Increases the max speed""
	draw_text_transformed(230, 695+down, string("Increases the max speed") + "", 0.8, 0.8, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 69C4CC54
	/// @DnDParent : 195EE7E9
	/// @DnDArgument : "x" "245"
	/// @DnDArgument : "y" "740+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""of the ship by 10%""
	draw_text_transformed(245, 740+down, string("of the ship by 10%") + "", 0.8, 0.8, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 221E00D1
/// @DnDArgument : "var" "choicein"
/// @DnDArgument : "value" "3"
if(choicein == 3)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2A0641CF
	/// @DnDParent : 221E00D1
	/// @DnDArgument : "x" "219"
	/// @DnDArgument : "y" "650+down"
	/// @DnDArgument : "xscale" "1.1"
	/// @DnDArgument : "yscale" "1.1"
	/// @DnDArgument : "caption" ""Bullet Size Upgrade""
	draw_text_transformed(219, 650+down, string("Bullet Size Upgrade") + "", 1.1, 1.1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 337FCC76
	/// @DnDParent : 221E00D1
	/// @DnDArgument : "color" "$FFE5E5E5"
	draw_set_colour($FFE5E5E5 & $ffffff);
	var l337FCC76_0=($FFE5E5E5 >> 24);
	draw_set_alpha(l337FCC76_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 65E44E25
	/// @DnDParent : 221E00D1
	/// @DnDArgument : "color" "$FFB2B2B2"
	draw_set_colour($FFB2B2B2 & $ffffff);
	var l65E44E25_0=($FFB2B2B2 >> 24);
	draw_set_alpha(l65E44E25_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6CA20DEA
	/// @DnDParent : 221E00D1
	/// @DnDArgument : "x" "230"
	/// @DnDArgument : "y" "695+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""Increases the size""
	draw_text_transformed(230, 695+down, string("Increases the size") + "", 0.8, 0.8, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1B55B533
	/// @DnDParent : 221E00D1
	/// @DnDArgument : "x" "245"
	/// @DnDArgument : "y" "740+down"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""of the bullet by 10%""
	draw_text_transformed(245, 740+down, string("of the bullet by 10%") + "", 0.8, 0.8, 0);
}