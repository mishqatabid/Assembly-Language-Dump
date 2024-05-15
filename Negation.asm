;NEGATION

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, 
dwExitCode: DWORD

.data
    variablel BYTE 15
    variable2 BYTE -15

.code
main PROC
    neg variable1
    movsx eax, variable2
    neg eax
  INVOKE ExitProcess, 0
main ENDP
END main
