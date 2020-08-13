extends TextureRect

signal fade_out
signal fade_in

func fade_in():
	$AnimationPlayer.play("fade_in")

func fade_out():
	$AnimationPlayer.play("fade_out")

func _on_animation_player_animation_finished(anim_name):
	emit_signal(anim_name)
