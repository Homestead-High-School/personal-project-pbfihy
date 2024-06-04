extends Node2D
var password="ilovecs"
signal f
var d=false
var b=0

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	$S3.hide()
	$S4.hide()
	$S1.hide()
	$S2.hide()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_gpasss_text_submitted(new_text):
	if(new_text==password):
		$S3.show()
		$S4.show()
		d=true
		gameWin()
	else:
		b+=1
		if(b==3):
			Single.fail()
			gameOver()
		elif(d==false):
			$S2.show()
			$S1.show()
			$Timer3.start()
	
	

func _on_timer_3_timeout():
	hide()
	if(d==false):
		$S3.hide()
		$S4.hide()
		$S1.hide()
		$S2.hide()
	$Timer3.stop()
	




func _on_sub_pressed():
	pass

func gameOver():
	$count2.show()
func gameWin():
	$win.show()
