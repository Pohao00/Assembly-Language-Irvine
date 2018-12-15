TITLE Copying a String with indirect addressing

INCLUDE Irvine32.inc

.data
source BYTE "This is the source string",0
target BYTE SIZEOF source DUP('#'),0

.code
main PROC
     mov esi,OFFSET source ; index register
     mov ecx,SIZEOF source ; loop counter
    
L1:
     mov al,[esi] ; get a character from source
     mov target[ecx-2],al ; store it in the target
	
     inc esi; move to next character
     loop L1 ; repeat for entire string

     mov esi,OFFSET target ; 變數位移值
     mov ebx,1 ; 位元組格式
     mov ecx,SIZEOF target-2 ; 計數器
     call DumpMem

     exit
main ENDP
END main