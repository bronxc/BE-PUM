0x004014e0:	subl %esp, $0xc<UINT8>
0x004014e3:	movl 0x405034, $0x0<UINT32>
0x004014ed:	call 0x00401f10
0x00401f10:	pushl %ebp
0x00401f11:	pushl %edi
0x00401f12:	pushl %esi
0x00401f13:	pushl %ebx
0x00401f14:	subl %esp, $0x2c<UINT8>
0x00401f17:	movl %eax, 0x403028
0x00401f1c:	movl 0x10(%esp), $0x0<UINT32>
0x00401f24:	movl 0x14(%esp), $0x0<UINT32>
0x00401f2c:	cmpl %eax, $0xbb40e64e<UINT32>
0x00401f31:	je 0x00401f42
0x00401f42:	leal %eax, 0x10(%esp)
0x00401f46:	movl (%esp), %eax
0x00401f49:	call GetSystemTimeAsFileTime@kernel32.dll
GetSystemTimeAsFileTime@kernel32.dll: API Node	
0x00401f4f:	subl %esp, $0x4<UINT8>
0x00401f52:	movl %ebx, 0x10(%esp)
0x00401f56:	xorl %ebx, 0x14(%esp)
0x00401f5a:	call GetCurrentProcessId@kernel32.dll
GetCurrentProcessId@kernel32.dll: API Node	
0x00401f60:	movl %ebp, %eax
0x00401f62:	call GetCurrentThreadId@kernel32.dll
GetCurrentThreadId@kernel32.dll: API Node	
0x00401f68:	movl %edi, %eax
0x00401f6a:	call GetTickCount@kernel32.dll
GetTickCount@kernel32.dll: API Node	
0x00401f70:	movl %esi, %eax
0x00401f72:	leal %eax, 0x18(%esp)
0x00401f76:	movl (%esp), %eax
0x00401f79:	call QueryPerformanceCounter@kernel32.dll
QueryPerformanceCounter@kernel32.dll: API Node	
0x00401f7f:	subl %esp, $0x4<UINT8>
0x00401f82:	xorl %ebx, 0x18(%esp)
0x00401f86:	xorl %ebx, 0x1c(%esp)
0x00401f8a:	xorl %ebx, %ebp
0x00401f8c:	xorl %edi, %ebx
0x00401f8e:	xorl %esi, %edi
0x00401f90:	cmpl %esi, $0xbb40e64e<UINT32>
0x00401f96:	je 24
0x00401f98:	movl %eax, %esi
0x00401f9a:	notl %eax
0x00401f9c:	movl 0x403028, %esi
0x00401fa2:	movl 0x40302c, %eax
0x00401fa7:	addl %esp, $0x2c<UINT8>
0x00401faa:	popl %ebx
0x00401fab:	popl %esi
0x00401fac:	popl %edi
0x00401fad:	popl %ebp
0x00401fae:	ret

0x004014f2:	addl %esp, $0xc<UINT8>
0x004014f5:	jmp 0x00401180
0x00401180:	pushl %ebp
0x00401181:	xorl %eax, %eax
0x00401183:	movl %ecx, $0x11<UINT32>
0x00401188:	movl %ebp, %esp
0x0040118a:	pushl %edi
0x0040118b:	pushl %esi
0x0040118c:	leal %edx, -92(%ebp)
0x0040118f:	pushl %ebx
0x00401190:	movl %edi, %edx
0x00401192:	subl %esp, $0x7c<UINT8>
0x00401195:	rep stosl %es:(%edi), %eax
0x00401197:	movb %al, $0x30<UINT8>
0x00401199:	call 0x004025d0
0x004025d0:	pushl %ecx
0x004025d1:	pushl %eax
0x004025d2:	cmpl %eax, $0x1000<UINT32>
0x004025d7:	leal %ecx, 0xc(%esp)
0x004025db:	jb 0x004025f2
0x004025f2:	subl %ecx, %eax
0x004025f4:	orl (%ecx), $0x0<UINT8>
0x004025f7:	popl %eax
0x004025f8:	popl %ecx
0x004025f9:	ret

0x0040119e:	subl %esp, %eax
0x004011a0:	leal %eax, 0x1b(%esp)
0x004011a4:	andl %eax, $0xfffffff0<UINT8>
0x004011a7:	movl (%eax), $0xcccccccc<UINT32>
0x004011ad:	movl 0x4(%eax), $0xcccccccc<UINT32>
0x004011b4:	movl 0x8(%eax), $0xcccccccc<UINT32>
0x004011bb:	movl 0xc(%eax), $0xcccccccc<UINT32>
0x004011c2:	movl 0x10(%eax), $0xcccccccc<UINT32>
0x004011c9:	movl 0x14(%eax), $0xcccccccc<UINT32>
0x004011d0:	movl 0x18(%eax), $0xcccccccc<UINT32>
0x004011d7:	movl 0x1c(%eax), $0xcccccccc<UINT32>
0x004011de:	andl %esp, $0xfffffff0<UINT8>
0x004011e1:	movl %esi, 0x405034
0x004011e7:	testl %esi, %esi
0x004011e9:	jne 641
0x004011ef:	movl %eax, %fs:0x18
0x004011f5:	xorl %esi, %esi
0x004011f7:	movl %ebx, 0x4(%eax)
0x004011fa:	movl %edi, 0x406138
0x00401200:	jmp 0x00401216
0x00401216:	movl %eax, %esi
0x00401218:	cmpxchgl 0x405438, %ebx
0x00401220:	testl %eax, %eax
0x00401222:	jne -34
0x00401224:	movl %eax, 0x40543c
0x00401229:	xorl %ebx, %ebx
0x0040122b:	cmpl %eax, $0x1<UINT8>
0x0040122e:	je 496
0x00401234:	movl %eax, 0x40543c
0x00401239:	testl %eax, %eax
0x0040123b:	je 0x00401481
0x00401481:	movl 0x40543c, $0x1<UINT32>
0x0040148b:	movl 0x4(%esp), $0x407018<UINT32>
0x00401493:	movl (%esp), $0x40700c<UINT32>
0x0040149a:	call 0x00402658
0x00402658:	jmp _initterm@msvcrt.dll
_initterm@msvcrt.dll: API Node	
0x0040149f:	jmp 0x0040124b
0x0040124b:	movl %eax, 0x40543c
0x00401250:	cmpl %eax, $0x1<UINT8>
0x00401253:	je 0x0040143e
0x0040143e:	movl 0x4(%esp), $0x407008<UINT32>
0x00401446:	movl (%esp), $0x407000<UINT32>
0x0040144d:	call 0x00402658
0x00401452:	testl %ebx, %ebx
0x00401454:	movl 0x40543c, $0x2<UINT32>
0x0040145e:	jne -515
0x00401464:	xchgl 0x405438, %ebx
0x0040146a:	jmp 0x00401261
0x00401261:	movl %eax, 0x404018
0x00401266:	testl %eax, %eax
0x00401268:	je 28
0x0040126a:	movl 0x8(%esp), $0x0<UINT32>
0x00401272:	movl 0x4(%esp), $0x2<UINT32>
0x0040127a:	movl (%esp), $0x0<UINT32>
0x00401281:	call 0x004015f0
0x004015f0:	pushl %ebx
0x004015f1:	subl %esp, $0x18<UINT8>
0x004015f4:	cmpl 0x403018, $0x2<UINT8>
0x004015fb:	movl %eax, 0x24(%esp)
0x004015ff:	je 0x0040160b
0x0040160b:	cmpl %eax, $0x2<UINT8>
0x0040160e:	je 0x00401621
0x00401621:	movl %ebx, $0x407030<UINT32>
0x00401626:	cmpl %ebx, $0x407030<UINT32>
0x0040162c:	je 0x00401615
0x00401615:	addl %esp, $0x18<UINT8>
0x00401618:	movl %eax, $0x1<UINT32>
0x0040161d:	popl %ebx
0x0040161e:	ret $0xc<UINT16>

0x00401283:	subl %esp, $0xc<UINT8>
0x00401286:	call 0x00401ba0
0x00401ba0:	movl %eax, 0x40504c
0x00401ba5:	testl %eax, %eax
0x00401ba7:	je 0x00401bb0
0x00401bb0:	pushl %ebp
0x00401bb1:	movl %ebp, %esp
0x00401bb3:	pushl %edi
0x00401bb4:	pushl %esi
0x00401bb5:	pushl %ebx
0x00401bb6:	subl %esp, $0x4c<UINT8>
0x00401bb9:	movl 0x40504c, $0x1<UINT32>
0x00401bc3:	call 0x004023f0
0x004023f0:	xorl %eax, %eax
0x004023f2:	cmpw 0x400000, $0x5a4d<UINT16>
0x004023fb:	je 0x00402400
0x00402400:	movl %eax, $0x400000<UINT32>
0x00402405:	call 0x00402280
0x00402280:	addl %eax, 0x3c(%eax)
0x00402283:	cmpl (%eax), $0x4550<UINT32>
0x00402289:	je 0x00402290
0x00402290:	cmpw 0x18(%eax), $0x10b<UINT16>
0x00402296:	sete %al
0x00402299:	movzbl %eax, %al
0x0040229c:	ret

0x0040240a:	testl %eax, %eax
0x0040240c:	je -17
0x0040240e:	movl %eax, 0x40003c
0x00402413:	movzwl %eax, 0x400006(%eax)
0x0040241a:	ret

0x00401bc8:	leal %eax, (%eax,%eax,2)
0x00401bcb:	leal %eax, 0x1e(,%eax,4)
0x00401bd2:	andl %eax, $0xfffffff0<UINT8>
0x00401bd5:	call 0x004025d0
0x00401bda:	movl 0x405050, $0x0<UINT32>
0x00401be4:	subl %esp, %eax
0x00401be6:	leal %eax, 0x1f(%esp)
0x00401bea:	andl %eax, $0xfffffff0<UINT8>
0x00401bed:	movl 0x405054, %eax
0x00401bf2:	movl %eax, $0x404474<UINT32>
0x00401bf7:	subl %eax, $0x404474<UINT32>
0x00401bfc:	cmpl %eax, $0x7<UINT8>
0x00401bff:	jle 0x00401ca0
0x00401ca0:	leal %esp, -12(%ebp)
0x00401ca3:	popl %ebx
0x00401ca4:	popl %esi
0x00401ca5:	popl %edi
0x00401ca6:	popl %ebp
0x00401ca7:	ret

0x0040128b:	movl (%esp), $0x401790<UINT32>
0x00401292:	call SetUnhandledExceptionFilter@kernel32.dll
SetUnhandledExceptionFilter@kernel32.dll: API Node	
0x00401298:	subl %esp, $0x4<UINT8>
0x0040129b:	movl 0x405044, %eax
0x004012a0:	movl (%esp), $0x401000<UINT32>
0x004012a7:	call 0x00402620
0x00402620:	movl %eax, 0x4(%esp)
0x00402624:	xchgl 0x405424, %eax
0x0040262a:	ret

0x004012ac:	call 0x00401e60
0x00401e60:	fninit
0x00401e62:	ret

0x004012b1:	movl %eax, 0x40616c
0x004012b6:	movl 0x40542c, $0x400000<UINT32>
0x004012c0:	movl %eax, (%eax)
0x004012c2:	testl %eax, %eax
0x004012c4:	je 78
0x004012c6:	xorl %ecx, %ecx
0x004012c8:	jmp 0x004012e1
0x004012e1:	movzbl %edx, (%eax)
0x004012e4:	cmpb %dl, $0x20<UINT8>
0x004012e7:	jle 0x004012d0
0x004012e9:	movl %ebx, %ecx
0x004012eb:	xorl %ebx, $0x1<UINT8>
0x004012ee:	cmpb %dl, $0x22<UINT8>
0x004012f1:	cmovel %ecx, %ebx
0x004012f4:	jmp 0x004012de
0x004012de:	addl %eax, $0x1<UINT8>
0x004012d0:	testb %dl, %dl
0x004012d2:	je 59
0x004012d4:	andl %ecx, $0x1<UINT8>
0x004012d7:	je 0x00401304
0x004012d9:	movl %ecx, $0x1<UINT32>
0x00401304:	addl %eax, $0x1<UINT8>
0x00401307:	movzbl %edx, (%eax)
0x0040130a:	cmpb %dl, $0x20<UINT8>
0x0040130d:	jle -15
0x0040130f:	movl 0x405428, %eax
0x00401314:	movl %ebx, 0x405034
0x0040131a:	testl %ebx, %ebx
0x0040131c:	je 0x00401333
0x00401333:	movl %eax, 0x40501c
0x00401338:	movl -112(%ebp), %eax
0x0040133b:	movl %esi, %eax
0x0040133d:	leal %eax, 0x4(,%eax,4)
0x00401344:	movl -116(%ebp), %eax
0x00401347:	movl (%esp), %eax
0x0040134a:	call 0x00402630
0x00402630:	jmp malloc@msvcrt.dll
malloc@msvcrt.dll: API Node	
0x0040134f:	testl %esi, %esi
0x00401351:	movl -108(%ebp), %eax
0x00401354:	movl %edi, 0x405018
0x0040135a:	jle 0x004014a4
0x004014a4:	xorl %eax, %eax
0x004014a6:	jmp 0x004013a1
0x004013a1:	movl %esi, -108(%ebp)
0x004013a4:	movl (%esi,%eax), $0x0<UINT32>
0x004013ab:	movl 0x405018, %esi
0x004013b1:	call 0x00401ef0
0x00401ef0:	movl %eax, 0x405058
0x00401ef5:	testl %eax, %eax
0x00401ef7:	je 0x00401f00
0x00401f00:	movl 0x405058, $0x1<UINT32>
0x00401f0a:	jmp 0x00401ea0
0x00401ea0:	pushl %ebx
0x00401ea1:	subl %esp, $0x18<UINT8>
0x00401ea4:	movl %ebx, 0x4026d8
0x00401eaa:	cmpl %ebx, $0xffffffff<UINT8>
0x00401ead:	je 0x00401ed0
0x00401ed0:	xorl %ebx, %ebx
0x00401ed2:	jmp 0x00401ed6
0x00401ed6:	leal %eax, 0x1(%ebx)
0x00401ed9:	movl %edx, 0x4026d8(,%eax,4)
0x00401ee0:	testl %edx, %edx
0x00401ee2:	jne -16
0x00401ee4:	jmp 0x00401eaf
0x00401eaf:	testl %ebx, %ebx
0x00401eb1:	je 0x00401ebf
0x00401ebf:	movl (%esp), $0x401e70<UINT32>
0x00401ec6:	call 0x00401770
0x00401770:	subl %esp, $0x1c<UINT8>
0x00401773:	movl %eax, 0x20(%esp)
0x00401777:	movl (%esp), %eax
0x0040177a:	call 0x004016b0
0x004016b0:	pushl %ebx
0x004016b1:	subl %esp, $0x28<UINT8>
0x004016b4:	movl %eax, 0x405434
0x004016b9:	movl (%esp), %eax
0x004016bc:	call 0x00401690
0x00401690:	movl %eax, 0x4(%esp)
0x00401694:	ret

0x004016c1:	cmpl %eax, $0xffffffff<UINT8>
0x004016c4:	movl 0x18(%esp), %eax
0x004016c8:	je 130
0x004016ce:	movl (%esp), $0x8<UINT32>
0x004016d5:	call 0x00402678
0x00402678:	jmp _lock@msvcrt.dll
_lock@msvcrt.dll: API Node	
0x004016da:	movl %eax, 0x405434
0x004016df:	movl (%esp), %eax
0x004016e2:	call 0x00401690
0x004016e7:	movl 0x18(%esp), %eax
0x004016eb:	movl %eax, 0x405430
0x004016f0:	movl (%esp), %eax
0x004016f3:	call 0x00401690
0x004016f8:	movl 0x1c(%esp), %eax
0x004016fc:	leal %eax, 0x1c(%esp)
0x00401700:	movl 0x8(%esp), %eax
0x00401704:	leal %eax, 0x18(%esp)
0x00401708:	movl 0x4(%esp), %eax
0x0040170c:	movl %eax, 0x30(%esp)
0x00401710:	movl (%esp), %eax
0x00401713:	call 0x00402680
0x00402680:	jmp __dllonexit@msvcrt.dll
__dllonexit@msvcrt.dll: API Node	
0x00401718:	movl %ebx, %eax
0x0040171a:	movl %eax, 0x18(%esp)
0x0040171e:	movl (%esp), %eax
0x00401721:	call 0x004016a0
0x004016a0:	movl %eax, 0x4(%esp)
0x004016a4:	ret

0x00401726:	movl 0x405434, %eax
0x0040172b:	movl %eax, 0x1c(%esp)
0x0040172f:	movl (%esp), %eax
0x00401732:	call 0x004016a0
0x00401737:	movl (%esp), $0x8<UINT32>
0x0040173e:	movl 0x405430, %eax
0x00401743:	call 0x00402688
0x00402688:	jmp _unlock@msvcrt.dll
_unlock@msvcrt.dll: API Node	
0x00401748:	addl %esp, $0x28<UINT8>
0x0040174b:	movl %eax, %ebx
0x0040174d:	popl %ebx
0x0040174e:	ret

0x0040177f:	testl %eax, %eax
0x00401781:	sete %al
0x00401784:	addl %esp, $0x1c<UINT8>
0x00401787:	movzbl %eax, %al
0x0040178a:	negl %eax
0x0040178c:	ret

0x00401ecb:	addl %esp, $0x18<UINT8>
0x00401ece:	popl %ebx
0x00401ecf:	ret

0x004013b6:	movl %eax, 0x40615c
0x004013bb:	movl %edx, 0x405014
0x004013c1:	movl (%eax), %edx
0x004013c3:	movl %eax, 0x405014
0x004013c8:	movl 0x8(%esp), %eax
0x004013cc:	movl %eax, 0x405018
0x004013d1:	movl 0x4(%esp), %eax
0x004013d5:	movl %eax, 0x40501c
0x004013da:	movl (%esp), %eax
0x004013dd:	call 0x00401500
0x00401500:	pushl %ebp
0x00401501:	movl %ebp, %esp
0x00401503:	andl %esp, $0xfffffff0<UINT8>
0x00401506:	subl %esp, $0xa0<UINT32>
0x0040150c:	call 0x00401ef0
0x00401ef9:	rep ret

0x00401511:	movl 0x9c(%esp), $0x0<UINT32>
0x0040151c:	leal %eax, 0x1c(%esp)
0x00401520:	movl 0x4(%esp), %eax
0x00401524:	movl (%esp), $0x404006<UINT32>
0x0040152b:	call 4408
0x00401530:	jmp 0x00401581
0x00401581:	cmpl 0x9c(%esp), $0x4<UINT8>
0x00401589:	jle 0x00401532
0x00401532:	leal %edx, 0x1c(%esp)
0x00401536:	movl %eax, 0x9c(%esp)
0x0040153d:	addl %eax, %edx
0x0040153f:	movzbl %eax, (%eax)
0x00401542:	movsbl %eax, %al
0x00401545:	subl %eax, $0x1<UINT8>
0x00401548:	xorl %eax, $0x55<UINT8>
0x0040154b:	movl %ecx, %eax
0x0040154d:	movl %edx, 0x403004
0x00401553:	movl %eax, 0x9c(%esp)
0x0040155a:	addl %eax, %edx
0x0040155c:	movzbl %eax, (%eax)
0x0040155f:	movsbl %eax, %al
0x00401562:	cmpl %ecx, %eax
0x00401564:	je 0x00401579
0x00401566:	movl (%esp), $0x404009<UINT32>
0x00401579:	addl 0x9c(%esp), $0x1<UINT8>
0x0040158b:	movl (%esp), $0x40400f<UINT32>
0x00401592:	call 0x00402670
0x00402670:	jmp puts@msvcrt.dll
puts@msvcrt.dll: API Node	
0x00401597:	movl %eax, $0x0<UINT32>
0x0040159c:	leave
0x0040159d:	ret

0x004013e2:	movl %ecx, 0x405008
0x004013e8:	movl 0x40500c, %eax
0x004013ed:	testl %ecx, %ecx
0x004013ef:	je 0x004014ab
0x004014ab:	movl (%esp), %eax
0x004014ae:	call 0x00402660
0x00402660:	jmp exit@msvcrt.dll
exit@msvcrt.dll: Exit Node	
0x0040156d:	call 0x00402670
0x00401572:	movl %eax, $0x1<UINT32>
0x00401577:	jmp 0x0040159c
