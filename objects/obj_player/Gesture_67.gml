/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D309A60
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "previous_x"
if(mouse_x > previous_x)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3529D9FB
	/// @DnDParent : 1D309A60
	/// @DnDArgument : "var" "blowed"
	/// @DnDArgument : "value" "false"
	if(blowed == false)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6F5D0C8E
		/// @DnDParent : 3529D9FB
		/// @DnDArgument : "event" "2"
		event_user(2);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 658B4B45
		/// @DnDParent : 3529D9FB
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "blowed"
		blowed = true;
	}
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3302E627
/// @DnDInput : 2
/// @DnDArgument : "msg" ""current x: "+string(mouse_x)"
/// @DnDArgument : "msg_1" ""previous x: "+string(previous_x)"
show_debug_message(string("current x: "+string(mouse_x)) + @"
" + string("previous x: "+string(previous_x)));