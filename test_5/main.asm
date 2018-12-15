  Title n Choose k

INCLUDE Irvine32.inc

.data
N DWORD ?
K DWORD ?
Cou DWORD 0
count DWORD 0
T1 BYTE "請輸入C(N,K),裡的N: ",0
T2 BYTE "請輸入C(N,K),裡的K: ",0
Rs BYTE "C(N,K)= ",0
.code
Cnk PROC USES eax ebx
inc count

.IF ebx==0 || eax==ebx || eax==0
jp L3
.ENDIF
cmp eax,ebx
jb L2 
push N 
push K  
dec N  
mov eax,N
call Cnk
pop K
pop N

push N 
push K 
dec N
dec K
mov eax,N
mov ebx,K
call Cnk
pop K
pop N
ret

L3:
	inc Cou
	ret
L2:
	mov Cou,0
	ret
Cnk ENDP

main PROC
mov ecx,5
L1:
mov edx,offset T1
call WriteString
call ReadDec
mov N,eax
mov edx,offset T2
call WriteString
call ReadDec
mov K,eax
mov eax,N
mov ebx,K
call Cnk
mov eax,Cou
mov edx,offset Rs
call WriteString
call WriteDec
call crlf
mov Cou,0
loop L1
	exit
main ENDP
END main