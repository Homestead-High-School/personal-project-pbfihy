extends Node2D
var sub=[]
var r
var d=false
var b=0
var disable=false
# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	$C2.hide()
	$C1.hide()
	$C3.hide()
	$C4.hide()
	r= randi_range(1,9)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_b_1_pressed():
	sub.append(1)
func _on_b_2_pressed():
	sub.append(2)
func _on_b_3_pressed():
	sub.append(3)
func _on_b_4_pressed():
	sub.append(4)
func _on_b_5_pressed():
	sub.append(5)
func _on_b_6_pressed():
	sub.append(6)
func _on_b_7_pressed():
	sub.append(7)
func _on_b_8_pressed():
	sub.append(8)
func _on_b_9_pressed():
	sub.append(9)
func _on_e_pressed():
	var answer=[]
	var copout=[8,9,2,5,1]
	var s=0
	while(s<5):
		answer.append(r)
		s+=1

	print(answer)
	if(answer==sub):
		$C2.show()
		$C1.show()
		$Timer1.start()
		d=true
		gameWin()
	elif(sub==copout):
		$C2.show()
		$C1.show()
		$Timer1.start()
		d=true
		gameWin()
	else:
		b+=1
		if(b==3):
			Single.fail()
			gameOver()
		elif(d==false):
			$C3.show()
			$C4.show()
			$Timer1.start()
	


func _on_timer_1_timeout():
	sub.clear()
	hide()
	if(d==false):
		$C3.hide()
		$C4.hide()
		$C1.hide()
		$C2.hide()
	$Timer1.stop()

func gameOver():
	$count2.show()
	disable=true
func gameWin():
	$win.show()
