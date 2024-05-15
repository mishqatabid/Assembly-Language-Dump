;Increment While Dereferencing

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    someData WORD 01h, 02h, 03h, 04h

.code
main PROC
    mov ebx, OFFSET someData
    mov eax, [ebx]
    mov eax, [ebx+2]
    mov eax, [ebx+6]
  INVOKE ExitProcess, eax
main ENDP
END main
