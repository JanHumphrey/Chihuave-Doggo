/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 76B01C31
/// @DnDArgument : "output" "selected"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "character_selected"
var selected = global.character_selected;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18A760EF
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "object_name"
if(!(selected == object_name))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AF51A27
	/// @DnDParent : 18A760EF
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3318B832
	/// @DnDParent : 18A760EF
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7106C88F
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3D796003
	/// @DnDParent : 7106C88F
	/// @DnDArgument : "spriteind" "spr_air"
	sprite_index = spr_air;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3B8AF413
	/// @DnDParent : 7106C88F
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 6489997C
	/// @DnDParent : 7106C88F
	gravity = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1D4B3B65
	/// @DnDInput : 2
	/// @DnDParent : 7106C88F
	/// @DnDArgument : "var" "score_rescue"
	/// @DnDArgument : "var_1" "score_height"
	global.score_rescue = 0;
	global.score_height = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 549D96B3
	/// @DnDInput : 2
	/// @DnDParent : 7106C88F
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "previous_x"
	/// @DnDArgument : "var_1" "blowed"
	previous_x = x;
	blowed = false;
}