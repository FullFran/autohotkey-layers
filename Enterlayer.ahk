#SingleInstance, Force
$Enter::
    KeyWait, Enter, T0.25
    if (ErrorLevel) {
        KeyWait, Enter, U
        return
    }
    SendInput, {Enter}
    KeyWait, Enter
return


#If GetKeyState("Enter","P")
    j::Left             
    k::Down                                             
    l::Right
    i::Up                   
