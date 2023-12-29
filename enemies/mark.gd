extends Marker3D

var spawn = randi_range(5, 12)

var node = 0
@export var spawn_type = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	if spawn_type == 1:
		node = preload("res://enemies/foods/nodes/lettuce.tscn")
	if spawn_type == 2:
		node = preload("res://enemies/foods/nodes/tomato.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if spawn > 0:
		var instance = node.instantiate()
		instance.position = Vector3(randi_range(-5, 5), 0, randi_range(-5, 5))
		add_child(instance)
		spawn -= 1
