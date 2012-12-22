00000000  06                push es
00000001  0E                push cs
00000002  07                pop es
00000003  CD87              int 0x87
00000005  07                pop es
00000006  BB4942            mov bx,0x4249
00000009  8B17              mov dx,[bx]
0000000B  83EA02            sub dx,byte +0x2
0000000E  83EA02            sub dx,byte +0x2
00000011  73FB              jnc 0xe
00000013  B84D20            mov ax,0x204d
00000016  AB                stosw
00000017  06                push es
00000018  0E                push cs
00000019  07                pop es
0000001A  CD87              int 0x87
0000001C  07                pop es
0000001D  BB4942            mov bx,0x4249
00000020  8B17              mov dx,[bx]
00000022  83EA02            sub dx,byte +0x2
00000025  83FF02            cmp di,byte +0x2
00000028  73FB              jnc 0x25
0000002A  B84D20            mov ax,0x204d
0000002D  AB                stosw
0000002E  06                push es
0000002F  0E                push cs
00000030  07                pop es
00000031  CD87              int 0x87
00000033  07                pop es
00000034  BB4942            mov bx,0x4249
00000037  8B17              mov dx,[bx]
00000039  83EA02            sub dx,byte +0x2
0000003C  83EA02            sub dx,byte +0x2
0000003F  73FB              jnc 0x3c
00000041  B84D20            mov ax,0x204d
00000044  AB                stosw

;35 = 0x23 36 = 0x24 37 = 0x25 38 = 0x26 