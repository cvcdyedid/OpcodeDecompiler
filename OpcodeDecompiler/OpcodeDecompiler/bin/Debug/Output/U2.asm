00000000  E96000            jmp word 0x63
00000003  1E                push ds
00000004  06                push es
00000005  1F                pop ds
00000006  07                pop es
00000007  AD                lodsw
00000008  8BF8              mov di,ax
0000000A  8BD8              mov bx,ax
0000000C  B8CCCC            mov ax,0xcccc
0000000F  8BD0              mov dx,ax
00000011  81EF007C          sub di,0x7c00
00000015  FD                std
00000016  CD86              int 0x86
00000018  CD86              int 0x86
0000001A  8BC3              mov ax,bx
0000001C  BBFC03            mov bx,0x3fc
0000001F  8907              mov [bx],ax
00000021  8CCA              mov dx,cs
00000023  895702            mov [bx+0x2],dx
00000026  8ED2              mov ss,dx
00000028  8BE7              mov sp,di
0000002A  B80420            mov ax,0x2004
0000002D  FF1F              call word far [bx]
0000002F  90                nop
00000030  90                nop
00000031  90                nop
00000032  90                nop
00000033  1E                push ds
00000034  06                push es
00000035  1F                pop ds
00000036  07                pop es
00000037  AD                lodsw
00000038  8BF8              mov di,ax
0000003A  8BD8              mov bx,ax
0000003C  B8CCCC            mov ax,0xcccc
0000003F  8BD0              mov dx,ax
00000041  81EF007C          sub di,0x7c00
00000045  FD                std
00000046  CD86              int 0x86
00000048  CD86              int 0x86
0000004A  8BC3              mov ax,bx
0000004C  BBFC03            mov bx,0x3fc
0000004F  8907              mov [bx],ax
00000051  8CCA              mov dx,cs
00000053  895702            mov [bx+0x2],dx
00000056  8ED2              mov ss,dx
00000058  8BE7              mov sp,di
0000005A  B80420            mov ax,0x2004
0000005D  FF1F              call word far [bx]
0000005F  90                nop
00000060  90                nop
00000061  90                nop
00000062  90                nop
00000063  1E                push ds
00000064  06                push es
00000065  1F                pop ds
00000066  07                pop es
00000067  AD                lodsw
00000068  8BF8              mov di,ax
0000006A  8BD8              mov bx,ax
0000006C  B8CCCC            mov ax,0xcccc
0000006F  8BD0              mov dx,ax
00000071  81EF007C          sub di,0x7c00
00000075  FD                std
00000076  CD86              int 0x86
00000078  CD86              int 0x86
0000007A  8BC3              mov ax,bx
0000007C  BBFC03            mov bx,0x3fc
0000007F  8907              mov [bx],ax
00000081  8CCA              mov dx,cs
00000083  895702            mov [bx+0x2],dx
00000086  8ED2              mov ss,dx
00000088  8BE7              mov sp,di
0000008A  B80420            mov ax,0x2004
0000008D  FF1F              call word far [bx]
0000008F  90                nop
00000090  90                nop
00000091  90                nop
00000092  90                nop
00000093  1E                push ds
00000094  06                push es
00000095  1F                pop ds
00000096  07                pop es
00000097  AD                lodsw
00000098  8BF8              mov di,ax
0000009A  8BD8              mov bx,ax
0000009C  B8CCCC            mov ax,0xcccc
0000009F  8BD0              mov dx,ax
000000A1  81EF007C          sub di,0x7c00
000000A5  FD                std
000000A6  CD86              int 0x86
000000A8  CD86              int 0x86
000000AA  8BC3              mov ax,bx
000000AC  BBFC03            mov bx,0x3fc
000000AF  8907              mov [bx],ax
000000B1  8CCA              mov dx,cs
000000B3  895702            mov [bx+0x2],dx
000000B6  8ED2              mov ss,dx
000000B8  8BE7              mov sp,di
000000BA  B80420            mov ax,0x2004
000000BD  FF1F              call word far [bx]
000000BF  90                nop
000000C0  90                nop
000000C1  90                nop
000000C2  90                nop
000000C3  1E                push ds
000000C4  06                push es
000000C5  1F                pop ds
000000C6  07                pop es
000000C7  AD                lodsw
000000C8  8BF8              mov di,ax
000000CA  8BD8              mov bx,ax
000000CC  B8CCCC            mov ax,0xcccc
000000CF  8BD0              mov dx,ax
000000D1  81EF007C          sub di,0x7c00
000000D5  FD                std
000000D6  CD86              int 0x86
000000D8  CD86              int 0x86
000000DA  8BC3              mov ax,bx
000000DC  BBFC03            mov bx,0x3fc
000000DF  8907              mov [bx],ax
000000E1  8CCA              mov dx,cs
000000E3  895702            mov [bx+0x2],dx
000000E6  8ED2              mov ss,dx
000000E8  8BE7              mov sp,di
000000EA  B80420            mov ax,0x2004
000000ED  FF1F              call word far [bx]
000000EF  90                nop
000000F0  90                nop
000000F1  90                nop
000000F2  90                nop
000000F3  0000              add [bx+si],al
000000F5  0000              add [bx+si],al
000000F7  0000              add [bx+si],al
000000F9  0000              add [bx+si],al
000000FB  0000              add [bx+si],al
000000FD  0000              add [bx+si],al
000000FF  0000              add [bx+si],al
00000101  0000              add [bx+si],al
00000103  0000              add [bx+si],al
00000105  0000              add [bx+si],al
00000107  0000              add [bx+si],al
00000109  0000              add [bx+si],al
0000010B  0000              add [bx+si],al
0000010D  0000              add [bx+si],al
0000010F  0000              add [bx+si],al
00000111  0000              add [bx+si],al
00000113  0000              add [bx+si],al
00000115  0000              add [bx+si],al
00000117  0000              add [bx+si],al
00000119  0000              add [bx+si],al
0000011B  0000              add [bx+si],al
0000011D  0000              add [bx+si],al
0000011F  0000              add [bx+si],al
00000121  0000              add [bx+si],al
00000123  0000              add [bx+si],al
00000125  0000              add [bx+si],al
00000127  0000              add [bx+si],al
00000129  0000              add [bx+si],al
0000012B  0000              add [bx+si],al
0000012D  0000              add [bx+si],al
0000012F  0000              add [bx+si],al
00000131  0000              add [bx+si],al
00000133  0000              add [bx+si],al
00000135  0000              add [bx+si],al
00000137  0000              add [bx+si],al
00000139  0000              add [bx+si],al
0000013B  0000              add [bx+si],al
0000013D  0000              add [bx+si],al
0000013F  0000              add [bx+si],al
00000141  0000              add [bx+si],al
00000143  0000              add [bx+si],al
00000145  0000              add [bx+si],al
00000147  0000              add [bx+si],al
00000149  0000              add [bx+si],al
0000014B  0000              add [bx+si],al
0000014D  0000              add [bx+si],al
0000014F  0000              add [bx+si],al
00000151  0000              add [bx+si],al
00000153  0000              add [bx+si],al
00000155  0000              add [bx+si],al
00000157  0000              add [bx+si],al
00000159  0000              add [bx+si],al
0000015B  0000              add [bx+si],al
0000015D  0000              add [bx+si],al
0000015F  0000              add [bx+si],al
00000161  0000              add [bx+si],al
00000163  0000              add [bx+si],al
00000165  0000              add [bx+si],al
00000167  0000              add [bx+si],al
00000169  0000              add [bx+si],al
0000016B  0000              add [bx+si],al
0000016D  0000              add [bx+si],al
0000016F  0000              add [bx+si],al
00000171  0000              add [bx+si],al
00000173  0000              add [bx+si],al
00000175  0000              add [bx+si],al
00000177  0000              add [bx+si],al
00000179  0000              add [bx+si],al
0000017B  0000              add [bx+si],al
0000017D  0000              add [bx+si],al
0000017F  0000              add [bx+si],al
00000181  0000              add [bx+si],al
00000183  0000              add [bx+si],al
00000185  0000              add [bx+si],al
00000187  0000              add [bx+si],al
00000189  0000              add [bx+si],al
0000018B  0000              add [bx+si],al
0000018D  0000              add [bx+si],al
0000018F  0000              add [bx+si],al
00000191  0000              add [bx+si],al
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  0000              add [bx+si],al
0000019B  0000              add [bx+si],al
0000019D  0000              add [bx+si],al
0000019F  0000              add [bx+si],al
000001A1  0000              add [bx+si],al
000001A3  0000              add [bx+si],al
000001A5  0000              add [bx+si],al
000001A7  0000              add [bx+si],al
000001A9  0000              add [bx+si],al
000001AB  0000              add [bx+si],al
000001AD  0000              add [bx+si],al
000001AF  0000              add [bx+si],al
000001B1  0000              add [bx+si],al
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  0000              add [bx+si],al
000001BB  0000              add [bx+si],al
000001BD  0000              add [bx+si],al
000001BF  0000              add [bx+si],al
000001C1  0000              add [bx+si],al
000001C3  0000              add [bx+si],al
000001C5  0000              add [bx+si],al
000001C7  0000              add [bx+si],al
000001C9  0000              add [bx+si],al
000001CB  0000              add [bx+si],al
000001CD  0000              add [bx+si],al
000001CF  0000              add [bx+si],al
000001D1  0000              add [bx+si],al
000001D3  0000              add [bx+si],al
000001D5  0000              add [bx+si],al
000001D7  0000              add [bx+si],al
000001D9  0000              add [bx+si],al
000001DB  0000              add [bx+si],al
000001DD  0000              add [bx+si],al
000001DF  0000              add [bx+si],al
000001E1  0000              add [bx+si],al
000001E3  0000              add [bx+si],al
000001E5  0000              add [bx+si],al
000001E7  0000              add [bx+si],al
000001E9  0000              add [bx+si],al
000001EB  0000              add [bx+si],al
000001ED  0000              add [bx+si],al
000001EF  0000              add [bx+si],al
000001F1  0000              add [bx+si],al
000001F3  0000              add [bx+si],al
000001F5  0000              add [bx+si],al
000001F7  0000              add [bx+si],al
000001F9  0000              add [bx+si],al
000001FB  0000              add [bx+si],al
000001FD  0000              add [bx+si],al
000001FF  00                db 0x00
