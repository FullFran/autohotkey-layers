;Este atajo funciona perfectamente, pero impide mantener pulsado space asíq que podría nos ser cómodo en algunosc casos


#SingleInstance, Force
$Space::
    KeyWait, Space, T0.25
    if (ErrorLevel) {
        KeyWait, Space, U
        return
    }
    SendInput, {Space}
    KeyWait, Space
return

#If GetKeyState("Space","P")
    h::Left
    j::Down                                             
    l::Right
    k::Up 
