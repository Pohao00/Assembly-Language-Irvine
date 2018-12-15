TITLE Color Matrix

INCLUDE Irvine32.inc

.data 

.code 
 main PROC 
mov ecx,16
mov esi,0
;mov edx,15

L2:
push ecx				;L2 loop using
 ;mov eax,0+15*16
 ;call setTextColor
 ;dec edx
 mov ecx,16				;L1 loop using
 
 L1:
 mov eax,esi
 call setTextColor
 mov al,"A"
 call WriteChar
 inc esi
 loop L1
call Crlf

pop ecx
loop L2
mov eax,15+0*16  
call SetTextColor

 exit 
 main ENDP 
 END main