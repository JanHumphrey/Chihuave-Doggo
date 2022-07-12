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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36531B3D
		/// @DnDParent : 10430CD2
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 11C98B3C
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6FFD8E85
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1E774370
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 366EF450
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4CD73136
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 342FC72C
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "expr" "chance"
			var l342FC72C_0 = chance;
			switch(l342FC72C_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 54358BD6
				/// @DnDParent : 342FC72C
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 161EF15E
					/// @DnDParent : 54358BD6
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 14790915
				/// @DnDParent : 342FC72C
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 49749A0B
					/// @DnDParent : 14790915
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 76B6ECF2
					/// @DnDParent : 14790915
					/// @DnDArgument : "imageind" "1"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 1;
					break;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D486EC1
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl2"
	case rm_game_lvl2:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D055C8D
		/// @DnDParent : 7D486EC1
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 37877A29
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5AF69DEC
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "type" "2"
			vspeed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 488DF877
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "imageind" "2"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 2;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DDBF6F0
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "var" "room_now"
			/// @DnDArgument : "value" "rm_game_lvl2"
			if(room_now == rm_game_lvl2)
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 763B67CB
				/// @DnDParent : 0DDBF6F0
				/// @DnDArgument : "x" "new_x"
				/// @DnDArgument : "y" "-100"
				x = new_x;
				y = -100;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A6795BA
			/// @DnDParent : 4D055C8D
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 14D2EC45
				/// @DnDParent : 0A6795BA
				/// @DnDArgument : "x" "new_x"
				/// @DnDArgument : "y" "-200"
				x = new_x;
				y = -200;
			}
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4485C8F6
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D53AE25
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1C276EBD
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 77A12A2C
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "expr" "chance"
			var l77A12A2C_0 = chance;
			switch(l77A12A2C_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 0DF0F0D4
				/// @DnDParent : 77A12A2C
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 12099AF0
					/// @DnDParent : 0DF0F0D4
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1CB3D1D5
					/// @DnDParent : 0DF0F0D4
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 2BD95734
				/// @DnDParent : 77A12A2C
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 24AF2427
					/// @DnDParent : 2BD95734
					/// @DnDArgument : "target" "current_frame"
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "instvar" "15"
					var current_frame = image_index;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6EE21E7E
					/// @DnDParent : 2BD95734
					/// @DnDArgument : "var" "current_frame"
					/// @DnDArgument : "value" "2"
					if(current_frame == 2)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 4AB222B1
						/// @DnDParent : 6EE21E7E
						/// @DnDArgument : "imageind" "2"
						/// @DnDArgument : "spriteind" "spr_obstacle"
						/// @DnDSaveInfo : "spriteind" "spr_obstacle"
						sprite_index = spr_obstacle;
						image_index = 2;
					}
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 4A1D1B0A
				/// @DnDParent : 77A12A2C
				/// @DnDArgument : "const" "2"
				case 2:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 06BAC656
					/// @DnDParent : 4A1D1B0A
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4516FA6D
					/// @DnDParent : 4A1D1B0A
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 763B727F
					/// @DnDParent : 4A1D1B0A
					/// @DnDArgument : "imageind" "2"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 2;
					break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 00CB1A36
		/// @DnDParent : 7D486EC1
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 7580BFD2
			/// @DnDParent : 00CB1A36
			alarm_set(0, 30);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B1CC662
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl3"
	case rm_game_lvl3:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BC3582A
		/// @DnDParent : 0B1CC662
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3AA5DEF6
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7ACFB40D
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 43C88F49
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67D8D5B8
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1B21927C
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 77F8D834
			/// @DnDParent : 0BC3582A
			/// @DnDArgument : "expr" "chance"
			var l77F8D834_0 = chance;
			switch(l77F8D834_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 44EFC9BE
				/// @DnDParent : 77F8D834
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 677CA24E
					/// @DnDParent : 44EFC9BE
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5560F140
					/// @DnDParent : 44EFC9BE
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 0537A853
				/// @DnDParent : 77F8D834
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 0CF63577
					/// @DnDParent : 0537A853
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 738AC4C3
					/// @DnDParent : 0537A853
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 3D096106
					/// @DnDParent : 0537A853
					/// @DnDArgument : "imageind" "3"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 3;
					break;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 778255BA
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl4"
	case rm_game_lvl4:
	
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 55C97E1A
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl5"
	case rm_game_lvl5:
	
		break;
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