#SingleInstance, Force
$Esc::
	KeyWait, Esc, T0.25
	if (!ErrorLevel && A_PriorKey = "Esc") {
		return
	}
	KeyWait, Esc
return

#If GetKeyState("Esc","P")
    j::Left
    k::Down
    l::Right
    i::Up