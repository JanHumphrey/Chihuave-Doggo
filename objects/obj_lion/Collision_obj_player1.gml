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

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 050195AC
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "spriteind" "spr_lion_star"
	/// @DnDSaveInfo : "spriteind" "spr_lion_star"
	sprite_index = spr_lion_star;
	image_index = 0;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 445A7ED8
	/// @DnDParent : 3BD70794
	/// @DnDArgument : "soundid" "snd_cat_rescue"
	/// @DnDSaveInfo : "soundid" "snd_cat_rescue"
	audio_play_sound(snd_cat_rescue, 0, 0);
}