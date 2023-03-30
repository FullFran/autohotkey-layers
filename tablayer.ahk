#SingleInstance, Force
$Tab::
    KeyWait, Tab, T0.25
    if (ErrorLevel) {
        KeyWait, Tab, U
        return
    }
    SendInput, {Tab}
    KeyWait, Tab
return


#If GetKeyState("Tab","P")
    j::Left             
    k::Down                                             
    l::Right
    i::Up                   
