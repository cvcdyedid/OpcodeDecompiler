00000000  E92600            jmp word 0x29
00000003  CC                int3
00000004  CC                int3
00000005  CC                int3
00000006  F3A5              rep movsw
00000008  CC                int3
00000009  CC                int3
0000000A  CC                int3
0000000B  B8CCCC            mov ax,0xcccc
0000000E  8BD0              mov dx,ax
00000010  BF0002            mov di,0x200
00000013  CD86              int 0x86
00000015  CD86              int 0x86
00000017  B90700            mov cx,0x7
0000001A  4F                dec di
0000001B  4F                dec di
0000001C  FD                std
0000001D  F3A5              rep movsw
0000001F  1E                push ds
00000020  1E                push ds
00000021  06                push es
00000022  1F                pop ds
00000023  07                pop es
00000024  17                pop ss
00000025  43                inc bx
00000026  43                inc bx
00000027  43                inc bx
00000028  43                inc bx
00000029  8BF0              mov si,ax
0000002B  81C67A00          add si,0x7a
0000002F  8BD8              mov bx,ax
00000031  81C36F00          add bx,0x6f
00000035  B8CCCC            mov ax,0xcccc
00000038  8BD0              mov dx,ax
0000003A  BF0002            mov di,0x200
0000003D  CD86              int 0x86
0000003F  CD86              int 0x86
00000041  B90700            mov cx,0x7
00000044  4F                dec di
00000045  4F                dec di
00000046  FD                std
00000047  F3A5              rep movsw
00000049  1E                push ds
0000004A  1E                push ds
0000004B  06                push es
0000004C  1F                pop ds
0000004D  07                pop es
0000004E  17                pop ss
0000004F  BE0004            mov si,0x400
00000052  8BE3              mov sp,bx
00000054  89DF              mov di,bx
00000056  5D                pop bp
00000057  83EC04            sub sp,byte +0x4
0000005A  81C70D00          add di,0xd
0000005E  BB0052            mov bx,0x5200
00000061  8D9700FE          lea dx,[bx-0x200]
00000065  43                inc bx
00000066  43                inc bx
00000067  43                inc bx
00000068  43                inc bx
00000069  B80002            mov ax,0x200
0000006C  33C9              xor cx,cx
0000006E  FC                cld
0000006F  F3A5              rep movsw
00000071  FEC5              inc ch
00000073  03FA              add di,dx
00000075  29C6              sub si,ax
00000077  01DC              add sp,bx
00000079  55                push bp
0000007A  FFD4              call sp
0000007C  CC                int3
0000007D  CC                int3
0000007E  CC                int3
0000007F  F3A5              rep movsw
00000081  CC                int3
00000082  CC                int3
00000083  CC                int3
00000084  B8CCCC            mov ax,0xcccc
00000087  8BD0              mov dx,ax
00000089  BF0002            mov di,0x200
0000008C  CD86              int 0x86
0000008E  CD86              int 0x86
00000090  B90700            mov cx,0x7
00000093  4F                dec di
00000094  4F                dec di
00000095  FD                std
00000096  F3A5              rep movsw
00000098  1E                push ds
00000099  1E                push ds
0000009A  06                push es
0000009B  1F                pop ds
0000009C  07                pop es
0000009D  17                pop ss
0000009E  43                inc bx
0000009F  43                inc bx
000000A0  43                inc bx
000000A1  43                inc bx
000000A2  0000              add [bx+si],al
000000A4  0000              add [bx+si],al
000000A6  0000              add [bx+si],al
000000A8  0000              add [bx+si],al
000000AA  0000              add [bx+si],al
000000AC  0000              add [bx+si],al
000000AE  0000              add [bx+si],al
000000B0  0000              add [bx+si],al
000000B2  0000              add [bx+si],al
000000B4  0000              add [bx+si],al
000000B6  0000              add [bx+si],al
000000B8  0000              add [bx+si],al
000000BA  0000              add [bx+si],al
000000BC  0000              add [bx+si],al
000000BE  0000              add [bx+si],al
000000C0  0000              add [bx+si],al
000000C2  0000              add [bx+si],al
000000C4  0000              add [bx+si],al
000000C6  0000              add [bx+si],al
000000C8  0000              add [bx+si],al
000000CA  0000              add [bx+si],al
000000CC  0000              add [bx+si],al
000000CE  0000              add [bx+si],al
000000D0  0000              add [bx+si],al
000000D2  0000              add [bx+si],al
000000D4  0000              add [bx+si],al
000000D6  0000              add [bx+si],al
000000D8  0000              add [bx+si],al
000000DA  0000              add [bx+si],al
000000DC  0000              add [bx+si],al
000000DE  0000              add [bx+si],al
000000E0  0000              add [bx+si],al
000000E2  0000              add [bx+si],al
000000E4  0000              add [bx+si],al
000000E6  0000              add [bx+si],al
000000E8  0000              add [bx+si],al
000000EA  0000              add [bx+si],al
000000EC  0000              add [bx+si],al
000000EE  0000              add [bx+si],al
000000F0  0000              add [bx+si],al
000000F2  0000              add [bx+si],al
000000F4  0000              add [bx+si],al
000000F6  0000              add [bx+si],al
000000F8  0000              add [bx+si],al
000000FA  0000              add [bx+si],al
000000FC  0000              add [bx+si],al
000000FE  0000              add [bx+si],al
00000100  0000              add [bx+si],al
00000102  0000              add [bx+si],al
00000104  0000              add [bx+si],al
00000106  0000              add [bx+si],al
00000108  0000              add [bx+si],al
0000010A  0000              add [bx+si],al
0000010C  0000              add [bx+si],al
0000010E  0000              add [bx+si],al
00000110  0000              add [bx+si],al
00000112  0000              add [bx+si],al
00000114  0000              add [bx+si],al
00000116  0000              add [bx+si],al
00000118  0000              add [bx+si],al
0000011A  0000              add [bx+si],al
0000011C  0000              add [bx+si],al
0000011E  0000              add [bx+si],al
00000120  0000              add [bx+si],al
00000122  0000              add [bx+si],al
00000124  0000              add [bx+si],al
00000126  0000              add [bx+si],al
00000128  0000              add [bx+si],al
0000012A  0000              add [bx+si],al
0000012C  0000              add [bx+si],al
0000012E  0000              add [bx+si],al
00000130  0000              add [bx+si],al
00000132  0000              add [bx+si],al
00000134  0000              add [bx+si],al
00000136  0000              add [bx+si],al
00000138  0000              add [bx+si],al
0000013A  0000              add [bx+si],al
0000013C  0000              add [bx+si],al
0000013E  0000              add [bx+si],al
00000140  0000              add [bx+si],al
00000142  0000              add [bx+si],al
00000144  0000              add [bx+si],al
00000146  0000              add [bx+si],al
00000148  0000              add [bx+si],al
0000014A  0000              add [bx+si],al
0000014C  0000              add [bx+si],al
0000014E  0000              add [bx+si],al
00000150  0000              add [bx+si],al
00000152  0000              add [bx+si],al
00000154  0000              add [bx+si],al
00000156  0000              add [bx+si],al
00000158  0000              add [bx+si],al
0000015A  0000              add [bx+si],al
0000015C  0000              add [bx+si],al
0000015E  0000              add [bx+si],al
00000160  0000              add [bx+si],al
00000162  0000              add [bx+si],al
00000164  0000              add [bx+si],al
00000166  0000              add [bx+si],al
00000168  0000              add [bx+si],al
0000016A  0000              add [bx+si],al
0000016C  0000              add [bx+si],al
0000016E  0000              add [bx+si],al
00000170  0000              add [bx+si],al
00000172  0000              add [bx+si],al
00000174  0000              add [bx+si],al
00000176  0000              add [bx+si],al
00000178  0000              add [bx+si],al
0000017A  0000              add [bx+si],al
0000017C  0000              add [bx+si],al
0000017E  0000              add [bx+si],al
00000180  0000              add [bx+si],al
00000182  0000              add [bx+si],al
00000184  0000              add [bx+si],al
00000186  0000              add [bx+si],al
00000188  0000              add [bx+si],al
0000018A  0000              add [bx+si],al
0000018C  0000              add [bx+si],al
0000018E  0000              add [bx+si],al
00000190  0000              add [bx+si],al
00000192  0000              add [bx+si],al
00000194  0000              add [bx+si],al
00000196  0000              add [bx+si],al
00000198  0000              add [bx+si],al
0000019A  0000              add [bx+si],al
0000019C  0000              add [bx+si],al
0000019E  0000              add [bx+si],al
000001A0  0000              add [bx+si],al
000001A2  0000              add [bx+si],al
000001A4  0000              add [bx+si],al
000001A6  0000              add [bx+si],al
000001A8  0000              add [bx+si],al
000001AA  0000              add [bx+si],al
000001AC  0000              add [bx+si],al
000001AE  0000              add [bx+si],al
000001B0  0000              add [bx+si],al
000001B2  0000              add [bx+si],al
000001B4  0000              add [bx+si],al
000001B6  0000              add [bx+si],al
000001B8  0000              add [bx+si],al
000001BA  0000              add [bx+si],al
000001BC  0000              add [bx+si],al
000001BE  0000              add [bx+si],al
000001C0  0000              add [bx+si],al
000001C2  0000              add [bx+si],al
000001C4  0000              add [bx+si],al
000001C6  0000              add [bx+si],al
000001C8  0000              add [bx+si],al
000001CA  0000              add [bx+si],al
000001CC  0000              add [bx+si],al
000001CE  0000              add [bx+si],al
000001D0  0000              add [bx+si],al
000001D2  0000              add [bx+si],al
000001D4  0000              add [bx+si],al
000001D6  0000              add [bx+si],al
000001D8  0000              add [bx+si],al
000001DA  0000              add [bx+si],al
000001DC  0000              add [bx+si],al
000001DE  0000              add [bx+si],al
000001E0  0000              add [bx+si],al
000001E2  0000              add [bx+si],al
000001E4  0000              add [bx+si],al
000001E6  0000              add [bx+si],al
000001E8  0000              add [bx+si],al
000001EA  0000              add [bx+si],al
000001EC  0000              add [bx+si],al
000001EE  0000              add [bx+si],al
000001F0  0000              add [bx+si],al
000001F2  0000              add [bx+si],al
000001F4  0000              add [bx+si],al
000001F6  0000              add [bx+si],al
000001F8  0000              add [bx+si],al
000001FA  0000              add [bx+si],al
000001FC  0000              add [bx+si],al
000001FE  0000              add [bx+si],al