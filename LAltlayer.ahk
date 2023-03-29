LAlt::
    ToolTip,,,, 3
    ToolTip,,,, 4
    Double_LAlt := false
    ; Press twice or press twice and hold LAlt within 0,2 seconds
    If (A_PriorHotKey = "~LAlt Up" AND A_TimeSincePriorHotkey < 200)
    {
        Sleep, 200      
        If GetKeyState("LAlt","P")
        {               
            ToolTip,,,, 4
            ToolTip, Double_LAlt_holding,,, 2
            Double_LAlt_holding := true 
        }
        else
        {   
            ToolTip,,,, 4
            ToolTip, Double_LAlt,,, 3   
            Double_LAlt := true             
        }
    }
    If !((Double_LAlt_holding) || (Double_LAlt))    ; "!" means "NOT" and "||" means "OR"
        ToolTip, LAlt_holding,,, 1
return

~LAlt Up::
    ToolTip,,,, 1
    ToolTip,,,, 2
    Double_LAlt_holding := false
    Sleep, 100
    If (A_TimeIdlePhysical > 100)
        Tooltip, PriorHotKey = LAlt Up,,, 4
    SetTimer, RemoveTooltip, 1000
return


#If (Double_LAlt_holding)   ; If  this variable has the value "true"

    <!a:: MsgBox, a while Double_LAlt_holding       ; "<!" means "LAlt"
    <!1:: MsgBox, 1 while Double_LAlt_holding

#If (Double_LAlt)

    a:: MsgBox, a after Double_LAlt
    1:: MsgBox, 1 after Double_LAlt

    ; Press a key within 2 seconds after releasing LAlt:
#If (A_PriorHotKey = "~LAlt Up" AND A_TimeSincePriorHotkey < 2000)

    a:: MsgBox, a after LAlt Up
    1:: MsgBox, 1 after LAlt Up

#If GetKeyState("LAlt","P")

    a:: MsgBox, a while LAlt_holding
    1:: MsgBox, 1 while LAlt_holding

#If 

RemoveTooltip:
    If (A_TimeSincePriorHotkey > 2000) ;  2 seconds
        ToolTip,,,, 4
return