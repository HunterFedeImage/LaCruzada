extends Node2D

@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Volumen musica")
	print(Global.musicVoludme)
	self.SetMusicVolume()
	self.SetSFXVolume()



		

func SetMusicVolume():
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, linear_to_db(Global.musicVoludme))
	AudioServer.set_bus_mute(MUSIC_BUS_ID, Global.musicVoludme < 0.05)



func SetSFXVolume():
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(Global.sfxVolume))
	AudioServer.set_bus_mute(SFX_BUS_ID, Global.sfxVolume < 0.05)
