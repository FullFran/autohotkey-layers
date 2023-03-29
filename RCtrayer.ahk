RControl::
    ToolTip,,,, 3
    ToolTip,,,, 4
    Double_RControl := false
    ; Press twice or press twice and hold RControl within 0,2 seconds
;Altgr="<!>" 

    If (A_PriorHotKey = "~RControl Up" AND A_TimeSincePriorHotkey < 200)
    {
        Sleep, 200      
        If GetKeyState("RControl","P")
        {               
            ToolTip,,,, 4
            ToolTip, Double_RControl_holding,,, 2
            Double_RControl_holding := true 
        }
        else
        {   
            ToolTip,,,, 4
            ToolTip, Double_RControl,,, 3   
            Double_RControl := true             
        }
    }
    If !((Double_RControl_holding) || (Double_RControl))    ; "!" means "NOT" and "||" means "OR"
        ToolTip, RControl_holding,,, 1
return

~RControl Up::
    ToolTip,,,, 1
    ToolTip,,,, 2
    Double_RControl_holding := false
    Sleep, 100
    If (A_TimeIdlePhysical > 100)
        Tooltip, PriorHotKey = RControl Up,,, 4
    SetTimer, RemoveTooltip, 1000
return


#If (Double_RControl_holding)   ; If  this variable has the value "true"

    >^a:: MsgBox, a while Double_RControl_holding       ; ">^" means "RControl"
    >^1:: MsgBox, 1 while Double_RControl_holding

#If (Double_RControl)

    a:: MsgBox, a after Double_RControl
    1:: MsgBox, 1 after Double_RControl

    ; Press a key within 2 seconds after releasing RControl:
#If (A_PriorHotKey = "~RControl Up" AND A_TimeSincePriorHotkey < 2000)

    a:: MsgBox, a after RControl Up
    1:: MsgBox, 1 after RControl Up

#If GetKeyState("RControl","P")

    a:: MsgBox, a while RControl_holding
    1:: MsgBox, 1 while RControl_holding

#If 

RemoveTooltip:
    If (A_TimeSincePriorHotkey > 2000) ;  2 seconds
        ToolTip,,,, 4
return