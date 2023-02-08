extends Node2D

var moneyCount = 0

 
func _physics_process(delta):
	$Money.text = str(moneyCount) + "$"

func _on_Timer_timeout():
	moneyCount += 1
	$Money/Timer.start()
