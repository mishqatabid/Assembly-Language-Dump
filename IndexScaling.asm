; Index Scaling

386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
    someData DWORD 01h, 02h, 03h, 04h

.code
main PROC
   mov ebx, 0
   mov eax, someData[ebx*TYPE someData]   ; Load the first DWORD (01h)
   inc ebx                                ; Increment index
   mov eax, someData[ebx*TYPE someData]   ; Load the second DWORD (02h)
   add ebx, 2                             ; Skip the third element, index to the
   mov eax, someData[ebx*TYPE someData]   ; Load the fourth DWORD (04h)
 
 INVOKE ExitProcess, 0 
main ENDP
END main
