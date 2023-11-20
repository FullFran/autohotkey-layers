;ignore long presses of the capslock key
#SingleInstance, [force|ignore|prompt|On]

$Capslock::Esc
$Esc::Capslock
`::BackSpace 


$Capslock::
	KeyWait,Capslock,T0.25 ;measured in seconds
	if (!ErrorLevel && A_PriorKey="Capslock")
	{
		SendInput, {Esc} ; añadido nuevo para simular Esc
		
	;	If GetKeyState("Capslock","T")
	;		SetCapsLockState, off
	;	else
	;		SetCapsLockState, on
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
	;Mapeamos los simbolos aritméticos:
	y::=
	h::*
	p::+
	ñ::-    
	-::/
	´::_
	RShift::\
	
	; Mapeamos parentesis
	f::(
	r::)

	; Teclas útiles
    `::` 
	e::$

	;Mapeamos las flechas wasd
	w::Up
	s::Down
	a::Left
	d::Right


	z::<
	x::>

#If

;Layer: Ralt
RAlt::return
#If GetKeyState("RAlt", "P")
	a::\
	w::#
	;Añadimos los paréntesis:
	d::[
	c::] 
	,::<
	.::>

	;Estas teclas no funcionan
#If GetKeyState("RAlt", "P")
    q:: 1
    r:: 4 ;
    f::{ ; 
    v::] ;
return



$Tab::
	KeyWait,Tab,T0.25 ;measured in seconds
	if (!ErrorLevel && A_PriorKey="Tab")
	
	KeyWait, Tab
return
