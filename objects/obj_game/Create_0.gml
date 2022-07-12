/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 7F38A6D0
/// @DnDArgument : "var" "particle_system"
/// @DnDArgument : "layer" ""Effects""
particle_system = part_system_create_layer("Effects", 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 53EEB284
/// @DnDArgument : "var" "fire"
/// @DnDArgument : "blend" "1"
fire = part_type_create();
part_type_blend(fire, true);

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 06E0AA9D
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "sprite" "spr_fire_particle"
/// @DnDSaveInfo : "sprite" "spr_fire_particle"
part_type_sprite(fire, spr_fire_particle, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 14CD79FB
/// @DnDArgument : "typ" "fire"
/// @DnDArgument : "minlife" "10"
/// @DnDArgument : "maxlife" "15"
part_type_life(fire, 10, 15);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 2D454466
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "minspeed" "2"
/// @DnDArgument : "maxspeed" "4"
/// @DnDArgument : "incr" "-0.01"
part_type_speed(fire, 2, 4, -0.01, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 68D04931
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "incr" "1"
part_type_direction(fire, 0, 360, 1, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 4C35210F
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "minsize" "0.7"
/// @DnDArgument : "maxsize" "1.2"
/// @DnDArgument : "sizeincr" "0.04"
part_type_size(fire, 0.7, 1.2, 0.04, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 75FE1203
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "middle" "0.8"
/// @DnDArgument : "end" "0"
part_type_alpha3(fire, 1, 0.8, 0);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 25F2AF3B
audio_stop_all();

/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 634ECF93
/// @DnDArgument : "var" "room_now"
/// @DnDArgument : "var_temp" "1"
var room_now = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 278E4523
/// @DnDArgument : "expr" "room_now"
var l278E4523_0 = room_now;
switch(l278E4523_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7462B0CB
	/// @DnDParent : 278E4523
	/// @DnDArgument : "const" "rm_game_lvl1"
	case rm_game_lvl1:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2486B555
		/// @DnDParent : 7462B0CB
		/// @DnDArgument : "soundid" "snd_game_music"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_game_music"
		audio_play_sound(snd_game_music, 0, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 096FDEB1
	/// @DnDParent : 278E4523
	/// @DnDArgument : "const" "rm_game_lvl2"
	case rm_game_lvl2:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7902D8D0
		/// @DnDParent : 096FDEB1
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "soundid" "snd_game_music2"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_game_music2"
		audio_play_sound(snd_game_music2, 0, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14C46049
	/// @DnDParent : 278E4523
	/// @DnDArgument : "const" "rm_game_lvl3"
	case rm_game_lvl3:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 46A91E6D
		/// @DnDParent : 14C46049
		/// @DnDArgument : "soundid" "snd_game_music1"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_game_music1"
		audio_play_sound(snd_game_music1, 0, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3B7941F8
	/// @DnDParent : 278E4523
	/// @DnDArgument : "const" "rm_game_lvl4"
	case rm_game_lvl4:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6A8EEB88
		/// @DnDParent : 3B7941F8
		/// @DnDArgument : "soundid" "snd_game_music4"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_game_music4"
		audio_play_sound(snd_game_music4, 0, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 016D8E07
	/// @DnDParent : 278E4523
	/// @DnDArgument : "const" "rm_game_lvl5"
	case rm_game_lvl5:
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 562EFBD2
		/// @DnDParent : 016D8E07
		/// @DnDArgument : "soundid" "snd_game_music3"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_game_music3"
		audio_play_sound(snd_game_music3, 0, 1);
		break;
}

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 583EA75B
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_transition_end"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "sequenceid" "seq_transition_end"
layer_sequence_create("Transition", 0, 0, seq_transition_end);