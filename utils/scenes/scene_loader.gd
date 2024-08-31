extends CanvasLayer


@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var tree = get_tree()


var tween: Tween


const SCENES = {
	MENU = "res://menu_scene.tscn",
	MAIN = "res://main_scene.tscn"
}


func scene_transition(target: String):
	assert(!SCENES.has(target), "scene doesnt exist")
	
	const transition_animation = 'dissolve'
	animation_player.play(transition_animation)
	await animation_player.animation_finished
	
	tree.change_scene_to_file(target)
	
	animation_player.play_backwards(transition_animation)
	await animation_player.animation_finished
