extends ColorRect

var progress =0.0

func _process(delta: float) ->void:
	material.set("shader_param/progress",progress)
	if(progress == 0):
		queue_free()
