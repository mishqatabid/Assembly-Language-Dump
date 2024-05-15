.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD
.data
    aName BYTE "Kip Irvine",0
    NameSize = SIZEOF aName - 1

.code
main PROC
    mov ecx, nameSize
    xor esi, esi ; Clear ESI

    L1:
        movzx eax, BYTE PTR aName[esi] 
        push eax 
        inc esi 
        Loop L1 

    mov ecx, nameSize
    xor esi, esi 
    L2:
        pop eax 
        mov BYTE PTR aName[esi], al 
        inc esi 
        Loop L2 

INVOKE ExitProcess, 0
main ENDP
END main
