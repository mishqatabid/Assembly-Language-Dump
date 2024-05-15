; Zero Flag

.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD

.data
    myVariable DWORD 16, 12, 43
    sum DWORD ?

.code
main PROC
     mov cx, 1
     sub cx, 1
     mov ax, 0FFFFh
     inc ax
     inc ax
INVOKE ExitProcess, 0
main ENDP
END mai
