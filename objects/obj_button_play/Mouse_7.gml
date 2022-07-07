/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5B2C4250
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5EDDFA4B
/// @DnDArgument : "steps" "20"
alarm_set(0, 20);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 6976D829
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_transition_start"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "sequenceid" "seq_transition_start"
layer_sequence_create("Transition", 0, 0, seq_transition_start);