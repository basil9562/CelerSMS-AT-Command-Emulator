#NoEnv
SendMode Input
SetTitleMatchMode, 2

WinActivate, AT Emulator
Sleep, 500

; Send AT
SendRaw, AT
Send, {Enter}
Sleep, 1000

; Send AT+CSQ
SendRaw, AT+CSQ
Send, {Enter}
Sleep, 1000

; Send AT+CMGF=1
SendRaw, AT+CMGF=1
Send, {Enter}
Sleep, 1000

; Send AT+CMGS with phone number
SendRaw, AT+CMGS="1234567890"
Send, {Enter}
Sleep, 1500

; Send message text
SendRaw, HI THIS IS A MESSAGE
Sleep, 1000

; Send Ctrl+Z to finish the message
Send, ^z
Sleep, 5000   ; Wait 5 seconds to ensure SMS is processed

; Now try to read message
SendRaw, AT+CMGR=1
Send, {Enter}
Sleep, 2000

MsgBox, Finished sending SMS with the help of AutoHotkey!
ExitApp
