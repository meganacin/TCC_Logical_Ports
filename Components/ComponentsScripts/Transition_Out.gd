extends CanvasLayer

func _ready():
	$Transition_Effect.interpolate_property($Overlay,"progress",1.0, 0.0, 1.0, Tween.TRANS_QUINT,Tween.EASE_IN_OUT)
	$Transition_Effect.start()
