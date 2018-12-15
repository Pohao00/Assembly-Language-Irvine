TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data

ans DWORD  4 DUP(0)
gus DWORD  4 DUP(?)
rem DWORD  ?   ;存餘數
divi  DWORD  ?
x BYTE 0
y BYTE 1
a DWORD 0
b DWORD 0
strAns BYTE "答案: ",0
strWelcome BYTE "猜數字遊戲",0Ah,0Dh,0
strInput BYTE "請輸入四個數字:" ,0Ah,0Dh,0
strError BYTE "Input ERROR!" ,0Ah,0Dh,0
strWin  BYTE "You WIN!" ,0Ah,0Dh,0
strR BYTE "是否要重複遊玩 1.YES 2.NO" ,0Ah,0Dh,0

strWin1    BYTE "                    .:v7i.                               ",0Ah,0Dh,0                                                                     
strWin2    BYTE "                   :2v:ijU.   .LYjY7,                    ",0Ah,0Dh,0                                                                    
strWin3    BYTE "                  :j:         .:.  :ui                   ",0Ah,0Dh,0                                                                    
strWin4    BYTE "                  .,     .:::::      ;                   ",0Ah,0Dh,0                                                                    
strWin5    BYTE "                  :       riiii   .   .                  ",0Ah,0Dh,0                                                                    
strWin6    BYTE "              .rLr,:uBBE,  ...  rBBBki:ir:.              ",0Ah,0Dh,0                                                         
strWin7    BYTE "           .iYvi. FZiYPZB7  .  FBkP:,M1 ,ivr:            ",0Ah,0Dh,0                         
strWin8    BYTE "         .rur:.. LBS.YBFPB. . :Bk8BY:0B7 .,:rv:          ",0Ah,0Dh,0                            
strWin9    BYTE "        ij7:,.,. UMBBBBBZP. . .P8BBBBB82....,:7r:        ",0Ah,0Dh,0                               
strWin10   BYTE "      .Y7:.,....,EMBBBB8EY ..  UZGBBBOO5......,:rr       ",0Ah,0Dh,0                              
strWin11   BYTE "     :Ur:.,....  .LXNU2q8. ..  ,OSUUNU:   ....,.:iv.     ",0Ah,0Dh,0                              
strWin12   BYTE "    iUi,,,......   ,FBBB:  ...  iBBBJ    ......,.::Y.    ",0Ah,0Dh,0                               
strWin13   BYTE "   :U:,,:........   .1X:  .....  ,1r    ......,.,,,:Y.   ",0Ah,0Dh,0                               
strWin14   BYTE "  .ur:,,.,..........     .......     ............:,,ir   ",0Ah,0Dh,0                           
strWin15   BYTE "  Y7:,,..   . ....... ..................... ...   ,,:ri  ",0Ah,0Dh,0                         
strWin16   BYTE " iji.,,. :LJi, ............................. :XY   ,,:Y. ",0Ah,0Dh,0                                                                  
strWin17   BYTE " 7L:,,,.YFBGr.      . ............. . .      .LBB: .:,vi ",0Ah,0Dh,0                                                                  
strWin18   BYTE ",Ui,,:.,i :XikS7,                       .:7J7.,rPBr.,,iv ",0Ah,0Dh,0                                                                  
strWin19   BYTE "iJ:.:.,.. .X, :NBM8X5Lrii::::::::irL2F0ZOFv. ,i .::.:,:v.",0Ah,0Dh,0                                                                   
strWin20   BYTE ":j:,,:,,.. jq    .iY58MBMM8MGO8MGMZXLi,.    Yr ....,,,:L ",0Ah,0Dh,0                                                                  
strWin21   BYTE "iY:,:.,.,. .BB2.                        .LBBF ..,.,,:.:7.",0Ah,0Dh,0                                                                  
strWin22   BYTE ":u:,,:.,,.  2BBBB0r.               ,:LqBBBBq  .,.,,,,,:Y ",0Ah,0Dh,0                  
strWin23   BYTE ".J;.:,,.,,. iMBBBBBBBBBBBBBBBBBBBBBBBBBBBBN  ...,.:,:,rr ",0Ah,0Dh,0                 
strWin24   BYTE " Y7:,:.,,,. .PBBBBBBBBBBBBBBBBBBBBBBBBBBB8. ...,,:,:,:7; ",0Ah,0Dh,0
strWin25   BYTE " :j:,,,,,.,. YOBBBBBBBMGBBBBBBBZMMBBBBBBM, .,.,,:,,,::v. ",0Ah,0Dh,0
strWin26   BYTE "  vJ,,::,:,, iNMBBBBBB8MBBMMMMGMEGMBBBBB:  ,,,,,,:,::L:  ",0Ah,0Dh,0                    
strWin27   BYTE "  .jr.:,:,,...kEMBBBBBOP5Ukq0FXqGGBBBBBr  ,,,,,,,,:.rr   ",0Ah,0Dh,0                   
strWin28   BYTE "   :ui,,:,.,..:E0BBBBqYL7YvLYjuEMBBBBBr  .,,.:,,,:,;v.   ",0Ah,0Dh,0              
strWin29   BYTE "    :ur,,,:,:. LMBBBB22UUUUU12MBBBBBMi  ,.,.,,,,:,rv,    ",0Ah,0Dh,0                    
strWin30   BYTE "     :jv,,,:,, .2B2i7qGGEO8BBBBBNkBM:  ,,,.:,:,,:7v.     ",0Ah,0Dh,0                 
strWin31   BYTE "      .7j::,,,: .X0   vjU7i:,    ;F, .:,:,:,:,::7:       ",0Ah,0Dh,0                   
strWin32   BYTE "        :u7:.:,, .kBL          YGU. .,,:,:,:,:r7.        ",0Ah,0Dh,0                                                                
strWin33   BYTE "        .rYL::.,..iZMF77r7LP8OU: .,:,:,,,:i7r:           ",0Ah,0Dh,0                                                                
strWin34   BYTE "            :LL7:,...:7U1kkSY;...,,:::,::r7r.            ",0Ah,0Dh,0                                                                  
strWin35   BYTE "              .iv77ii,,.........:,::iirrr,               ",0Ah,0Dh,0                                                                 
strWin36   BYTE "                  .ii777rr;riri777rri:.                  ",0Ah,0Dh,0                                                                
strWin37   BYTE "                        ..:,:,,..                        ",0Ah,0Dh,0                                                                 


strWin64   BYTE "                    .:v7i.                               ",0Ah,0Dh,0                                                           
strWin65   BYTE "                   :2v:ijU.   .LYjY7,                    ",0Ah,0Dh,0                                                                    
strWin66   BYTE "                  :j:         .:.  :ui                   ",0Ah,0Dh,0                                                                    
strWin67   BYTE "                  .,     .:::::      ;                   ",0Ah,0Dh,0                                                                    
strWin68   BYTE "                  :       riiii   .   .                  ",0Ah,0Dh,0                                                                    
strWin69   BYTE "              .rLr,:uBBE,  ...  rBBBki:ir:.              ",0Ah,0Dh,0                                                         
strWin70   BYTE "           .iYvi. FZiYPZB7  .  FBkP:,M1 ,ivr:            ",0Ah,0Dh,0                         
strWin71   BYTE "         .rur:.. LBS.YBFPB. . :Bk8BY:0B7 .,:rv:          ",0Ah,0Dh,0                            
strWin72   BYTE "        ij7:,.,. UMBBBBBZP. . .P8BBBBB82....,:7r:        ",0Ah,0Dh,0                               
strWin73   BYTE "      .Y7:.,....,EMBBBB8EY ..  UZGBBBOO5......,:rr       ",0Ah,0Dh,0                              
strWin74   BYTE "     :Ur:.,....  .LXNU2q8. ..  ,OSUUNU:   ....,.:iv.     ",0Ah,0Dh,0                              
strWin75   BYTE "    iUi,,,......   ,FBBB:  ...  iBBBJ    ......,.::Y.    ",0Ah,0Dh,0                               
strWin76   BYTE "   :U:,,:........   .1X:  .....  ,1r    ......,.,,,:Y.   ",0Ah,0Dh,0                               
strWin77   BYTE "  .ur:,,.,..........     .......     ............:,,ir   ",0Ah,0Dh,0                           
strWin78   BYTE "  Y7:,,..   . ....... ..................... ...   ,,:ri  ",0Ah,0Dh,0                         
strWin79   BYTE " iji.,,. :LJi, ............................. :XY   ,,:Y. ",0Ah,0Dh,0                                                                  
strWin80   BYTE " 7L:,,,.YFBGr.      . ............. . .      .LBB: .:,vi ",0Ah,0Dh,0                                                                  
strWin81   BYTE ",Ui,,:.,i :XikS7,                       .:7J7.,rPBr.,,iv ",0Ah,0Dh,0                                                                  
strWin82   BYTE "iJ:.:.,.. .X, :NBM8X5Lrii::::::::irL2F0ZOFv. ,i .::.:,:v.",0Ah,0Dh,0                                                                   
strWin83   BYTE ":j:,,:,,.. jq    .iY58MBMM8MGO8MGMZXLi,.    Yr ....,,,:L ",0Ah,0Dh,0                                                                  
strWin84   BYTE "iY:,:.,.,. .BB2.                        .LBBF...,.,,:.:7.",0Ah,0Dh,0                                                                  
strWin85   BYTE ":u:,,:.,,.  2BBBB0r.               ,:LqBBBBq...,.,,,,,:Y ",0Ah,0Dh,0                  
strWin86   BYTE ".J;.:,,.,,. .PBBBBBBBBBBBBBBBBBBBBBBBBBBB8.  ...,.:,:,rr ",0Ah,0Dh,0                 
strWin87   BYTE " Y7:,:.,,,.  YOBBBBBBBMGBBBBBBBZMMBBBBBBM,  ...,,:,:,:7; ",0Ah,0Dh,0
strWin88   BYTE " :j:,,,,,.,. iNMBBBBBB8MBBMMMMGMEGMBBBBB: .,.,,:.,,,::v. ",0Ah,0Dh,0
strWin89   BYTE "  vJ,,::,:,,  kEMBBBBBOP5Ukq0FXqGGBBBBBr  ,,,,,.,:,::L:  ",0Ah,0Dh,0                    
strWin90   BYTE "  .jr.:,:,,... E0BBBBqYL7YvLYjuEMBBBBBr  ,,,,,.,,,:.rr   ",0Ah,0Dh,0                   
strWin91   BYTE "   :ui,,:,.,..: LMBBBB22UUUUU12MBBBBBMi  .,,.:,,,:,;v.   ",0Ah,0Dh,0              
strWin92   BYTE "    :ur,,,:,:.   2B2i7qGGEO8BBBBBNkBM:  ,.,.,,,,:,rv,    ",0Ah,0Dh,0                    
strWin93   BYTE "     :jv,,,:,,    X0   vjU7i:,    ;F  ,,,,.:,:,,:7v.     ",0Ah,0Dh,0                 
strWin94   BYTE "      .7j::,,,:   .kBL          YGU .,:,:,:,:,::7:       ",0Ah,0Dh,0                   
strWin95   BYTE "        :u7:.:,,   iZMF77r7LP8OU:. .,,,:,:,:,:r7..       ",0Ah,0Dh,0                                                                
strWin96   BYTE "        .rYL::.,..   :7U1kkSY; .,:,,,:,,,:i7r:           ",0Ah,0Dh,0                                                                
strWin97   BYTE "            :LL7:,..............,,:::,::r7r.             ",0Ah,0Dh,0                                                                  
strWin98   BYTE "              .iv77ii,,.........:,::iirrr,               ",0Ah,0Dh,0                                                                 
strWin99   BYTE "                  .ii777rr;riri777rri:.                  ",0Ah,0Dh,0                                                                
strWin01   BYTE "                        ..:,:,,..                        ",0Ah,0Dh,0     

strWin100    BYTE "                    .:v7i.                               ",0Ah,0Dh,0                                                                     
strWin101    BYTE "                   :2v:ijU.   .LYjY7,                    ",0Ah,0Dh,0                                                                    
strWin102    BYTE "                  :j:         .:.  :ui                   ",0Ah,0Dh,0                                                                    
strWin103    BYTE "                  .,     .:::::      ;                   ",0Ah,0Dh,0                                                                    
strWin104    BYTE "                  :       riiii   .   .                  ",0Ah,0Dh,0                                                                    
strWin105    BYTE "              .rLr,:uBBE,  ...  rBBBki:ir:.              ",0Ah,0Dh,0                                                         
strWin106    BYTE "           .iYvi. FZiYPZB7  .  FBkP:,M1 ,ivr:            ",0Ah,0Dh,0                         
strWin107    BYTE "         .rur:.. LBS.YBFPB. . :Bk8BY:0B7 .,:rv:          ",0Ah,0Dh,0                            
strWin108    BYTE "        ij7:,.,. UMBBBBBZP. . .P8BBBBB82....,:7r:        ",0Ah,0Dh,0                               
strWin109    BYTE "      .Y7:.,....,EMBBBB8EY ..  UZGBBBOO5......,:rr       ",0Ah,0Dh,0                              
strWin110    BYTE "     :Ur:.,....  .LXNU2q8. ..  ,OSUUNU:   ....,.:iv.     ",0Ah,0Dh,0                              
strWin111    BYTE "    iUi,,,......   ,FBBB:  ...  iBBBJ    ......,.::Y.    ",0Ah,0Dh,0                               
strWin112    BYTE "   :U:,,:........   .1X:  .....  ,1r    ......,.,,,:Y.   ",0Ah,0Dh,0                               
strWin113    BYTE "  .ur:,,.,..........     .......     ............:,,ir   ",0Ah,0Dh,0                           
strWin114    BYTE "  Y7:,,..   . ....... ..................... ...   ,,:ri  ",0Ah,0Dh,0                         
strWin115    BYTE " iji.,,. :LJi, ............................. :XY   ,,:Y. ",0Ah,0Dh,0                                                                  
strWin116    BYTE " 7L:,,,.YFBGr.      . ............. . .      .LBB: .:,vi ",0Ah,0Dh,0                                                                  
strWin117    BYTE ",Ui,,:.,i :XikS7,                       .:7J7.,rPBr.,,iv ",0Ah,0Dh,0                                                                  
strWin118    BYTE "iJ:.:.,.. .X, :NBM8X5Lrii::::::::irL2F0ZOFv. ,i .::.:,:v.",0Ah,0Dh,0                                                                   
strWin119    BYTE ":j:,,:,,.. jq    .iY58MBMM8MGO8MGMZXLi,.    Yr ....,,,:L ",0Ah,0Dh,0                                                                  
strWin120    BYTE "iY:,:.,.,. .BB2.                        .LBBF ..,.,,:.:7.",0Ah,0Dh,0                                                                  
strWin121    BYTE ":u:,,:.,,.  2BBBB0r.               ,:LqBBBBq  .,.,,,,,:Y ",0Ah,0Dh,0                  
strWin122    BYTE ".J;.:,,.,,.  iNMBBBBBB8MBBMMMMGMEGMBBBBBB:.  ..,.,.:,:,rr",0Ah,0Dh,0                 
strWin123    BYTE "Y7:,:.,,,.   kEMBBBBBOP5Ukq0FXqGGBBBBBBr,. ,...,,:,:,,7: ",0Ah,0Dh,0
strWin124    BYTE " :j:,,,,,.,.   E0BBBBqYL7YvLYjuEMBBBBBr   .,:.,,,,,,::v. ",0Ah,0Dh,0
strWin125    BYTE "  vJ,,::,:,,    LMBBBB22UUUUU12MBBBBMi   ,,,,,,,,:,::L:  ",0Ah,0Dh,0                    
strWin126    BYTE "  .jr.:,:,,...   2B2i7qGGEO8BBBBNBkM:  , ,,,,,,,,,,:.rr  ",0Ah,0Dh,0                   
strWin127    BYTE "   :ui,,:,.,..:   kBL          YGUB.   ,,,:,,,,,,,,;v.   ",0Ah,0Dh,0              
strWin128    BYTE "    :ur,,,:,:.:    iZMF77r7LP8OUB::   .,.,,,,,,,,:,rv,   ",0Ah,0Dh,0                    
strWin129    BYTE "     :jv,,,:,,::,,,,,,:7U1kkSY;,,  ,,,:,,,,,,,,,:7v.     ",0Ah,0Dh,0                 
strWin130    BYTE "      .7j::,,,:::.....,:,:,:,:,:,:,:,:,:,:,:,:,::7:      ",0Ah,0Dh,0                   
strWin131    BYTE "        :u7:.:,,:::...,,,:,:,:,:,:,:,:,:,:,:,:r7.        ",0Ah,0Dh,0                                                                
strWin132    BYTE "        .rYL::.,......,:,,,,:,:,:,:,::,,,:i7r:           ",0Ah,0Dh,0                                                                
strWin133    BYTE "            :LL7:,.............,.,,:::,::r7r.            ",0Ah,0Dh,0                                                                  
strWin134    BYTE "              .iv77ii,,..........:,::iirrr,              ",0Ah,0Dh,0                                                                 
strWin135    BYTE "                  .ii777rr;riri777rri:.                  ",0Ah,0Dh,0                                                                
strWin136    BYTE "                        .:,:,,..                         ",0Ah,0Dh,0     

.code
main PROC
mov ecx,1
LR:
call SetCL
mov edx, offset strWelcome
call WriteString

call random
call OuputAns
push ecx
mov ecx,10
L4:
call SetCL
mov edx, offset strInput
call WriteString
push ecx
call insert2
pop ecx
call checkA
cmp a,4
je L8
call checkB
call OuputAB
loop L4
L8:
call SetCL
pop ecx
mov edx, offset strR
call WriteString
call ReadDec
cmp eax,1
ja LEX
inc ecx
call Clear
call Clrscr
loop LR
LEX:
exit
main ENDP

insert2 PROC
mov ecx,1
L9:
call insert
.IF (y==2)
dec y
inc ecx
loop L9
.ENDIF
ret
insert2 ENDP

SetCL PROC
mov eax,yellow +(blue*16)
call SetTextcolor
ret
SetCL ENDP

Clear PROC
mov a,0
mov b,0
mov y,1
Clear ENDP

OuputAB PROC
mov eax,green
call SetTextcolor
mov eax,a
call WriteDec
mov al,'A'
call WriteChar
mov eax,b
call WriteDec
mov al,'B'
call WriteChar
call crlf
mov a,0
mov b,0
mov y,1
ret
OuputAB ENDP

OuputAns  PROC
mov edx, offset strAns
call WriteString
mov eax, ans
call WriteDec
mov eax, ans+4
call WriteDec
mov eax, ans+8
call WriteDec
mov eax, ans+12
call WriteDec
call crlf
ret
OuputAns ENDP

random PROC
L1: 
call randomize
mov eax , 9         ;介於0~9之間的數
call RandomRange 
.IF x==0
inc eax
mov [ans], eax
inc x
.ENDIF
mov eax , 10         ;介於0~9之間的數
call RandomRange  
.IF x==1
mov [ans+4], eax
inc x
.ENDIF
mov eax , 10         ;介於0~9之間的數
call RandomRange 
.IF x==2
mov [ans+8], eax
inc x
.ENDIF  
mov eax , 10         ;介於0~9之間的數
call RandomRange 
.IF x==3
mov [ans+12], eax
inc x
.ENDIF
mov x, 0
mov esi, offset ans
mov eax, [esi]  
.IF  ((eax==ans+4) || (eax==ans+8) || (eax==ans+12))
jp L1
.ENDIF
mov eax, [esi+4]  
.IF  ((eax==ans+8) || (eax==ans+12))
jp L1
.ENDIF
mov eax, [esi+8]  
.IF  ((eax==ans+12))
jp L1
.ENDIF

ret
random ENDP

insert PROC
mov eax,yellow +(blue*16)
call SetTextcolor
L2:
call ReadDec
cmp eax,1000
jb L5
cmp eax,10000
jae L5
mov edx,0
mov divi,1000
div divi
mov gus,eax
mov rem, edx
mov eax, rem
mov edx,0
mov divi,100
div divi
mov gus+4 , eax
mov rem, edx
mov eax, rem
mov edx,0
mov divi,10
div divi
mov gus+8 , eax
mov gus+12, edx
mov esi, offset gus
mov eax, [esi]  
.IF  ((eax==gus+4) || (eax==gus+8) || (eax==gus+12))
jp L5
.ENDIF
mov eax, [esi+4]  
.IF  ((eax==gus+8) || (eax==gus+12))
jp L5
.ENDIF
mov eax, [esi+8]  
.IF  (eax==gus+12)
jp L5
.ENDIF
ret
L5:
mov eax,red
call SetTextcolor
mov edx, offset strError
call WriteString
mov a,0
mov b,0
inc y
ret  
insert ENDP

checkA PROC
mov eax,ans
.IF  (eax == gus)
inc a
.ENDIF
mov eax,ans+4
.IF  (eax == gus+4)
inc a
.ENDIF
mov eax,ans+8
.IF  (eax == gus+8)
inc a
.ENDIF
mov eax,ans+12
.IF  (eax == gus+12)
inc a
.ENDIF
.IF (a==4)
call Clrscr

mov edx, offset strWin
mov eax,yellow 
call SetTextcolor
call WriteString

mov eax,500
call Delay

call Clrscr

mov edx, offset strWin100
call WriteString
mov edx, offset strWin101
call WriteString
mov edx, offset strWin102
call WriteString
mov edx, offset strWin103
call WriteString
mov edx, offset strWin104
call WriteString
mov edx, offset strWin105
call WriteString
mov edx, offset strWin106
call WriteString
mov edx, offset strWin107
call WriteString
mov edx, offset strWin108
call WriteString
mov edx, offset strWin109
call WriteString
mov edx, offset strWin110
call WriteString
mov edx, offset strWin111
call WriteString
mov edx, offset strWin112
call WriteString
mov edx, offset strWin113
call WriteString
mov edx, offset strWin114
call WriteString
mov edx, offset strWin115
call WriteString
mov edx, offset strWin116
call WriteString
mov edx, offset strWin117
call WriteString
mov edx, offset strWin118
call WriteString
mov edx, offset strWin119
call WriteString
mov edx, offset strWin120
call WriteString
mov edx, offset strWin121
call WriteString
mov edx, offset strWin122
call WriteString
mov edx, offset strWin123
call WriteString
mov edx, offset strWin124
call WriteString
mov edx, offset strWin125
call WriteString
mov edx, offset strWin126
call WriteString
mov edx, offset strWin127
call WriteString
mov edx, offset strWin128
call WriteString
mov edx, offset strWin129
call WriteString
mov edx, offset strWin130
call WriteString
mov edx, offset strWin131
call WriteString
mov edx, offset strWin132
call WriteString
mov edx, offset strWin133
call WriteString
mov edx, offset strWin134
call WriteString
mov edx, offset strWin135
call WriteString
mov edx, offset strWin136
call WriteString

mov eax,600
call Delay

call Clrscr

mov edx, offset strWin64
call WriteString
mov edx, offset strWin65
call WriteString
mov edx, offset strWin66
call WriteString
mov edx, offset strWin67
call WriteString
mov edx, offset strWin68
call WriteString
mov edx, offset strWin69
call WriteString
mov edx, offset strWin70
call WriteString
mov edx, offset strWin71
call WriteString
mov edx, offset strWin72
call WriteString
mov edx, offset strWin73
call WriteString
mov edx, offset strWin74
call WriteString
mov edx, offset strWin75
call WriteString
mov edx, offset strWin76
call WriteString
mov edx, offset strWin77
call WriteString
mov edx, offset strWin78
call WriteString
mov edx, offset strWin79
call WriteString
mov edx, offset strWin80
call WriteString
mov edx, offset strWin81
call WriteString
mov edx, offset strWin82
call WriteString
mov edx, offset strWin83
call WriteString
mov edx, offset strWin84
call WriteString
mov edx, offset strWin85
call WriteString
mov edx, offset strWin86
call WriteString
mov edx, offset strWin87
call WriteString
mov edx, offset strWin88
call WriteString
mov edx, offset strWin89
call WriteString
mov edx, offset strWin90
call WriteString
mov edx, offset strWin91
call WriteString
mov edx, offset strWin92
call WriteString
mov edx, offset strWin93
call WriteString
mov edx, offset strWin94
call WriteString
mov edx, offset strWin95
call WriteString
mov edx, offset strWin96
call WriteString
mov edx, offset strWin97
call WriteString
mov edx, offset strWin98
call WriteString
mov edx, offset strWin99
call WriteString
mov edx, offset strWin01
call WriteString

mov eax,500
call Delay

call Clrscr

mov edx, offset strWin1
call WriteString
mov edx, offset strWin2
call WriteString
mov edx, offset strWin3
call WriteString
mov edx, offset strWin4
call WriteString
mov edx, offset strWin5
call WriteString
mov edx, offset strWin6
call WriteString
mov edx, offset strWin7
call WriteString
mov edx, offset strWin8
call WriteString
mov edx, offset strWin9
call WriteString
mov edx, offset strWin10
call WriteString
mov edx, offset strWin11
call WriteString
mov edx, offset strWin12
call WriteString
mov edx, offset strWin13
call WriteString
mov edx, offset strWin14
call WriteString
mov edx, offset strWin15
call WriteString
mov edx, offset strWin16
call WriteString
mov edx, offset strWin17
call WriteString
mov edx, offset strWin18
call WriteString
mov edx, offset strWin19
call WriteString
mov edx, offset strWin20
call WriteString
mov edx, offset strWin21
call WriteString
mov edx, offset strWin22
call WriteString
mov edx, offset strWin23
call WriteString
mov edx, offset strWin24
call WriteString
mov edx, offset strWin25
call WriteString
mov edx, offset strWin26
call WriteString
mov edx, offset strWin27
call WriteString
mov edx, offset strWin28
call WriteString
mov edx, offset strWin29
call WriteString
mov edx, offset strWin30
call WriteString
mov edx, offset strWin31
call WriteString
mov edx, offset strWin32
call WriteString
mov edx, offset strWin33
call WriteString
mov edx, offset strWin34
call WriteString
mov edx, offset strWin35
call WriteString
mov edx, offset strWin36
call WriteString
mov edx, offset strWin37
call WriteString
call Crlf
.ENDIF
ret
checkA ENDP

checkB PROC
mov esi, offset ans
mov eax, [esi]  
.IF  ((eax==gus+4) || (eax==gus+8) || (eax==gus+12))
inc b
.ENDIF 
mov eax, [esi+4]  
.IF  ((eax==gus) || (eax==gus+8) || (eax==gus+12))
inc b
.ENDIF 
mov eax, [esi+8]  
.IF  ((eax==gus) || (eax==gus+4) || (eax==gus+12))
inc b
.ENDIF 
mov eax, [esi+12]  
.IF  ((eax==gus) || (eax==gus+4) || (eax==gus+8))
inc b
.ENDIF 
ret
checkB ENDP

END main

