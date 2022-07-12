/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4ADFD8CA
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 360"
if(y > room_height + 360)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 65946643
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width - 200"
	var new_x = floor(random_range(200, room_width - 200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4CCDE6A3
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-200"
	x = new_x;
	y = -200;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 16D96FE3
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "var" "moving_chance"
	moving_chance = (random_range(0, 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51F80D16
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "expr" "moving_chance < 0.5"
	/// @DnDArgument : "var" "moving"
	moving = moving_chance < 0.5;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 72DAA72C
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "3"
	var chance = floor(random_range(0, 3 + 1));

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 3ADCE167
	/// @DnDParent : 4ADFD8CA
	/// @DnDArgument : "expr" "chance"
	var l3ADCE167_0 = chance;
	switch(l3ADCE167_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 20F7DD14
		/// @DnDParent : 3ADCE167
		case 0:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 737056E2
			/// @DnDParent : 20F7DD14
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_cat"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_cat"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_cat);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CA37EA9
			/// @DnDParent : 20F7DD14
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "moving"
			moving = false;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6DB0EBEF
		/// @DnDParent : 3ADCE167
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3F32B919
			/// @DnDParent : 6DB0EBEF
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_fire"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_fire"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 615C6B34
			/// @DnDParent : 6DB0EBEF
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "moving"
			moving = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5D741E9E
			/// @DnDParent : 6DB0EBEF
			/// @DnDArgument : "imageind" "3"
			/// @DnDArgument : "spriteind" "spr_obstacle"
			/// @DnDSaveInfo : "spriteind" "spr_obstacle"
			sprite_index = spr_obstacle;
			image_index = 3;
			break;
	}
}