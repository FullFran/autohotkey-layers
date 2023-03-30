#SingleInstance, Force
$Esc::
    KeyWait, Esc, T0.25
    if (ErrorLevel) {
        KeyWait, Esc, U
        return
    }
    SendInput, {Esc}
    KeyWait, Esc
return

#If GetKeyState("Esc","P")
    j::Left
    k::Down
    l::Right
    i::Up