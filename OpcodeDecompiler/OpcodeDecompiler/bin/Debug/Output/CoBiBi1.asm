00000000  89C6              mov si,ax
00000002  81C62D00          add si,0x2d
00000006  B90D00            mov cx,0xd
00000009  F3A5              rep movsw
0000000B  89C2              mov dx,ax
0000000D  BDD40B            mov bp,0xbd4
00000010  B9F303            mov cx,0x3f3
00000013  0E                push cs
00000014  17                pop ss
00000015  B853AB            mov ax,0xab53
00000018  BBA5CC            mov bx,0xcca5
0000001B  06                push es
0000001C  1E                push ds
0000001D  07                pop es
0000001E  1F                pop ds
0000001F  89D4              mov sp,dx
00000021  81C4F300          add sp,0xf3
00000025  89D7              mov di,dx
00000027  BE0900            mov si,0x9
0000002A  AB                stosw
0000002B  FFE2              jmp dx
0000002D  A5                movsw
0000002E  A5                movsw
0000002F  A5                movsw
00000030  A4                movsb
00000031  89D7              mov di,dx
00000033  AB                stosw
00000034  FFE2              jmp dx
00000036  A5                movsw
00000037  A5                movsw
00000038  01EA              add dx,bp
0000003A  A5                movsw
0000003B  A5                movsw
0000003C  89D4              mov sp,dx
0000003E  A5                movsw
0000003F  A5                movsw
00000040  01CC              add sp,cx
00000042  A5                movsw
00000043  31F6              xor si,si
00000045  A5                movsw
