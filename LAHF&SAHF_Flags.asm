;LAHF & SAHF Flags

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, 
dwExitCode: DWORD

.data
    myFlags BYTE ?

.code
main PROC
    LAHF
    mov myFlags, AH
    mov AH, 10010101b
    SAHF
    mov AH, myFlags
    SAHF
  INVOKE EXITPROCESS, 0
main ENDP
END main
