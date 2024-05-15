;DECREMENT

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    myVariable DWORD 2

.code
main PROC
    dec myVariable
    mov eax, myVariable
    dec eax
  INVOKE ExitProcess, 0
main ENDP
END main
