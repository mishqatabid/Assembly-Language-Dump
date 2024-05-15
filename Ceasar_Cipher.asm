; Encrypts the User input with the desired key 

INCLUDE Irvine32.inc

BUFMAX = 128 ; maximum buffer size

.data 
	sPrompt  BYTE "Enter the plain text:",0 
	sKey  BYTE "Enter the shift key:",0 
	sEncrypt BYTE "Cipher text: ",0 
	sDecrypt BYTE "Decrypted: ",0 
	buffer   BYTE BUFMAX+1 DUP(0) 
	bufSize  DWORD ?
	KEY BYTE 100 DUP(?)

.code 
main PROC 
	call InputTheString ; input the plain text 
	mov edx,OFFSET sKey ; display a prompt 
	call WriteString 
	
	mov  edx, OFFSET KEY 
    mov  ecx, SIZEOF KEY 
    call ReadString

	call encrypt ; encrypt the buffer 
	mov edx,OFFSET sEncrypt ; display encrypted message 
	call DisplayMessage 

	call decrypt  ; decrypt the buffer 
	mov edx,OFFSET sDecrypt ; display decrypted message 
	call DisplayMessage 
exit
main ENDP 

InputTheString PROC 
	pushad ; save 32-bit registers 
	mov edx,OFFSET sPrompt ; display a prompt 
	call WriteString 
	mov ecx,BUFMAX ; maximum character count 
	mov edx,OFFSET buffer   ; point to the buffer 
	call ReadString         ; input the string 
	mov bufSize,eax        ; save the length 
	call Crlf
	popad 
	ret 
InputTheString ENDP 

DisplayMessage PROC 
	pushad 
	call WriteString 
	mov edx,OFFSET buffer ; display the buffer 
	call WriteString 
	call Crlf 
	call Crlf
	popad 
	ret 
DisplayMessage ENDP


encrypt PROC 
	pushad 
	mov ecx,bufSize ; loop counter 
	mov esi,0 ; index 0 in buffer 
	L1:
	mov al, KEY
	add buffer[esi], al
	inc esi ; point to next byte 
	loop L1 
	popad
	ret 
encrypt ENDP 


decrypt PROC 
	pushad 
	mov ecx,bufSize ; loop counter 
	mov esi,0 ; index 0 in buffer 
	L1:
	mov al, KEY
	sub buffer[esi], al
	inc esi ; point to next byte 
	loop L1 
	popad
	ret 
decrypt ENDP 

END main
