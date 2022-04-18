extends WindowDialog

export (PackedScene) var card_scene

var offset = 0

func _ready():
	randomize()


func _on_Button2_pressed():
	popup()


func _on_Button_pressed():
	draw_card(randi() % 42)

func draw_card(card_frame):	
	var card_spawn_location = get_node("Position2D")
	var card = card_scene.instance()
	card.card_frame = card_frame
	add_child(card)
	card.position = card_spawn_location.position + Vector2(offset,0)
	offset +=15
