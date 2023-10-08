extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direct :Vector2 = Vector2.RIGHT
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	$AnimatedSprite2D.play("移动")

func _physics_process(delta):
	if !is_instance_valid($RightDownCast.get_collider()):
		direct=Vector2.LEFT
		$AnimatedSprite2D.flip_h=true
	elif !is_instance_valid($LeftDownCast.get_collider()):
		direct=Vector2.RIGHT
		$AnimatedSprite2D.flip_h=false
	self.velocity=direct*SPEED
	self.velocity.y=gravity
	move_and_slide()
