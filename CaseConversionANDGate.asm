; Lower to upper case conversion

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD

.data
    lowercaseChar BYTE 'a'   
    uppercaseMask BYTE 11011111b  

.code
  main PROC
    mov al, lowercaseChar    
    and al, uppercaseMask

    push 0
    call ExitProcess
  main ENDP
  END main
