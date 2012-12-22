00000000  EB00              jmp short 0x2
00000002  89C6              mov si,ax
00000004  06                push es
00000005  0E                push cs
00000006  07                pop es
00000007  BB31DB            mov bx,0xdb31
0000000A  B9FFE3            mov cx,0xe3ff
0000000D  B873FB            mov ax,0xfb73
00000010  BA1E06            mov dx,0x61e
00000013  CD87              int 0x87
00000015  07                pop es
00000016  89F2              mov dx,si
00000018  BD0014            mov bp,0x1400
0000001B  B9F303            mov cx,0x3f3
0000001E  B853AB            mov ax,0xab53
00000021  BBA5CC            mov bx,0xcca5
00000024  0E                push cs
00000025  06                push es
00000026  1E                push ds
00000027  07                pop es
00000028  1F                pop ds
00000029  17                pop ss
0000002A  89D4              mov sp,dx
0000002C  81C4F300          add sp,0xf3
00000030  89D7              mov di,dx
00000032  31F6              xor si,si
00000034  AB                stosw
00000035  FFE2              jmp dx
