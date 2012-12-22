00000000  BDD40B            mov bp,0xbd4
00000003  B9F303            mov cx,0x3f3
00000006  89C2              mov dx,ax
00000008  B853AB            mov ax,0xab53
0000000B  BBA5CC            mov bx,0xcca5
0000000E  0E                push cs
0000000F  17                pop ss
00000010  06                push es
00000011  1E                push ds
00000012  07                pop es
00000013  1F                pop ds
00000014  89D4              mov sp,dx
00000016  81C4F300          add sp,0xf3
0000001A  89D7              mov di,dx
0000001C  BE0900            mov si,0x9
0000001F  AB                stosw
00000020  FFE2              jmp dx
