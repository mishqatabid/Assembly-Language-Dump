; Reversing a String using Stack

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    aName BYTE "Kip Irvine",0      ; Declare a null-terminated string
    NameSize = SIZEOF aName - 1    ; Calculate the size of the string, excluding the null terminator

.code
main PROC
    mov ecx, NameSize   ; Move the size of the string into ECX (loop counter)
    xor esi, esi        ; Clear ESI (source index)

    L1:
        movzx eax, BYTE PTR aName[esi]   ; Move the current byte of aName into EAX, zero-extended
        push eax                         ; Push the character onto the stack
        inc esi                          ; Increment the source index (ESI)
        loop L1                          ; Loop until ECX reaches 0

    mov ecx, NameSize     ; Reset ECX to the size of the string
    xor esi, esi          ; Clear ESI (destination index)

    L2: 
        pop eax                          ; Pop the top value from the stack into EAX
        mov BYTE PTR aName[esi], al      ; Move the byte from EAX (lower 8 bits) to aName[ESI]
        inc esi                          ; Increment the destination index (ESI)
        loop L2                          ; Loop until ECX reaches 0

    INVOKE ExitProcess, 0 
main ENDP
END main
