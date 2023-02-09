extends Node2D


var moneyCount = 0
onready var s = get_node("enemy").get("Speed")
var canBuy = true

func _physics_process(delta):
	$Money.text = str(moneyCount) + "$"
	if moneyCount <= 0:
		canBuy = false
	elif moneyCount > 0:
		canBuy = true

func _on_Timer_timeout():
	moneyCount += 1
	$Money/Timer.start()

func _on_SliceZone_area_entered(area:Area2D):
	if area.name == "EnemyHitbox":
		moneyCount += 5

func _on_Button_pressed():
	if canBuy == true and moneyCount >= 5:
		moneyCount -= 5
		s += 5
