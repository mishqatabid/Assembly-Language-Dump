;(A-B)+(C-D) using 16 BIT REGSITER

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    myVariable WORD 15, 12, 39, 5
    result WORD ?

.code
main PROC
    mov ax, myVariable
    mov bx, [myVariable+2]
    mov cx, [myVariable+4]
    mov dx, [myVariable+6]
    sub ax, bx
    sub cx, dx
    add ax, cx
    mov result, ax
  INVOKE ExitProcess, 0
main ENDP
END main
