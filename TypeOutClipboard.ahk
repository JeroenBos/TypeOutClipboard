SetKeyDelay, 0
^Ins::
^!v::	
    if DllCall("IsClipboardFormatAvailable", "Uint", 7) {
        clipboardCopy = %clipboard%
        truncatedCopy := SubStr(clipboardCopy, 1)
        truncatedCopy := StrReplace(truncatedCopy, "`r`n", "`n")
        Send {Raw}%truncatedCopy%
    }
Return
