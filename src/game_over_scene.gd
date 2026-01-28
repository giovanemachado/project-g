extends Node
@onready var delay: Timer = $Delay

var can_input: bool = false

func _ready():
	delay.wait_time = 1.0
	delay.one_shot = true
	delay.timeout.connect(_on_delay_timeout)
	delay.start()

func _input(event):
	if not can_input:
		return

	if event.is_action_pressed("restart"): # default to esc
		SceneLoader.scene_transition(SceneLoader.SCENES.MENU)

func _on_delay_timeout():
	can_input = true

func _on_menu_pressed() -> void:
	if not can_input:
		return
	SceneLoader.scene_transition(SceneLoader.SCENES.MENU)
