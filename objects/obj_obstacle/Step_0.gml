/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 77D458C6
/// @DnDArgument : "var" "room_now"
/// @DnDArgument : "var_temp" "1"
var room_now = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 326BDF62
/// @DnDArgument : "expr" "room_now"
var l326BDF62_0 = room_now;
switch(l326BDF62_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 10430CD2
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl1"
	case rm_game_lvl1:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 46FE57FF
		/// @DnDParent : 10430CD2
		/// @DnDArgument : "spriteind" "spr_obstacle"
		/// @DnDSaveInfo : "spriteind" "spr_obstacle"
		sprite_index = spr_obstacle;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D486EC1
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl2"
	case rm_game_lvl2:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1887B468
		/// @DnDParent : 7D486EC1
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_obstacle"
		/// @DnDSaveInfo : "spriteind" "spr_obstacle"
		sprite_index = spr_obstacle;
		image_index = 3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B1CC662
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl3"
	case rm_game_lvl3:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6EB92DD3
		/// @DnDParent : 0B1CC662
		/// @DnDArgument : "imageind" "4"
		/// @DnDArgument : "spriteind" "spr_obstacle"
		/// @DnDSaveInfo : "spriteind" "spr_obstacle"
		sprite_index = spr_obstacle;
		image_index = 4;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 778255BA
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl4"
	case rm_game_lvl4:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2E6347FE
		/// @DnDParent : 778255BA
		/// @DnDArgument : "imageind" "5"
		/// @DnDArgument : "spriteind" "spr_obstacle"
		/// @DnDSaveInfo : "spriteind" "spr_obstacle"
		sprite_index = spr_obstacle;
		image_index = 5;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 55C97E1A
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl5"
	case rm_game_lvl5:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0576F9A6
		/// @DnDParent : 55C97E1A
		/// @DnDArgument : "imageind" "6"
		/// @DnDArgument : "spriteind" "spr_obstacle"
		/// @DnDSaveInfo : "spriteind" "spr_obstacle"
		sprite_index = spr_obstacle;
		image_index = 6;
		break;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D2E1CE5
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 360"
if(y > room_height + 360)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 48C7AD4C
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width - 200"
	var new_x = floor(random_range(200, room_width - 200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5F40EA8A
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-200"
	x = new_x;
	y = -200;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2F17395C
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "var" "moving_chance"
	moving_chance = (random_range(0, 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71DB9858
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "expr" "moving_chance < 0.5"
	/// @DnDArgument : "var" "moving"
	moving = moving_chance < 0.5;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 32439F4A
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "3"
	var chance = floor(random_range(0, 3 + 1));

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 08464001
	/// @DnDParent : 4D2E1CE5
	/// @DnDArgument : "expr" "chance"
	var l08464001_0 = chance;
	switch(l08464001_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 34114EAD
		/// @DnDParent : 08464001
		case 0:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 311C8805
			/// @DnDParent : 34114EAD
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_cat"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_cat"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4EBCCE45
			/// @DnDParent : 34114EAD
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "moving"
			moving = false;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4C345DC0
		/// @DnDParent : 08464001
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 08C8C5E8
			/// @DnDParent : 4C345DC0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_fire"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_fire"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 580B8322
			/// @DnDParent : 4C345DC0
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "moving"
			moving = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5A0F1111
			/// @DnDParent : 4C345DC0
			/// @DnDArgument : "imageind" "3"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 3;
			break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 667D0C65
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "true"
if(moving == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78F5229D
	/// @DnDParent : 667D0C65
	/// @DnDArgument : "var" "left"
	/// @DnDArgument : "value" "true"
	if(left == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 251B2304
		/// @DnDParent : 78F5229D
		/// @DnDArgument : "value" "-2"
		/// @DnDArgument : "value_relative" "1"
		x += -2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67F1BEAC
		/// @DnDParent : 78F5229D
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "200"
		if(x <= 200)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5526F04F
			/// @DnDParent : 67F1BEAC
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "left"
			left = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 60C46524
	/// @DnDParent : 667D0C65
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 551CE940
		/// @DnDParent : 60C46524
		/// @DnDArgument : "value" "2"
		/// @DnDArgument : "value_relative" "1"
		x += 2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26BC08AE
		/// @DnDParent : 60C46524
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_width - 200"
		if(x > room_width - 200)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01273813
			/// @DnDParent : 26BC08AE
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "left"
			left = true;
		}
	}
}