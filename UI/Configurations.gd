extends Control

@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

		
func _on_menu_pressed():
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")
	pass # Replace with function body.


func _on_music_slider_value_changed(value):
	Global.musicVoludme = value
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, Global.musicVoludme)
	AudioServer.set_bus_mute(MUSIC_BUS_ID, Global.musicVoludme < 0.05)
	print_debug(AudioServer.get_bus_volume_db(MUSIC_BUS_ID))
	



func _on_sfx_slider_value_changed(value):
	Global.sfxVolume = value
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(Global.sfxVolume))
	AudioServer.set_bus_mute(SFX_BUS_ID, Global.musicVoludme < 0.05)

