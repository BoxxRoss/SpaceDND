/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7D324EC0

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A4A509D
/// @DnDInput : 3
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_2" "randomize()"
/// @DnDArgument : "var" "health"
/// @DnDArgument : "var_1" "ext"
/// @DnDArgument : "var_2" "rando"
health = 100;
ext = 0;
rando = randomize();

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 668BB616
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5867BE54
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);