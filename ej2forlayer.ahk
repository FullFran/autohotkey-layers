; Inicializamos la variable de estado en falso
#SingleInstance, [force|ignore|prompt|off]
estadoCapa := false
ultimaPulsacion := 0

RControl::
	tiempoActual := A_TickCount ; Obtenemos el tiempo actual en milisegundos
	tiempoDesdeUltimaPulsacion := tiempoActual - ultimaPulsacion ; Calculamos el tiempo transcurrido desde la última pulsación
	
	if (tiempoDesdeUltimaPulsacion < 250 && A_PriorKey = "RControl") ; Si la tecla fue pulsada dos veces seguidas en menos de 250 milisegundos
	{
		estadoCapa := !estadoCapa ; Cambiamos el estado de la capa
		if (estadoCapa)
		{
			ToolTip, Capa activada, 0, 0, 1 ; Muestra un mensaje
		}
		else
		{
			ToolTip, Capa desactivada, 0, 0, 1 ; Muestra un mensaje
		}
	}
	
	ultimaPulsacion := tiempoActual ; Actualizamos el valor de la última pulsación
	KeyWait, RControl ; Espera hasta que se suelte la teclab
return

#If (estadoCapa)
	; Aquí puedes definir tus remapeos de teclado
	; Ejemplo: mapeamos la tecla "a" a "b"
	a::b
#If
