extends Node

@onready var score_label: Label = $"../ScoreLabel"
@onready var coins_container: Node = $"../Coins"

var score: int = 0

func _ready() -> void:
	for coin in coins_container.get_children():
		coin.collected.connect(_on_coin_collected)

func _on_coin_collected() -> void:
	score += 1
	score_label.text = "You collected " + str(score) + " coins. "
