extends Node2D

@onready var label =$L1
@onready var timer =$T1
var min
var sec
var left
signal fail
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()
	$count2.hide()

func _hoof():
	left= timer.time_left
	min=floor(left/60)
	sec=int(left)%60
	return [min, sec]
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text="%02d:%02d" % _hoof()



func _on_t_1_timeout():
	Single.fail()
	$count2.show()

