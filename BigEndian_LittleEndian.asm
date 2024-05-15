.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD
.data
    bigEndian BYTE 12h, 34h, 56h, 78h
    littleEndian DWORD ?
.code
main PROC
    mov eax, DWORD PTR bigEndian
    bswap eax
    mov littleEndian, eax
    ret
main ENDP
END main
