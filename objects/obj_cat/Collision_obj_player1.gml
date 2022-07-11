/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BD70794
/// @DnDArgument : "var" "getstar"
/// @DnDArgument : "value" "false"
if(getstar == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 130D0D0A
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "getstar"
	getstar = true;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 32A8BB08
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "score_rescue"
	global.score_rescue += 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2DE0883B
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "speed" "-18"
	/// @DnDArgument : "type" "2"
	vspeed = -18;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 52CFA647
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "force" "0.5"
	gravity = 0.5;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 284C0EBE
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "value" "obj_player1.depth - 10"
	/// @DnDArgument : "instvar" "9"
	depth = obj_player1.depth - 10;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 558DF753
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "expr" "sprite_index"
	var l558DF753_0 = sprite_index;
	switch(l558DF753_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 05DF8BA4
		/// @DnDParent : 558DF753
		/// @DnDArgument : "const" "spr_cat_1"
		case spr_cat_1:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5B9A7504
			/// @DnDParent : 05DF8BA4
			/// @DnDArgument : "spriteind" "spr_cat_star1"
			/// @DnDSaveInfo : "spriteind" "spr_cat_star1"
			sprite_index = spr_cat_star1;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 79774243
		/// @DnDParent : 558DF753
		/// @DnDArgument : "const" "spr_cat_2"
		case spr_cat_2:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0D9001EA
			/// @DnDParent : 79774243
			/// @DnDArgument : "spriteind" "spr_cat_star2"
			/// @DnDSaveInfo : "spriteind" "spr_cat_star2"
			sprite_index = spr_cat_star2;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5D76BAF3
		/// @DnDParent : 558DF753
		/// @DnDArgument : "const" "spr_cat_3"
		case spr_cat_3:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1B655E1A
			/// @DnDParent : 5D76BAF3
			/// @DnDArgument : "spriteind" "spr_cat_star3"
			/// @DnDSaveInfo : "spriteind" "spr_cat_star3"
			sprite_index = spr_cat_star3;
			image_index = 0;
			break;
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 445A7ED8
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "soundid" "snd_cat_rescue"
	/// @DnDSaveInfo : "soundid" "snd_cat_rescue"
	audio_play_sound(snd_cat_rescue, 0, 0);
}