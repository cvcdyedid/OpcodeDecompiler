00000000  BB0000            mov bx,0x0
00000003  C7073412          mov word [bx],0x1234
00000007  83C302            add bx,byte +0x2
0000000A  C7073412          mov word [bx],0x1234
0000000E  83C304            add bx,byte +0x4
00000011  C7073412          mov word [bx],0x1234
00000015  83C306            add bx,byte +0x6
00000018  C7073412          mov word [bx],0x1234
0000001C  EBE5              jmp short 0x3
0000001E  BB0000            mov bx,0x0
00000021  C7073412          mov word [bx],0x1234
00000025  83C302            add bx,byte +0x2
00000028  C7073412          mov word [bx],0x1234
0000002C  83C304            add bx,byte +0x4
0000002F  C7073412          mov word [bx],0x1234
00000033  83C306            add bx,byte +0x6
00000036  C7073412          mov word [bx],0x1234
0000003A  EBE5              jmp short 0x21
