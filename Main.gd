extends Node2D
signal t

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



#/ Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	pass


func _on_keypad_pressed():
	$keypads.show()


func _on_wire_pressed():
	$wires.show()


func _on_passwords_pressed():
	$password.show()


func _on_t():
	$Count._bob()


func _on_con_2_pressed():
	Single.fail()
	gameOver()



func _on_return_pressed():
	$wires.hide()
	$password.hide()
	$keypads.hide()
	print("sup")


func _on_pause_pressed():
	print("p")
	Single.fail()

func gameOver():
	$count2.show()
