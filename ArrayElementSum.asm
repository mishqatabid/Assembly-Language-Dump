;Calculating Sum of Array Element

.386
.stack 4096
.model flat, stdcall
ExitProcess PROTO,
dwExitCode: DWORD

.data
    someData BYTE 01h, 02h, 03h, 04h

.code
main PROC
    mov ebx, OFFSET someData
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    add ebx, 2
    mov eax, [ebx]
  INVOKE ExitProcess, eax
main ENDP
END main
