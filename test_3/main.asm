TITLE Color Matrix

INCLUDE Irvine32.inc

.data 
chose1 byte 1
chose2 byte 2
chose3 byte 3
chose4 byte 4
chose5 byte 5
val DWORD ?

.code 
 main PROC
 mov eax,0
call ReadDec

.IF al==chose1
call ReadHex
call WriteBin
call Crlf
mov val,eax
call ReadHex
call WriteBin
call Crlf
and eax,val
call WriteBin
call Crlf
call WriteHex
exit
.ENDIF

.IF al==chose2
call ReadHex
call WriteBin
call Crlf
mov val,eax
call ReadHex
call WriteBin
call Crlf
or eax,val
call WriteBin
call Crlf
call WriteHex
exit
.ENDIF

.IF al==chose3
call ReadHex
call WriteBin
call Crlf
not eax
call WriteBin
call Crlf
call WriteHex
exit
.ENDIF

.IF al==chose4
call ReadHex
call WriteBin
call Crlf
mov val,eax
call ReadHex
call WriteBin
call Crlf
xor eax,val
call WriteBin
call Crlf
call WriteHex
exit
.ENDIF

.IF al==chose5
call Crlf
exit
.ENDIF

  
 main ENDP 
 END main