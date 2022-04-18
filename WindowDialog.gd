extends WindowDialog

export (PackedScene) var card_scene

var offset = 0

var item = {}

onready var Score = get_node("PanelContainer/Panel/GridContainer/Score")

var deck = [
{"frame" : 0, "suit" : "heart", "string" : "Ace of Hearts", "value" : 1},
{"frame" : 1, "suit" : "heart", "string" : "2 of Hearts", "value" : 2},
{"frame" : 2, "suit" : "heart", "string" : "3 of Hearts", "value" : 3},
{"frame" : 3, "suit" : "heart", "string" : "4 of Hearts", "value" : 4},
{"frame" : 4, "suit" : "heart", "string" : "5 of Hearts", "value" : 5},
{"frame" : 5, "suit" : "heart", "string" : "6 of Hearts", "value" : 6},
{"frame" : 6, "suit" : "heart", "string" : "7 of Hearts", "value" : 7},
{"frame" : 7, "suit" : "heart", "string" : "8 of Hearts", "value" : 8},
{"frame" : 8, "suit" : "heart", "string" : "9 of Hearts", "value" : 9},
{"frame" : 9, "suit" : "heart", "string" : "10 of Hearts", "value" : 10},
{"frame" : 10, "suit" : "heart", "string" : "Jack of Hearts", "value" : 10},
{"frame" : 11, "suit" : "heart", "string" : "Queen of Hearts", "value" : 10},
{"frame" : 12, "suit" : "heart", "string" : "King of Hearts", "value" : 10},
]



func _ready():
	randomize()
	deck.shuffle()

func _on_Button2_pressed():
	popup()

func _on_Button_pressed():
	item = deck.pop_front()
	Score.text = str(item.value + int(Score.text))
	draw_card(item.frame)

func draw_card(card_frame):	
	var card_spawn = get_node("Position2D")
	var card = card_scene.instance()
	card.card_frame = card_frame
	card_spawn.add_child(card)
	card.position = card.position + Vector2(offset,0)
	offset +=15


func _on_WindowDialog_popup_hide():
	offset = 0
	Score.text = "0"
	deck = [
	{"frame" : 0, "suit" : "heart", "string" : "Ace of Hearts", "value" : 1},
	{"frame" : 1, "suit" : "heart", "string" : "2 of Hearts", "value" : 2},
	{"frame" : 2, "suit" : "heart", "string" : "3 of Hearts", "value" : 3},
	{"frame" : 3, "suit" : "heart", "string" : "4 of Hearts", "value" : 4},
	{"frame" : 4, "suit" : "heart", "string" : "5 of Hearts", "value" : 5},
	{"frame" : 5, "suit" : "heart", "string" : "6 of Hearts", "value" : 6},
	{"frame" : 6, "suit" : "heart", "string" : "7 of Hearts", "value" : 7},
	{"frame" : 7, "suit" : "heart", "string" : "8 of Hearts", "value" : 8},
	{"frame" : 8, "suit" : "heart", "string" : "9 of Hearts", "value" : 9},
	{"frame" : 9, "suit" : "heart", "string" : "10 of Hearts", "value" : 10},
	{"frame" : 10, "suit" : "heart", "string" : "Jack of Hearts", "value" : 10},
	{"frame" : 11, "suit" : "heart", "string" : "Queen of Hearts", "value" : 10},
	{"frame" : 12, "suit" : "heart", "string" : "King of Hearts", "value" : 10},
	]
	deck.shuffle()
	for n in $Position2D.get_children():
		n.queue_free()
