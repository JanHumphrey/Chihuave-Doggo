/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0A8E05E7
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5304FA4F
/// @DnDArgument : "steps" "20"
alarm_set(0, 20);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 51BB7976
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_transition_end"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "sequenceid" "seq_transition_end"
layer_sequence_create("Transition", 0, 0, seq_transition_end);