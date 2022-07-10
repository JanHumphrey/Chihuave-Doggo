/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3B8AF413
/// @DnDArgument : "speed" "-35"
/// @DnDArgument : "type" "2"
vspeed = -35;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 6489997C
gravity = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1D4B3B65
/// @DnDInput : 2
/// @DnDArgument : "var" "score_rescue"
/// @DnDArgument : "var_1" "score_height"
global.score_rescue = 0;
global.score_height = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 549D96B3
/// @DnDInput : 2
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "previous_x"
/// @DnDArgument : "var_1" "blowed"
previous_x = x;
blowed = false;