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
	u::NumPad7
	i::NumPad8
	o::NumPad9
	j::NumPad4
	k::NumPad5
	l::NumPad6
	m::NumPad1
	,::NumPad2
	.::NumPad3
	n::NumPad0
	;,::NumPad0
	;.::NumPadDot
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
	a::\

