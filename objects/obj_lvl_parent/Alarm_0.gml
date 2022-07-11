/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 70B58073
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3371A395
/// @DnDArgument : "msg" ""room: "+string(goto_room_id)"
show_debug_message(string("room: "+string(goto_room_id)));

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 434AD923
/// @DnDArgument : "room" "goto_room_id"
room_goto(goto_room_id);