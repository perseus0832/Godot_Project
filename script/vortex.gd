extends Node2D

const name = "Vortex"

var material_node
var time = 0

func _ready():
	prints(name, "ready.")

	material_node = get_node("Sprite").get_material()


func set_time(new_time):
	time = new_time
	material_node.set_shader_param("time", time)


func _process(delta):
	pass


func change(args):
	prints(name, "change:", args)
	material_node.set_shader_param("step_size", args[0])

