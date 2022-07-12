/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EF74A6A
/// @DnDArgument : "var" "broken"
/// @DnDArgument : "value" "false"
if(broken == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25D3BCF8
	/// @DnDParent : 5EF74A6A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "broken"
	broken = true;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 76166BA5
	/// @DnDParent : 5EF74A6A
	/// @DnDArgument : "value" "obj_player1.depth - 10"
	/// @DnDArgument : "instvar" "9"
	depth = obj_player1.depth - 10;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2FDD8424
	/// @DnDParent : 5EF74A6A
	/// @DnDArgument : "imageind" "3"
	/// @DnDArgument : "spriteind" "spr_obstacle"
	/// @DnDSaveInfo : "spriteind" "spr_obstacle"
	sprite_index = spr_obstacle;
	image_index = 3;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 591DB7C0
	/// @DnDParent : 5EF74A6A
	instance_destroy();
}