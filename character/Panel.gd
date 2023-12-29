extends Panel
var lettuce = 0
var tomatos = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node_or_null("required_food"):
		$required_food.text = "lettuce: " + str(GlobalPanel.lettuce)
		$food_collected.text = "tomatos: " + str(GlobalPanel.tomatos)

