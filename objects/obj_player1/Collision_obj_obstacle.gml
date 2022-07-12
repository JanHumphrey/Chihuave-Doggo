/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 60BDFCE2
/// @DnDArgument : "var" "room_now"
/// @DnDArgument : "var_temp" "1"
var room_now = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D1DEA0D
/// @DnDArgument : "var" "room_now"
/// @DnDArgument : "value" "rm_game_lvl2"
if(room_now == rm_game_lvl2)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4ADE4D5F
	/// @DnDParent : 7D1DEA0D
	/// @DnDArgument : "var" "fall_chance"
	/// @DnDArgument : "var_temp" "1"
	var fall_chance = (random_range(0, 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 720EBEA0
	/// @DnDParent : 7D1DEA0D
	/// @DnDArgument : "var" "fall_chance"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.15"
	if(fall_chance < 0.15)
	{
		/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5DB00C48
		/// @DnDParent : 720EBEA0
		/// @DnDArgument : "target" "current_sprite"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "instvar" "14"
		var current_sprite = sprite_index;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 535BEB75
		/// @DnDParent : 720EBEA0
		/// @DnDArgument : "var" "current_sprite"
		/// @DnDArgument : "value" "spr_fall"
		if(current_sprite == spr_fall)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 679C0888
			/// @DnDApplyTo : other
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "instvar" "6"
			with(other) {
			visible = false;
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 47A87359
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "fall"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_fall"
			/// @DnDSaveInfo : "objectid" "obj_fall"
			var fall = instance_create_layer(x + 0, y + 0, "Instances", obj_fall);
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 3B651D95
			/// @DnDApplyTo : fall
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "speed" "10"
			/// @DnDArgument : "type" "2"
			with(fall) vspeed = 10;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 46B4CBF7
			/// @DnDApplyTo : fall
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "imageind" "3"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			with(fall) {
			sprite_index = spr_obstacle;
			image_index = 3;
			}
		}
	}
}