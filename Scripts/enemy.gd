extends Node2D


onready var enemy = load("res://Scenes/enemy.tscn")
var nums = [140, 246]

func _physics_process(delta):
	$".".position.x -= 5

func SpawnEnemy():
	var e = enemy.instance()
	get_parent().add_child(e)
	e.position = Vector2(561,nums[randi()%nums.size()])

func _on_Area2D_area_entered(area:Area2D):
	if area.name == "SliceZone":
		queue_free()
		SpawnEnemy()
	else:
		queue_free()
		SpawnEnemy()



