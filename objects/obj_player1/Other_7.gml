/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12B564AF
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_jump"
if(sprite_index == spr_jump)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5C96C668
	/// @DnDParent : 12B564AF
	/// @DnDArgument : "spriteind" "spr_air"
	sprite_index = spr_air;
	image_index = 0;
}