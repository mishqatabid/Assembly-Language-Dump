; Calculating the Fibonacci series

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode: DWORD
.data
    fibonacciArray DWORD 7 DUP(?)  ; Array to store Fibonacci numbers
    
.code
main PROC
    mov eax, 1                     ; Fib(1)
    mov fibonacciArray[0], eax     ; Store in array

    mov eax, 1                     ; Fib(2)
    mov fibonacciArray[4], eax     ; Store in array

    mov ebx, 2                     ; Start index from 2
    mov ecx, 5                     ; Limit to 7 Fibonacci numbers

FibonacciLoop: 
    mov eax, fibonacciArray[ebx * 4 - 8]   ; Previous Fibonacci number (n-1)
    add eax, fibonacciArray[ebx * 4 - 4]   ; Current Fibonacci number (n-2)

    mov fibonacciArray[ebx * 4], eax       ; Store result in array
    inc ebx
    loop FibonacciLoop
    ret
main ENDP
END main
