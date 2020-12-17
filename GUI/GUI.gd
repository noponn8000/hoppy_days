extends CanvasLayer

func update_gui(coins, lives_left):
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins)
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives_left)
