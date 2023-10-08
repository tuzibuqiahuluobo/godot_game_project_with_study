extends Area2D

var vec_x:float=1.0
# Called when the node enters the scene tree for the first time.


func _ready():
	if vec_x < 0:
		self.scale.x = -1


func _physics_process(delta):
	self.position.x += vec_x




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
