extends StaticBody

var taked = false

func actuate():
	if not taked:
		set_collision_layer_bit(1, false)
		GameManager.player.run_pickup_anim()
		$AnimationPlayer.play("pickup")
		taked = true

func taken():
	$AudioStreamPlayer.playing = true
	$Coin.visible = false
	GameManager.player.gold += 5

func _on_audio_finished():
	call_deferred("queue_free")
