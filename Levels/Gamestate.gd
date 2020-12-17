extends Node2D

var lives = 5
var coins = 0

var coin_target = 10

func _ready():
	update_gui()
	add_to_group("Gamestate")

func coin_up():
	coins += 1
	update_gui()
	var multiple_of_coins = (coins % coin_target) == 0
	if multiple_of_coins:
		life_up()
		coin_target += 5
		
func update_gui():
	get_tree().call_group("GUI", "update_gui", coins, lives)
		
func life_up():
	lives += 1

func hurt():
	lives -= 1
	$Player.hurt()
	update_gui()
	if lives < 0:
		end_game()

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://Levels/Victory.tscn")
