/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 01B209DF
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2F46B0A2
/// @DnDArgument : "obj" "obj_controls"
/// @DnDSaveInfo : "obj" "obj_controls"
var l2F46B0A2_0 = false;
l2F46B0A2_0 = instance_exists(obj_controls);
if(l2F46B0A2_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76C766DD
	/// @DnDApplyTo : {obj_controls}
	/// @DnDParent : 2F46B0A2
	with(obj_controls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51E633C8
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2B64A845
	/// @DnDApplyTo : {obj_controls}
	/// @DnDParent : 51E633C8
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	with(obj_controls) {
		instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls); 
	}
}