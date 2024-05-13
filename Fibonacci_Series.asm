.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD
.data
    fibonacciArray DWORD 7 DUP(?) 
    
.code
main PROC
    mov eax, 1
    mov fibonacciArray[0], eax

    mov eax, 1
    mov fibonacciArray[4], eax

    mov ebx, 2
    mov ecx, 5
  FibonacciLoop:
    mov eax, fibonacciArray[ebx * 4 - 8]
    add eax, fibonacciArray[ebx * 4 - 4]

    mov fibonacciArray[ebx * 4], eax
    inc ebx
    loop FibonacciLoop
    ret
main ENDP
END main
