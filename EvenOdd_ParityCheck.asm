.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    checkByte BYTE 01110101b
    evenParityResult BYTE 0
    oddParityResult BYTE 0

.code
main PROC
    mov al, checkByte
    test al, al
    jpo OddParity
    jpe EvenParity

EvenParity:
    mov evenParityResult, 1
    jmp Ending

OddParity:
    mov oddParityResult, 1

Ending:
    ret
main ENDP
END main
