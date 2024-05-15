; Carry Flag

.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD

.data
     myVariable DWORD 16, 12, 43
     sum DWORD ?

.code
main PROC
     mov al, 0FFh
     add al, 1
     mov al, 0
     sub al, 1

 INVOKE ExitProcess, 0
main ENDP
END main
