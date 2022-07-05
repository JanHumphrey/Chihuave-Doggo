/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 69A4AEDC
/// @DnDArgument : "speed" "-15"
/// @DnDArgument : "type" "2"
vspeed = -15;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 0AC44918
gravity = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7F5AC0BD
/// @DnDArgument : "soundid" "snd_player_defeat"
/// @DnDSaveInfo : "soundid" "snd_player_defeat"
audio_play_sound(snd_player_defeat, 0, 0);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2B6359F7
/// @DnDArgument : "soundid" "snd_game_music"
/// @DnDSaveInfo : "soundid" "snd_game_music"
audio_stop_sound(snd_game_music);