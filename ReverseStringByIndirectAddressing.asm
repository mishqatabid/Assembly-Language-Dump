; Use a loop with indirect addressing to copy a string from source to target in reverse order

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
source BYTE "This is the source string", 0
target BYTE SIZEOF source DUP('#')

.code
main PROC
    mov esi, OFFSET source        ; Start of the source string
    mov edi, OFFSET target + SIZEOF source - 2 ; Start from the end of the target (excluding null-terminator)

CopyLoop:
    mov al, BYTE PTR [esi]        ; Load current character from source
    mov BYTE PTR [edi], al        ; Copy to target at the reverse position
    inc esi                       ; Move to the next character in source
    dec edi                       ; Move back in target
    cmp al, 0                     ; Check if we've reached the null-terminator
    jne CopyLoop

    ; Exit code
    ret
main ENDP
END main
