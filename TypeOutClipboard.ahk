SetKeyDelay, 0
^Ins::
^!v::	
    if (Clipboard != A_Space and Clipboard != A_Tab and Clipboard != "") {
        clipboardCopy = %clipboard%
        truncatedCopy := SubStr(clipboardCopy, 1)
        truncatedCopy := StrReplace(truncatedCopy, "`r`n", "`n")
        truncatedCopy := LTrim(truncatedCopy, OmitChars := "r`n")
        truncatedCopy := RTrim(truncatedCopy, OmitChars := " `t`r`n")
        Send {Raw}%truncatedCopy%
    }
Return
