/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2AF44092
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "defeated"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_player_defeated"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "obj_player_defeated"
var defeated = instance_create_layer(x + 0, y + 0, "Player", obj_player_defeated);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 58C54EDD
/// @DnDArgument : "var" "spr_defeated"
/// @DnDArgument : "value" "spr_player_defeated"
var spr_defeated = spr_player_defeated;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 72493417
/// @DnDApplyTo : defeated
/// @DnDArgument : "imageind" ""
/// @DnDArgument : "spriteind" "spr_defeated"
with(defeated) {
sprite_index = spr_defeated;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D95DBCF
instance_destroy();