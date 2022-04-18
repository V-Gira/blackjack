extends AnimatedSprite

export var card_frame = 0

func _ready():
	$".".set_frame(card_frame)
