00000000  E9B800            jmp word 0xbb
00000003  8BF0              mov si,ax
00000005  8B5C01            mov bx,[si+0x1]
00000008  8DB73E00          lea si,[bx+0x3e]
0000000C  01F0              add ax,si
0000000E  AB                stosw
0000000F  33FF              xor di,di
00000011  2D0900            sub ax,0x9
00000014  8BF0              mov si,ax
00000016  B91300            mov cx,0x13
00000019  F3A5              rep movsw
0000001B  0E                push cs
0000001C  06                push es
0000001D  1F                pop ds
0000001E  07                pop es
0000001F  8BF8              mov di,ax
00000021  81C72604          add di,0x426
00000025  8BEF              mov bp,di
00000027  33F6              xor si,si
00000029  A5                movsw
0000002A  B86800            mov ax,0x68
0000002D  BBFC03            mov bx,0x3fc
00000030  B90200            mov cx,0x2
00000033  FFE5              jmp bp
00000035  A5                movsw
00000036  A5                movsw
00000037  A5                movsw
00000038  A5                movsw
00000039  A5                movsw
0000003A  A5                movsw
0000003B  E80400            call word 0x42
0000003E  2BE0              sub sp,ax
00000040  FF1F              call word far [bx]
00000042  A5                movsw
00000043  A5                movsw
00000044  A5                movsw
00000045  8F07              pop word [bx]
00000047  A5                movsw
00000048  010F              add [bx],cx
0000004A  A5                movsw
0000004B  A5                movsw
0000004C  2BE8              sub bp,ax
0000004E  A5                movsw
0000004F  A5                movsw
00000050  A5                movsw
00000051  A5                movsw
00000052  8BFD              mov di,bp
00000054  A5                movsw
00000055  FFE5              jmp bp
00000057  A5                movsw
00000058  33F6              xor si,si
0000005A  A5                movsw
0000005B  90                nop
0000005C  90                nop
0000005D  90                nop
0000005E  90                nop
0000005F  8BF0              mov si,ax
00000061  8B5C01            mov bx,[si+0x1]
00000064  8DB73E00          lea si,[bx+0x3e]
00000068  01F0              add ax,si
0000006A  AB                stosw
0000006B  33FF              xor di,di
0000006D  2D0900            sub ax,0x9
00000070  8BF0              mov si,ax
00000072  B91300            mov cx,0x13
00000075  F3A5              rep movsw
00000077  0E                push cs
00000078  06                push es
00000079  1F                pop ds
0000007A  07                pop es
0000007B  8BF8              mov di,ax
0000007D  81C72604          add di,0x426
00000081  8BEF              mov bp,di
00000083  33F6              xor si,si
00000085  A5                movsw
00000086  B86800            mov ax,0x68
00000089  BBFC03            mov bx,0x3fc
0000008C  B90200            mov cx,0x2
0000008F  FFE5              jmp bp
00000091  A5                movsw
00000092  A5                movsw
00000093  A5                movsw
00000094  A5                movsw
00000095  A5                movsw
00000096  A5                movsw
00000097  E80400            call word 0x9e
0000009A  2BE0              sub sp,ax
0000009C  FF1F              call word far [bx]
0000009E  A5                movsw
0000009F  A5                movsw
000000A0  A5                movsw
000000A1  8F07              pop word [bx]
000000A3  A5                movsw
000000A4  010F              add [bx],cx
000000A6  A5                movsw
000000A7  A5                movsw
000000A8  2BE8              sub bp,ax
000000AA  A5                movsw
000000AB  A5                movsw
000000AC  A5                movsw
000000AD  A5                movsw
000000AE  8BFD              mov di,bp
000000B0  A5                movsw
000000B1  FFE5              jmp bp
000000B3  A5                movsw
000000B4  33F6              xor si,si
000000B6  A5                movsw
000000B7  90                nop
000000B8  90                nop
000000B9  90                nop
000000BA  90                nop
000000BB  8BF0              mov si,ax
000000BD  8B5C01            mov bx,[si+0x1]
000000C0  8DB73E00          lea si,[bx+0x3e]
000000C4  01F0              add ax,si
000000C6  AB                stosw
000000C7  33FF              xor di,di
000000C9  2D0900            sub ax,0x9
000000CC  8BF0              mov si,ax
000000CE  B91300            mov cx,0x13
000000D1  F3A5              rep movsw
000000D3  0E                push cs
000000D4  06                push es
000000D5  1F                pop ds
000000D6  07                pop es
000000D7  8BF8              mov di,ax
000000D9  81C72604          add di,0x426
000000DD  8BEF              mov bp,di
000000DF  33F6              xor si,si
000000E1  A5                movsw
000000E2  B86800            mov ax,0x68
000000E5  BBFC03            mov bx,0x3fc
000000E8  B90200            mov cx,0x2
000000EB  FFE5              jmp bp
000000ED  A5                movsw
000000EE  A5                movsw
000000EF  A5                movsw
000000F0  A5                movsw
000000F1  A5                movsw
000000F2  A5                movsw
000000F3  E80400            call word 0xfa
000000F6  2BE0              sub sp,ax
000000F8  FF1F              call word far [bx]
000000FA  A5                movsw
000000FB  A5                movsw
000000FC  A5                movsw
000000FD  8F07              pop word [bx]
000000FF  A5                movsw
00000100  010F              add [bx],cx
00000102  A5                movsw
00000103  A5                movsw
00000104  2BE8              sub bp,ax
00000106  A5                movsw
00000107  A5                movsw
00000108  A5                movsw
00000109  A5                movsw
0000010A  8BFD              mov di,bp
0000010C  A5                movsw
0000010D  FFE5              jmp bp
0000010F  A5                movsw
00000110  33F6              xor si,si
00000112  A5                movsw
00000113  90                nop
00000114  90                nop
00000115  90                nop
00000116  90                nop
00000117  8BF0              mov si,ax
00000119  8B5C01            mov bx,[si+0x1]
0000011C  8DB73E00          lea si,[bx+0x3e]
00000120  01F0              add ax,si
00000122  AB                stosw
00000123  33FF              xor di,di
00000125  2D0900            sub ax,0x9
00000128  8BF0              mov si,ax
0000012A  B91300            mov cx,0x13
0000012D  F3A5              rep movsw
0000012F  0E                push cs
00000130  06                push es
00000131  1F                pop ds
00000132  07                pop es
00000133  8BF8              mov di,ax
00000135  81C72604          add di,0x426
00000139  8BEF              mov bp,di
0000013B  33F6              xor si,si
0000013D  A5                movsw
0000013E  B86800            mov ax,0x68
00000141  BBFC03            mov bx,0x3fc
00000144  B90200            mov cx,0x2
00000147  FFE5              jmp bp
00000149  A5                movsw
0000014A  A5                movsw
0000014B  A5                movsw
0000014C  A5                movsw
0000014D  A5                movsw
0000014E  A5                movsw
0000014F  E80400            call word 0x156
00000152  2BE0              sub sp,ax
00000154  FF1F              call word far [bx]
00000156  A5                movsw
00000157  A5                movsw
00000158  A5                movsw
00000159  8F07              pop word [bx]
0000015B  A5                movsw
0000015C  010F              add [bx],cx
0000015E  A5                movsw
0000015F  A5                movsw
00000160  2BE8              sub bp,ax
00000162  A5                movsw
00000163  A5                movsw
00000164  A5                movsw
00000165  A5                movsw
00000166  8BFD              mov di,bp
00000168  A5                movsw
00000169  FFE5              jmp bp
0000016B  A5                movsw
0000016C  33F6              xor si,si
0000016E  A5                movsw
0000016F  90                nop
00000170  90                nop
00000171  90                nop
00000172  90                nop
00000173  8BF0              mov si,ax
00000175  8B5C01            mov bx,[si+0x1]
00000178  8DB73E00          lea si,[bx+0x3e]
0000017C  01F0              add ax,si
0000017E  AB                stosw
0000017F  33FF              xor di,di
00000181  2D0900            sub ax,0x9
00000184  8BF0              mov si,ax
00000186  B91300            mov cx,0x13
00000189  F3A5              rep movsw
0000018B  0E                push cs
0000018C  06                push es
0000018D  1F                pop ds
0000018E  07                pop es
0000018F  8BF8              mov di,ax
00000191  81C72604          add di,0x426
00000195  8BEF              mov bp,di
00000197  33F6              xor si,si
00000199  A5                movsw
0000019A  B86800            mov ax,0x68
0000019D  BBFC03            mov bx,0x3fc
000001A0  B90200            mov cx,0x2
000001A3  FFE5              jmp bp
000001A5  A5                movsw
000001A6  A5                movsw
000001A7  A5                movsw
000001A8  A5                movsw
000001A9  A5                movsw
000001AA  A5                movsw
000001AB  E80400            call word 0x1b2
000001AE  2BE0              sub sp,ax
000001B0  FF1F              call word far [bx]
000001B2  A5                movsw
000001B3  A5                movsw
000001B4  A5                movsw
000001B5  8F07              pop word [bx]
000001B7  A5                movsw
000001B8  010F              add [bx],cx
000001BA  A5                movsw
000001BB  A5                movsw
000001BC  2BE8              sub bp,ax
000001BE  A5                movsw
000001BF  A5                movsw
000001C0  A5                movsw
000001C1  A5                movsw
000001C2  8BFD              mov di,bp
000001C4  A5                movsw
000001C5  FFE5              jmp bp
000001C7  A5                movsw
000001C8  33F6              xor si,si
000001CA  A5                movsw
000001CB  90                nop
000001CC  90                nop
000001CD  90                nop
000001CE  90                nop
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
