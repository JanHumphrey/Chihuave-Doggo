/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 144515C6
/// @DnDArgument : "var" "y"
/// @DnDArgument : "value" "room_height + 350"
if(y == room_height + 350)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35D9AFC8
	/// @DnDParent : 144515C6
	instance_destroy();
}