extends Node2D


func _on_play_pressed():
	SceneLoader.scene_transition(SceneLoader.SCENES.MAIN)
