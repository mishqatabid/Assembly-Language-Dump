; Nested Loops

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data 
    someData BYTE 0
    someOtherData BYTE 0
    storeFirstLoopIteration DWORD ?

.code
mainPROC
  mov ecx, 5 
  movzx eax, someData 
  movzx ebx,someOtherData

  L1:
      inc eax
      mov storeFirstLoopIteration,ecx
      mov ecx,15
  
      L2:
          inc ebx
          loop L2

      mov ecx,storeFirstLoopIteration
      loop L1

    mov someData, al
    mov someOtherData, bl
  INVOKE ExitProcess, 0; EXIT
main
ENDP
END main
