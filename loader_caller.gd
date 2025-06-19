extends Node

onready var dataset = get_node("/root/Dataset")

#Script extension cannot be a child node, so this file acts as the child node

func load_npc(name, path):
	#stop function continuing before dataset is ready
	yield(dataset,"ready")
	dataset.load_npc(name, path)

func load_tasks(path):
	#stop function continuing before dataset is ready
	yield(dataset,"ready")
	dataset.load_tasks(path)

func _ready():
	pass # Replace with function body.

