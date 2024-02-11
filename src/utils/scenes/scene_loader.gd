extends CanvasLayer

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var tree = get_tree()

var tween: Tween

const tcsn = '.tscn'
const default_scene_path = 'res://src/gameScreens/'
const game_scene_path = 'res://src/gameplay/'
const transition_animation = 'dissolve'

func scene_transition(target: String):
	animation_player.play(transition_animation)
	await animation_player.animation_finished
	
	var target_tcsn = target + tcsn
	var next_scene = default_scene_path + target_tcsn
	
	if target == Globals.SCENES.GAME:
		next_scene = game_scene_path + target_tcsn
		
	tree.change_scene_to_file(next_scene)
	
	animation_player.play_backwards(transition_animation)
	await animation_player.animation_finished
