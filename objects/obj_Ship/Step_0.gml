/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2BF52CD4
/// @DnDArgument : "margin" "sprite_width/2"
move_wrap(1, 1, sprite_width/2);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 40F1584A
var l40F1584A_0;
l40F1584A_0 = mouse_check_button(mb_left);
if (l40F1584A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5519E550
	/// @DnDParent : 40F1584A
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 65435512
		/// @DnDParent : 5519E550
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newbullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		var newbullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13FFEA96
		/// @DnDParent : 5519E550
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "newbullet.direction"
		newbullet.direction = image_angle;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D081557
		/// @DnDParent : 5519E550
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D4F9BC3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;