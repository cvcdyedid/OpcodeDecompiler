00000000  06                push es
00000001  0E                push cs
00000002  07                pop es
00000003  CD87              int 0x87
00000005  07                pop es
00000006  BB4942            mov bx,0x4249
00000009  8B17              mov dx,[bx]
0000000B  83EA03            sub dx,byte +0x3
0000000E  83EA03            sub dx,byte +0x3
00000011  73FB              jnc 0xe
00000013  1E                push ds
00000014  06                push es
00000015  1F                pop ds
00000016  A10000            mov ax,[0x0]
00000019  1F                pop ds
0000001A  3D4D20            cmp ax,0x204d
0000001D  7519              jnz 0x38
0000001F  80FB00            cmp bl,0x0
00000022  7502              jnz 0x26
00000024  001F              add [bx],bl
00000026  83C311            add bx,byte +0x11
00000029  813F0010          cmp word [bx],0x1000
0000002D  75F0              jnz 0x1f
0000002F  8B5FFE            mov bx,[bx-0x2]
00000032  C647FECC          mov byte [bx-0x2],0xcc
00000036  EBE7              jmp short 0x1f
