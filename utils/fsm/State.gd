# DO NOT USE THIS DIRECTLY, CREATE A NEW FILE AND EXTEND IT
extends Node

class_name State

signal Transitioned(state: State, next_state: State)
	
func _on_enter():
	pass

func _on_exit():
	pass

func _on_update(_delta: float):
	pass

func _on_physics_update(_delta: float):
	pass

func transition_to(next_state: State):
	self.Transitioned.emit(self, next_state)
