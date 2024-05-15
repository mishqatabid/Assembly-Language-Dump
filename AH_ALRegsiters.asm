;Utilizing AH & AL REGSITERS

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    val1 BYTE 3
    val2 BYTE 2
    sum DWORD ?
.code
    main PROC
    mov al, vall
    mov ah, val2
  INVOKE ExitProcess, 0
main ENDP
END main
