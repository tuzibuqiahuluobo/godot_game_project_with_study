extends Base_State




func enter():
	if $Timer.is_stopped():
		$"../../AnimationPlayer".play("攻击1")
	else:
		$"../../AnimationPlayer".play("攻击2")

func do():
	pass
	
	
func attack1_check():
	var arr =  $"../../AttackCheck/A1".get_overlapping_bodies()
	
func attack2_check():
	var arr = $"../../AttackCheck/A2"
	
func attack3_check():
	var arr = $"../../AttackCheck/A3"
	


func _on_animated_sprite_2d_animation_finished():
	if $"../../AnimatedSprite2D".animation =="攻击1":
		$Timer.start(0.25)
	
	if $"../../AnimatedSprite2D".animation =="攻击1"||$"../../AnimatedSprite2D".animation =="攻击2":
		$"../../AnimatedSprite2D".frame = 0
		get_parent().change_state(0)
	
	
