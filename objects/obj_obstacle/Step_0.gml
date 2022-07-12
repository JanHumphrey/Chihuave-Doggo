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
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0ACE7485
			/// @DnDParent : 36531B3D
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 0;
		
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
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 423354B8
					/// @DnDParent : 54358BD6
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
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
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 558F0771
					/// @DnDParent : 14790915
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
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
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 488DF877
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "imageind" "2"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 2;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 4A7A31F4
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "type" "2"
			vspeed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7C2730F2
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "value" "true"
			/// @DnDArgument : "instvar" "6"
			visible = true;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 14D2EC45
			/// @DnDParent : 4D055C8D
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
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
					/// @DnDArgument : "imageind" "9"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 9;
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
		/// @DnDHash : 00455BB0
		/// @DnDParent : 0B1CC662
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 360EB08A
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 21057150
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4A354747
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "imageind" "4"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 4;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7CD89894
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12045B78
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 488D28C3
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 2CAD6775
			/// @DnDParent : 00455BB0
			/// @DnDArgument : "expr" "chance"
			var l2CAD6775_0 = chance;
			switch(l2CAD6775_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 442EEEB9
				/// @DnDParent : 2CAD6775
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 71266838
					/// @DnDParent : 442EEEB9
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0E05B378
					/// @DnDParent : 442EEEB9
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 14996531
				/// @DnDParent : 2CAD6775
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 1F7C4C43
					/// @DnDParent : 14996531
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 70F23510
					/// @DnDParent : 14996531
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 6968D89A
					/// @DnDParent : 14996531
					/// @DnDArgument : "imageind" "4"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 4;
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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C94BBE3
		/// @DnDParent : 778255BA
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 72BB8E66
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7D027131
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 23C119E6
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "imageind" "5"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 50B8EC1C
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21B0A94F
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 63102522
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 2606D3EF
			/// @DnDParent : 1C94BBE3
			/// @DnDArgument : "expr" "chance"
			var l2606D3EF_0 = chance;
			switch(l2606D3EF_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 54F1D64E
				/// @DnDParent : 2606D3EF
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5056A8B4
					/// @DnDParent : 54F1D64E
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 08D6D254
					/// @DnDParent : 54F1D64E
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 6671C5AD
				/// @DnDParent : 2606D3EF
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 082CF46F
					/// @DnDParent : 6671C5AD
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1CC86549
					/// @DnDParent : 6671C5AD
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 69FAC97E
					/// @DnDParent : 6671C5AD
					/// @DnDArgument : "imageind" "10"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 10;
					break;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 55C97E1A
	/// @DnDParent : 326BDF62
	/// @DnDArgument : "const" "rm_game_lvl5"
	case rm_game_lvl5:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F9BF9C3
		/// @DnDParent : 55C97E1A
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_height + 360"
		if(y > room_height + 360)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 763D21B5
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "var" "new_x"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "200"
			/// @DnDArgument : "max" "room_width - 200"
			var new_x = floor(random_range(200, room_width - 200 + 1));
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7D3288BF
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "imageind" "6"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 6;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 0788698A
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "type" "2"
			vspeed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3FEC4DB4
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "value" "true"
			/// @DnDArgument : "instvar" "6"
			visible = true;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6EBD6E83
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "x" "new_x"
			/// @DnDArgument : "y" "-200"
			x = new_x;
			y = -200;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 14066959
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "var" "moving_chance"
			moving_chance = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EB546AB
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "expr" "moving_chance < 0.5"
			/// @DnDArgument : "var" "moving"
			moving = moving_chance < 0.5;
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7BD08721
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "3"
			var chance = floor(random_range(0, 3 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 2D8200B0
			/// @DnDParent : 3F9BF9C3
			/// @DnDArgument : "expr" "chance"
			var l2D8200B0_0 = chance;
			switch(l2D8200B0_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 6E3CB444
				/// @DnDParent : 2D8200B0
				case 0:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 21EF8072
					/// @DnDParent : 6E3CB444
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_cat"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_cat"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2686FFBE
					/// @DnDParent : 6E3CB444
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3500F360
				/// @DnDParent : 2D8200B0
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 7B1C9EC2
					/// @DnDParent : 3500F360
					/// @DnDArgument : "target" "current_frame"
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "instvar" "15"
					var current_frame = image_index;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5F7F679B
					/// @DnDParent : 3500F360
					/// @DnDArgument : "var" "current_frame"
					/// @DnDArgument : "value" "2"
					if(current_frame == 2)
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 4FE8FA6D
						/// @DnDParent : 5F7F679B
						/// @DnDArgument : "imageind" "6"
						/// @DnDArgument : "spriteind" "spr_obstacle"
						/// @DnDSaveInfo : "spriteind" "spr_obstacle"
						sprite_index = spr_obstacle;
						image_index = 6;
					}
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 63BD0865
				/// @DnDParent : 2D8200B0
				/// @DnDArgument : "const" "2"
				case 2:
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3433EBA8
					/// @DnDParent : 63BD0865
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_fire"
					/// @DnDArgument : "layer" ""Spawns""
					/// @DnDSaveInfo : "objectid" "obj_fire"
					instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 29FCA78F
					/// @DnDParent : 63BD0865
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "moving"
					moving = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 71302694
					/// @DnDParent : 63BD0865
					/// @DnDArgument : "imageind" "8"
					/// @DnDArgument : "spriteind" "spr_obstacle"
					/// @DnDSaveInfo : "spriteind" "spr_obstacle"
					sprite_index = spr_obstacle;
					image_index = 8;
					break;
			}
		}
		break;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 667D0C65
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "true"
if(moving == true)
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 0C3CBC1E
	/// @DnDParent : 667D0C65
	/// @DnDArgument : "expr" "room_now"
	var l0C3CBC1E_0 = room_now;
	switch(l0C3CBC1E_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 39F8C087
		/// @DnDParent : 0C3CBC1E
		/// @DnDArgument : "const" "rm_game_lvl3"
		case rm_game_lvl3:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F4D1D31
			/// @DnDParent : 39F8C087
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "var" "x_increment"
			x_increment = 5;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6ECEE0DF
		/// @DnDParent : 0C3CBC1E
		/// @DnDArgument : "const" "rm_game_lvl5"
		case rm_game_lvl5:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1344BC1C
			/// @DnDParent : 6ECEE0DF
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "var" "x_increment"
			x_increment = 20;
			break;
	}

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
		/// @DnDArgument : "value" "-x_increment"
		/// @DnDArgument : "value_relative" "1"
		x += -x_increment;
	
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
		/// @DnDArgument : "value" "x_increment"
		/// @DnDArgument : "value_relative" "1"
		x += x_increment;
	
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