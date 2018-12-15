  Title Greatest Common Divisor(GCD)

INCLUDE Irvine32.inc

.data 
x SDWORD ?
y SDWORD ?
T1 BYTE "輸入第一個數: ",0
T2 BYTE "輸入第二個數: ",0
T3 BYTE "The result: ",0
.code 
 main PROC
 mov eax,0
 mov ebx,0
 mov edx,offset T1
 call WriteString
 call ReadInt
 mov x,eax
 .IF x<0
 mov eax,x
 mov ebx,-1
 imul ebx
 mov x,eax
 .ENDIF
 mov eax,0
 mov edx,offset T2
 call WriteString
 call ReadInt
 mov y,eax
 .IF y<0
 mov eax,y
 mov ebx,-1
 imul ebx
 mov y,eax

 .ENDIF
 mov eax,x
 cmp eax,y
 ja L2
 L1:
	mov eax,y
	mov ebx,x
	.REPEAT
	mov edx,0
  div ebx
  mov eax,ebx
  mov ebx,edx
  cmp edx,0
	je L3
  .UNTIL ebx<0
  exit
 L2:
	mov eax,x
	mov ebx,y
	
	.REPEAT
	mov edx,0
	div ebx
	mov eax,ebx
	mov ebx,edx
	
	cmp edx,0
	je L3
	.UNTIL ebx < 0
	
  exit
  L3:
   mov edx,offset T3
   call WriteString
	call WriteDec
	call Crlf
	exit
 main ENDP 
 END main