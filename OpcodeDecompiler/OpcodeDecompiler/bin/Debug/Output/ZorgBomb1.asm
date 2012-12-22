00000000  EB24              jmp short 0x26
00000002  81C61900          add si,0x19
00000006  B90600            mov cx,0x6
00000009  A4                movsb
0000000A  F3A5              rep movsw
0000000C  83C65B            add si,byte +0x5b
0000000F  B90B00            mov cx,0xb
00000012  F3A5              rep movsw
00000014  BDFF00            mov bp,0xff
00000017  EB49              jmp short 0x62
00000019  A5                movsw
0000001A  A5                movsw
0000001B  A5                movsw
0000001C  81C20014          add dx,0x1400
00000020  A5                movsw
00000021  4D                dec bp
00000022  A5                movsw
00000023  A5                movsw
00000024  740F              jz 0x35
00000026  89C6              mov si,ax
00000028  05FAFF            add ax,0xfffa
0000002B  C6060000BE        mov byte [0x0],0xbe
00000030  89360100          mov [0x1],si
00000034  C706030089C2      mov word [0x3],0xc289
0000003A  C6060500E9        mov byte [0x5],0xe9
0000003F  A30600            mov [0x6],ax
00000042  06                push es
00000043  0E                push cs
00000044  07                pop es
00000045  BB31DB            mov bx,0xdb31
00000048  B9FFE3            mov cx,0xe3ff
0000004B  B873FB            mov ax,0xfb73
0000004E  BAB84D            mov dx,0x4db8
00000051  CD87              int 0x87
00000053  07                pop es
00000054  89F2              mov dx,si
00000056  81C67E00          add si,0x7e
0000005A  B90D00            mov cx,0xd
0000005D  F3A5              rep movsw
0000005F  BD0014            mov bp,0x1400
00000062  B9F303            mov cx,0x3f3
00000065  0E                push cs
00000066  06                push es
00000067  1E                push ds
00000068  07                pop es
00000069  1F                pop ds
0000006A  17                pop ss
0000006B  B853AB            mov ax,0xab53
0000006E  BBA5CC            mov bx,0xcca5
00000071  89D4              mov sp,dx
00000073  81C4F300          add sp,0xf3
00000077  89D7              mov di,dx
00000079  31F6              xor si,si
0000007B  AB                stosw
0000007C  FFE2              jmp dx
0000007E  A5                movsw
0000007F  01EA              add dx,bp
00000081  A5                movsw
00000082  A5                movsw
00000083  89D4              mov sp,dx
00000085  A5                movsw
00000086  A5                movsw
00000087  01CC              add sp,cx
00000089  A5                movsw
0000008A  A5                movsw
0000008B  A5                movsw
0000008C  A5                movsw
0000008D  A5                movsw
0000008E  A5                movsw
0000008F  31F6              xor si,si
00000091  89D7              mov di,dx
00000093  AB                stosw
00000094  FFE2              jmp dx
