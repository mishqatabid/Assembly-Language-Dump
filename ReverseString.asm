;Reverse a String

INCLUDE Irvine32.inc

.data
  inputString BYTE 20 DUP(?)
  nameSize DWORD ?
  msg BYTE "Enter a string: ", 0
  reversedString BYTE 20 DUP(?)
  reverseMsg BYTE "Reversed string: ", 0

.code
main PROC
  mov edx, OFFSET msg
  call WriteString
  
  mov edx, OFFSET inputString
  mov ecx, sizeof inputString
  call ReadString

  mov esi, OFFSET inputString
  mov ecx, 0
L1:
  cmp BYTE PTR [esi], 0
  je L1_end
  inc ecx
  inc esi
  jmp L1
L1_end:
  mov nameSize, ecx
  
  mov esi, OFFSET inputString
  mov ecx, nameSize
L2:
  movzx eax, BYTE PTR [esi]
  push eax
  inc esi
  loop L2
  
  mov esi, 0
  mov edi, OFFSET reversedString
  mov ecx, nameSize

L3:
  pop eax
  mov BYTE PTR [edi], al
  inc edi
  loop L3
  
  mov edx, OFFSET reverseMsg
  call WriteString
  
  mov edx, OFFSET reversedString
  call WriteString
  
  exit
main ENDP
END main
