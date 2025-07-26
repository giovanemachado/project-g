extends Node

class_name MusicManager

@onready var audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer

var is_music_on = true

func _ready():
	Globals.toggle_music.connect(_on_toggle_music)

func _on_toggle_music():
	is_music_on = !is_music_on
	audio_stream_player.playing = is_music_on
