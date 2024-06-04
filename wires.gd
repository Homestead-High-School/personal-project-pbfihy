extends Node2D
var r=0
var y=0
var b=0
var z=false
var d=false
signal f


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	$count2.hide()
	r= randi_range(1,4)
	$D2.hide()
	$D1.hide()
	$D3.hide()
	$D4.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_red_pressed():
	if(d==false):
		y=1
		if(y==r):
			z=true
		_king()
func _on_green_pressed():
	if(d==false):
		y=2
		if(y==r):
			z=true
		_king()
func _on_blue_pressed():
	if(d==false):
		y=3
		if(y==r):
			z=true
		_king()
func _on_yelow_pressed():
	if(d==false):
		y=4
		if(y==r):
			z=true
		_king()
func _king():
	if(z==true):
		$D2.show()
		$D1.show()
		gameWin()
		$Timer2.start()
		d=true
	else:
		b+=1
		if(b==2):
			Single.fail()
			gameOver()
		else:
			$D3.show()
			$D4.show()
			$Timer2.start()
	
	
		

func _on_timer_2_timeout():
	y=0
	z=false
	hide()
	$D3.hide()
	$D4.hide()
	$D1.hide()
	$D2.hide()
	if(d==true):
		$D1.show()
		$D2.show()
		
	$Timer2.stop()
	
func gameOver():
	$count2.show()
func gameWin():
	$win.show()
