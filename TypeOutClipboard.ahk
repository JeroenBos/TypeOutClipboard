SetKeyDelay, 0
^!v::	
	if DllCall("IsClipboardFormatAvailable", "Uint", 7)
		clipboardCopy = %clipboard%
		truncatedCopy := SubStr(clipboardCopy, 1, 250)
	    Send truncatedCopy
    Return