; Checking if the given byte has even or odd parity using the Parity flag.

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

; In EvenParity, the evenParityResult variable is set to 1 to indicate even parity was detected.
; In OddParity, the oddParityResult variable is set to 1 to indicate odd parity was detected.
