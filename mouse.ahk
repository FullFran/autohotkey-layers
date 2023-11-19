;The Offset variable controls pointer speed
;Ctrl + Arrow keys = move mouse
;Ctrl + comma = left click
;Ctrl + period = right click

#SingleInstance force

Offset = 20

^Up::MouseMove, 0, (Offset * -1), 0, R
^Down::MouseMove, 0, Offset, 0, R
^Left::MouseMove, (Offset * -1), 0, 0, R
^Right::MouseMove, Offset, 0, 0, R
^.::click right

;This allows to press and hold the left mouse button instead of just clicking it once. Needed for drag and drop operations.
;snippet by x79animal at https://autohotkey.com/board/topic/59665-key-press-and-hold-emulates-mouse-click-and-hold-win7/
^,::
   If (A_PriorHotKey = A_ThisHotKey)
   return
click down
return
^, up::click up