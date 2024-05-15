; Basic Input Output

INCLUDE Irvine32.inc
.data
    prompt db "Enter your name: ", 0
    buffer db 20 dup(0)
    greeting db "Hello, ", 0
    newline db 13, 10, 0
.code
main PROC
     mov edx, OFFSET prompt
     call WriteString

     mov edx, OFFSET buffer
     mov ecx, SIZEOF buffer
     call ReadString

     mov edx, OFFSET greeting
     call WriteString

     mov edx, OFFSET buffer
     call WriteString

     mov edx, OFFSET newline
     call WriteString
 exit
main ENDP
END main
