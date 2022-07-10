/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D309A60
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "room_width / 2"
if(mouse_x <= room_width / 2)
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6F5D0C8E
	/// @DnDParent : 1D309A60
	event_user(0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AD25CFE
else
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 473469ED
	/// @DnDParent : 7AD25CFE
	/// @DnDArgument : "event" "1"
	event_user(1);
}