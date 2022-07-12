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
	/// @DnDArgument : "value" "0.10"
	if(fall_chance < 0.10)
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
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 3B651D95
			/// @DnDApplyTo : other
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "speed" "10"
			/// @DnDArgument : "type" "2"
			with(other) vspeed = 10;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 46B4CBF7
			/// @DnDApplyTo : other
			/// @DnDParent : 535BEB75
			/// @DnDArgument : "imageind" "3"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			with(other) {
			sprite_index = spr_obstacle;
			image_index = 3;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D61158D
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 39F70C09
	/// @DnDParent : 2D61158D
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 00866A77
	/// @DnDParent : 2D61158D
	/// @DnDArgument : "spriteind" "spr_jump"
	sprite_index = spr_jump;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 182E3843
	/// @DnDParent : 2D61158D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "obj_jump_effect"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_jump_effect"
	instance_create_layer(x + 0, other.y, "Player", obj_jump_effect);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 43A6C11A
	/// @DnDParent : 2D61158D
	/// @DnDArgument : "soundid" "snd_player_jump"
	/// @DnDSaveInfo : "soundid" "snd_player_jump"
	audio_play_sound(snd_player_jump, 0, 0);
}