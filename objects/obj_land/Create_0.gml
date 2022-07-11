/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 731D10D0
/// @DnDArgument : "var" "spr_index"
spr_index = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1F56F0BD
/// @DnDArgument : "expr" "spr_index"
var l1F56F0BD_0 = spr_index;
switch(l1F56F0BD_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5D1A3672
	/// @DnDParent : 1F56F0BD
	/// @DnDArgument : "const" "rm_game_lvl1"
	case rm_game_lvl1:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7E5FA10A
		/// @DnDParent : 5D1A3672
		/// @DnDArgument : "spriteind" "spr_land"
		/// @DnDSaveInfo : "spriteind" "spr_land"
		sprite_index = spr_land;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 20922182
	/// @DnDParent : 1F56F0BD
	/// @DnDArgument : "const" "rm_game_lvl2"
	case rm_game_lvl2:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 69745755
		/// @DnDParent : 20922182
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_land"
		/// @DnDSaveInfo : "spriteind" "spr_land"
		sprite_index = spr_land;
		image_index = 1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7A8A5F91
	/// @DnDParent : 1F56F0BD
	/// @DnDArgument : "const" "rm_game_lvl3"
	case rm_game_lvl3:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 75707343
		/// @DnDParent : 7A8A5F91
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "spr_land"
		/// @DnDSaveInfo : "spriteind" "spr_land"
		sprite_index = spr_land;
		image_index = 2;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 79BF56AB
	/// @DnDParent : 1F56F0BD
	/// @DnDArgument : "const" "rm_game_lvl4"
	case rm_game_lvl4:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2805B1E2
		/// @DnDParent : 79BF56AB
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_land"
		/// @DnDSaveInfo : "spriteind" "spr_land"
		sprite_index = spr_land;
		image_index = 3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7EFCF123
	/// @DnDParent : 1F56F0BD
	/// @DnDArgument : "const" "rm_game_lvl5"
	case rm_game_lvl5:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0C3566C8
		/// @DnDParent : 7EFCF123
		/// @DnDArgument : "imageind" "4"
		/// @DnDArgument : "spriteind" "spr_land"
		/// @DnDSaveInfo : "spriteind" "spr_land"
		sprite_index = spr_land;
		image_index = 4;
		break;
}