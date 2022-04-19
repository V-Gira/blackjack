extends WindowDialog

export (PackedScene) var card_scene

var offset = 0

var item = {}

onready var Score = get_node("PanelContainer/Panel/GridContainer/Score")

onready var Text = get_node("PanelContainer3/Panel/Text")

var deck = []



func _ready():
	randomize()
	reset_deck()

func _on_Button2_pressed():
	popup()

func _on_Button_pressed():
	item = deck.pop_front()
	Score.text = str(item.value + int(Score.text))
	Text.text = item.string
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
	Text.text = ""
	reset_deck()
	for n in $Position2D.get_children():
		n.queue_free()

func reset_deck():
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
	{"frame" : 13, "suit" : "diamond", "string" : "Ace of Diamonds", "value" : 1},
	{"frame" : 14, "suit" : "diamond", "string" : "2 of Diamonds", "value" : 2},
	{"frame" : 15, "suit" : "diamond", "string" : "3 of Diamonds", "value" : 3},
	{"frame" : 16, "suit" : "diamond", "string" : "4 of Diamonds", "value" : 4},
	{"frame" : 17, "suit" : "diamond", "string" : "5 of Diamonds", "value" : 5},
	{"frame" : 18, "suit" : "diamond", "string" : "6 of Diamonds", "value" : 6},
	{"frame" : 19, "suit" : "diamond", "string" : "7 of Diamonds", "value" : 7},
	{"frame" : 20, "suit" : "diamond", "string" : "8 of Diamonds", "value" : 8},
	{"frame" : 21, "suit" : "diamond", "string" : "9 of Diamonds", "value" : 9},
	{"frame" : 22, "suit" : "diamond", "string" : "10 of Diamonds", "value" : 10},
	{"frame" : 23, "suit" : "diamond", "string" : "Jack of Diamonds", "value" : 10},
	{"frame" : 24, "suit" : "diamond", "string" : "Queen of Diamonds", "value" : 10},
	{"frame" : 25, "suit" : "diamond", "string" : "King of Diamonds", "value" : 10},
	{"frame" : 26, "suit" : "club", "string" : "Ace of Clubs", "value" : 1},
	{"frame" : 27, "suit" : "club", "string" : "2 of Clubs", "value" : 2},
	{"frame" : 28, "suit" : "club", "string" : "3 of Clubs", "value" : 3},
	{"frame" : 29, "suit" : "club", "string" : "4 of Clubs", "value" : 4},
	{"frame" : 30, "suit" : "club", "string" : "5 of Clubs", "value" : 5},
	{"frame" : 31, "suit" : "club", "string" : "6 of Clubs", "value" : 6},
	{"frame" : 32, "suit" : "club", "string" : "7 of Clubs", "value" : 7},
	{"frame" : 33, "suit" : "club", "string" : "8 of Clubs", "value" : 8},
	{"frame" : 34, "suit" : "club", "string" : "9 of Clubs", "value" : 9},
	{"frame" : 35, "suit" : "club", "string" : "10 of Clubs", "value" : 10},
	{"frame" : 36, "suit" : "club", "string" : "Jack of Clubs", "value" : 10},
	{"frame" : 37, "suit" : "club", "string" : "Queen of Clubs", "value" : 10},
	{"frame" : 38, "suit" : "club", "string" : "King of Clubs", "value" : 10},
	{"frame" : 39, "suit" : "spade", "string" : "Ace of Spades", "value" : 1},
	{"frame" : 40, "suit" : "spade", "string" : "2 of Spades", "value" : 2},
	{"frame" : 41, "suit" : "spade", "string" : "3 of Spades", "value" : 3},
	{"frame" : 42, "suit" : "spade", "string" : "4 of Spades", "value" : 4},
	{"frame" : 43, "suit" : "spade", "string" : "5 of Spades", "value" : 5},
	{"frame" : 44, "suit" : "spade", "string" : "6 of Spades", "value" : 6},
	{"frame" : 45, "suit" : "spade", "string" : "7 of Spades", "value" : 7},
	{"frame" : 46, "suit" : "spade", "string" : "8 of Spades", "value" : 8},
	{"frame" : 47, "suit" : "spade", "string" : "9 of Spades", "value" : 9},
	{"frame" : 48, "suit" : "spade", "string" : "10 of Spades", "value" : 10},
	{"frame" : 49, "suit" : "spade", "string" : "Jack of Spades", "value" : 10},
	{"frame" : 50, "suit" : "spade", "string" : "Queen of Spades", "value" : 10},
	{"frame" : 51, "suit" : "spade", "string" : "King of Spades", "value" : 10},
	]
	deck.shuffle()
