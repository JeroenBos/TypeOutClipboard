SetKeyDelay, 0
^Ins::
^!v::	
    if DllCall("IsClipboardFormatAvailable", "Uint", 7) {
        clipboardCopy = %clipboard%
        truncatedCopy := SubStr(clipboardCopy, 1)
        Send {Raw}%truncatedCopy%
    }
Return
