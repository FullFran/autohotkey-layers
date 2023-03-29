;ignore long presses of the capslock key
#SingleInstance, [force|ignore|prompt|On]
$Capslock::
	KeyWait,Capslock,T0.25 ;measured in seconds
	if (!ErrorLevel && A_PriorKey="Capslock")
	{
		If GetKeyState("Capslock","T")
			SetCapsLockState, off
		else
			SetCapsLockState, on
	}
	KeyWait, Capslock
return

;Layer: Capslock
#If GetKeyState("Capslock","P")
	;Mapeamos el teclado numérico.
	7::NumPad7
	8::NumPad8
	9::NumPad9
	u::NumPad4
	i::NumPad5
	o::NumPad6
	j::NumPad1
	k::NumPad2
	l::NumPad3
	m::NumPad0
	;,::NumPad0
	.::NumPadDot
	;/::NumPadAdd
	;::NumPadSub
	;p::NumPadMult
	;0::NumPadDiv
	;Mapeamos las flechas wasd
	w::Up
	s::Down
	a::Left
	d::Right
#If

;Layer: Ralt
RAlt::return
#If GetKeyState("RAlt", "P")
	l::\

