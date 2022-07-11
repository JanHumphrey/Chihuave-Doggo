/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B2E8419
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 58825A56
	/// @DnDParent : 5B2E8419
	/// @DnDArgument : "spriteind" "spr_fall"
	sprite_index = spr_fall;
	image_index = 0;
}