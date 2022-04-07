extends Control

export var DarkTheme : Theme
export var LightTheme : Theme

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Theme_button_up():
	if $Panel.theme == DarkTheme:
		$Panel.theme = LightTheme
	else:
		$Panel.theme = DarkTheme


func _on_Button_color_changed(color):
	pass
