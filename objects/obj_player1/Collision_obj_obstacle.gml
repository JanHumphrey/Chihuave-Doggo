/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 60BDFCE2
/// @DnDArgument : "var" "room_now"
/// @DnDArgument : "var_temp" "1"
var room_now = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A2535B0
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 218DC889
	/// @DnDParent : 1A2535B0
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 464BAC79
	/// @DnDParent : 1A2535B0
	/// @DnDArgument : "spriteind" "spr_jump"
	sprite_index = spr_jump;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68AC1A6B
	/// @DnDParent : 1A2535B0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "obj_jump_effect"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_jump_effect"
	instance_create_layer(x + 0, other.y, "Player", obj_jump_effect);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3219D6B5
	/// @DnDParent : 1A2535B0
	/// @DnDArgument : "soundid" "snd_player_jump"
	/// @DnDSaveInfo : "soundid" "snd_player_jump"
	audio_play_sound(snd_player_jump, 0, 0);
}

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
			/// @DnDHash : 610AEC75
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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DCE88F5
	/// @DnDParent : 7D1DEA0D
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "2"
	if(vspeed > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1CAE3A89
		/// @DnDParent : 5DCE88F5
		/// @DnDArgument : "speed" "-35"
		/// @DnDArgument : "type" "2"
		vspeed = -35;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 71F33748
		/// @DnDParent : 5DCE88F5
		/// @DnDArgument : "spriteind" "spr_jump"
		sprite_index = spr_jump;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6F7D0F1A
		/// @DnDParent : 5DCE88F5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "objectid" "obj_jump_effect"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "obj_jump_effect"
		instance_create_layer(x + 0, other.y, "Player", obj_jump_effect);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B9AB533
		/// @DnDParent : 5DCE88F5
		/// @DnDArgument : "soundid" "snd_player_jump"
		/// @DnDSaveInfo : "soundid" "snd_player_jump"
		audio_play_sound(snd_player_jump, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 565F8449
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BC24936
	/// @DnDParent : 565F8449
	/// @DnDArgument : "var" "room_now"
	/// @DnDArgument : "value" "rm_game_lvl5"
	if(room_now == rm_game_lvl5)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 00EB0C65
		/// @DnDParent : 0BC24936
		/// @DnDArgument : "var" "fall_chance"
		/// @DnDArgument : "var_temp" "1"
		var fall_chance = (random_range(0, 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52C7AE22
		/// @DnDParent : 0BC24936
		/// @DnDArgument : "var" "fall_chance"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "0.15"
		if(fall_chance < 0.15)
		{
			/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 50768B94
			/// @DnDParent : 52C7AE22
			/// @DnDArgument : "target" "current_sprite"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "instvar" "14"
			var current_sprite = sprite_index;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FB8334A
			/// @DnDParent : 52C7AE22
			/// @DnDArgument : "var" "current_sprite"
			/// @DnDArgument : "value" "spr_fall"
			if(current_sprite == spr_fall)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 007C5B56
				/// @DnDApplyTo : other
				/// @DnDParent : 0FB8334A
				/// @DnDArgument : "value" "false"
				/// @DnDArgument : "instvar" "6"
				with(other) {
				visible = false;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5D91CAB9
				/// @DnDParent : 0FB8334A
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "fall"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_fall"
				/// @DnDSaveInfo : "objectid" "obj_fall"
				var fall = instance_create_layer(x + 0, y + 0, "Instances", obj_fall);
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1F127CB3
				/// @DnDApplyTo : fall
				/// @DnDParent : 0FB8334A
				/// @DnDArgument : "speed" "10"
				/// @DnDArgument : "speed_relative" "1"
				/// @DnDArgument : "type" "2"
				with(fall) vspeed += 10;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 375F5162
				/// @DnDApplyTo : fall
				/// @DnDParent : 0FB8334A
				/// @DnDArgument : "imageind" "7"
				/// @DnDArgument : "spriteind" "spr_obstacle"
				/// @DnDSaveInfo : "spriteind" "spr_obstacle"
				with(fall) {
				sprite_index = spr_obstacle;
				image_index = 7;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D5A57B3
		/// @DnDParent : 0BC24936
		/// @DnDArgument : "var" "vspeed"
		/// @DnDArgument : "op" "2"
		if(vspeed > 0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 16176298
			/// @DnDParent : 4D5A57B3
			/// @DnDArgument : "speed" "-35"
			/// @DnDArgument : "type" "2"
			vspeed = -35;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1580CC04
			/// @DnDParent : 4D5A57B3
			/// @DnDArgument : "spriteind" "spr_jump"
			sprite_index = spr_jump;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2177A680
			/// @DnDParent : 4D5A57B3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "other.y"
			/// @DnDArgument : "objectid" "obj_jump_effect"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "obj_jump_effect"
			instance_create_layer(x + 0, other.y, "Player", obj_jump_effect);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 28F6639B
			/// @DnDParent : 4D5A57B3
			/// @DnDArgument : "soundid" "snd_player_jump"
			/// @DnDSaveInfo : "soundid" "snd_player_jump"
			audio_play_sound(snd_player_jump, 0, 0);
		}
	}
}