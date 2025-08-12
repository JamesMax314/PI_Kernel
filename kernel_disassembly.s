
debug/kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <_start>:
    8000:	e59fd004 	ldr	sp, [pc, #4]	@ 800c <halt+0x4>
    8004:	eb00007c 	bl	81fc <kernel_main>

00008008 <halt>:
    8008:	eafffffe 	b	8008 <halt>
    800c:	0000a2a0 	.word	0x0000a2a0

00008010 <draw_mandelbrot>:
    8010:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8014:	e2525000 	subs	r5, r2, #0
    8018:	e24dd024 	sub	sp, sp, #36	@ 0x24
    801c:	da00006e 	ble	81dc <draw_mandelbrot+0x1cc>
    8020:	e3510000 	cmp	r1, #0
    8024:	da00006c 	ble	81dc <draw_mandelbrot+0x1cc>
    8028:	e3a07000 	mov	r7, #0
    802c:	e2404004 	sub	r4, r0, #4
    8030:	e58d5014 	str	r5, [sp, #20]
    8034:	e58d100c 	str	r1, [sp, #12]
    8038:	e59d000c 	ldr	r0, [sp, #12]
    803c:	eb00035b 	bl	8db0 <__aeabi_i2f>
    8040:	e58d0010 	str	r0, [sp, #16]
    8044:	e1a00007 	mov	r0, r7
    8048:	eb000358 	bl	8db0 <__aeabi_i2f>
    804c:	e1a05000 	mov	r5, r0
    8050:	e59d0014 	ldr	r0, [sp, #20]
    8054:	eb000355 	bl	8db0 <__aeabi_i2f>
    8058:	e1a01000 	mov	r1, r0
    805c:	e1a00005 	mov	r0, r5
    8060:	eb0003ef 	bl	9024 <__aeabi_fdiv>
    8064:	e1a01000 	mov	r1, r0
    8068:	eb0002df 	bl	8bec <__addsf3>
    806c:	e3a015fe 	mov	r1, #1065353216	@ 0x3f800000
    8070:	eb0002dc 	bl	8be8 <__aeabi_fsub>
    8074:	eb000282 	bl	8a84 <__aeabi_f2d>
    8078:	e3a03000 	mov	r3, #0
    807c:	e1a08000 	mov	r8, r0
    8080:	e1a09001 	mov	r9, r1
    8084:	e98d0018 	stmib	sp, {r3, r4}
    8088:	e58d4018 	str	r4, [sp, #24]
    808c:	e58d701c 	str	r7, [sp, #28]
    8090:	e59d0004 	ldr	r0, [sp, #4]
    8094:	eb000345 	bl	8db0 <__aeabi_i2f>
    8098:	e59d1010 	ldr	r1, [sp, #16]
    809c:	eb0003e0 	bl	9024 <__aeabi_fdiv>
    80a0:	e59f1144 	ldr	r1, [pc, #324]	@ 81ec <draw_mandelbrot+0x1dc>
    80a4:	eb000378 	bl	8e8c <__aeabi_fmul>
    80a8:	e59f1140 	ldr	r1, [pc, #320]	@ 81f0 <draw_mandelbrot+0x1e0>
    80ac:	e3a05000 	mov	r5, #0
    80b0:	eb0002cc 	bl	8be8 <__aeabi_fsub>
    80b4:	e3a0b000 	mov	fp, #0
    80b8:	e1a0a000 	mov	sl, r0
    80bc:	e1a04005 	mov	r4, r5
    80c0:	e1a07005 	mov	r7, r5
    80c4:	e1a06005 	mov	r6, r5
    80c8:	ea000001 	b	80d4 <draw_mandelbrot+0xc4>
    80cc:	e35b0ffa 	cmp	fp, #1000	@ 0x3e8
    80d0:	0a000043 	beq	81e4 <draw_mandelbrot+0x1d4>
    80d4:	e1a01007 	mov	r1, r7
    80d8:	e1a00006 	mov	r0, r6
    80dc:	eb0002c1 	bl	8be8 <__aeabi_fsub>
    80e0:	e1a0100a 	mov	r1, sl
    80e4:	eb0002c0 	bl	8bec <__addsf3>
    80e8:	e1a03000 	mov	r3, r0
    80ec:	e1a00004 	mov	r0, r4
    80f0:	e1a04003 	mov	r4, r3
    80f4:	eb000262 	bl	8a84 <__aeabi_f2d>
    80f8:	e1a02000 	mov	r2, r0
    80fc:	e1a03001 	mov	r3, r1
    8100:	eb000188 	bl	8728 <__adddf3>
    8104:	e1a06000 	mov	r6, r0
    8108:	e1a00005 	mov	r0, r5
    810c:	e1a07001 	mov	r7, r1
    8110:	eb00025b 	bl	8a84 <__aeabi_f2d>
    8114:	e1a02000 	mov	r2, r0
    8118:	e1a03001 	mov	r3, r1
    811c:	e1a00006 	mov	r0, r6
    8120:	e1a01007 	mov	r1, r7
    8124:	eb000072 	bl	82f4 <__aeabi_dmul>
    8128:	e1a02008 	mov	r2, r8
    812c:	e1a03009 	mov	r3, r9
    8130:	eb00017c 	bl	8728 <__adddf3>
    8134:	eb000281 	bl	8b40 <__aeabi_d2f>
    8138:	e1a01004 	mov	r1, r4
    813c:	e1a05000 	mov	r5, r0
    8140:	e1a00004 	mov	r0, r4
    8144:	eb000350 	bl	8e8c <__aeabi_fmul>
    8148:	e1a01005 	mov	r1, r5
    814c:	e1a06000 	mov	r6, r0
    8150:	e1a00005 	mov	r0, r5
    8154:	eb00034c 	bl	8e8c <__aeabi_fmul>
    8158:	e1a07000 	mov	r7, r0
    815c:	e1a00006 	mov	r0, r6
    8160:	e1a01007 	mov	r1, r7
    8164:	eb0002a0 	bl	8bec <__addsf3>
    8168:	e59f1084 	ldr	r1, [pc, #132]	@ 81f4 <draw_mandelbrot+0x1e4>
    816c:	eb000437 	bl	9250 <__aeabi_fcmple>
    8170:	e3500000 	cmp	r0, #0
    8174:	e28bb001 	add	fp, fp, #1
    8178:	1affffd3 	bne	80cc <draw_mandelbrot+0xbc>
    817c:	e59f3074 	ldr	r3, [pc, #116]	@ 81f8 <draw_mandelbrot+0x1e8>
    8180:	e6bf107b 	sxth	r1, fp
    8184:	e0611401 	rsb	r1, r1, r1, lsl #8
    8188:	e0832193 	umull	r2, r3, r3, r1
    818c:	e1e03323 	mvn	r3, r3, lsr #6
    8190:	e6ef3073 	uxtb	r3, r3
    8194:	e0832403 	add	r2, r3, r3, lsl #8
    8198:	e0833402 	add	r3, r3, r2, lsl #8
    819c:	e59d2008 	ldr	r2, [sp, #8]
    81a0:	e5a23004 	str	r3, [r2, #4]!
    81a4:	e59d3004 	ldr	r3, [sp, #4]
    81a8:	e58d2008 	str	r2, [sp, #8]
    81ac:	e59d200c 	ldr	r2, [sp, #12]
    81b0:	e2833001 	add	r3, r3, #1
    81b4:	e1520003 	cmp	r2, r3
    81b8:	e58d3004 	str	r3, [sp, #4]
    81bc:	1affffb3 	bne	8090 <draw_mandelbrot+0x80>
    81c0:	e59d701c 	ldr	r7, [sp, #28]
    81c4:	e59d3014 	ldr	r3, [sp, #20]
    81c8:	e59d4018 	ldr	r4, [sp, #24]
    81cc:	e2877001 	add	r7, r7, #1
    81d0:	e1530007 	cmp	r3, r7
    81d4:	e0844102 	add	r4, r4, r2, lsl #2
    81d8:	1affff96 	bne	8038 <draw_mandelbrot+0x28>
    81dc:	e28dd024 	add	sp, sp, #36	@ 0x24
    81e0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    81e4:	e3a03000 	mov	r3, #0
    81e8:	eaffffeb 	b	819c <draw_mandelbrot+0x18c>
    81ec:	40600000 	.word	0x40600000
    81f0:	40200000 	.word	0x40200000
    81f4:	40800000 	.word	0x40800000
    81f8:	10624dd3 	.word	0x10624dd3

000081fc <kernel_main>:
    81fc:	e3a0108c 	mov	r1, #140	@ 0x8c
    8200:	e3a02000 	mov	r2, #0
    8204:	e92d4070 	push	{r4, r5, r6, lr}
    8208:	e59fc0d0 	ldr	ip, [pc, #208]	@ 82e0 <kernel_main+0xe4>
    820c:	e3a03008 	mov	r3, #8
    8210:	e3a00e1e 	mov	r0, #480	@ 0x1e0
    8214:	e3a0ed0a 	mov	lr, #640	@ 0x280
    8218:	e58c1000 	str	r1, [ip]
    821c:	e3a01004 	mov	r1, #4
    8220:	e3a05020 	mov	r5, #32
    8224:	e3a04010 	mov	r4, #16
    8228:	e59f60b4 	ldr	r6, [pc, #180]	@ 82e4 <kernel_main+0xe8>
    822c:	e58c2004 	str	r2, [ip, #4]
    8230:	e58c6008 	str	r6, [ip, #8]
    8234:	e2866001 	add	r6, r6, #1
    8238:	e58c300c 	str	r3, [ip, #12]
    823c:	e58c3010 	str	r3, [ip, #16]
    8240:	e58ce014 	str	lr, [ip, #20]
    8244:	e58c0018 	str	r0, [ip, #24]
    8248:	e58c601c 	str	r6, [ip, #28]
    824c:	e58c3020 	str	r3, [ip, #32]
    8250:	e58c3024 	str	r3, [ip, #36]	@ 0x24
    8254:	e58ce028 	str	lr, [ip, #40]	@ 0x28
    8258:	e58c002c 	str	r0, [ip, #44]	@ 0x2c
    825c:	e59f0084 	ldr	r0, [pc, #132]	@ 82e8 <kernel_main+0xec>
    8260:	e58c0030 	str	r0, [ip, #48]	@ 0x30
    8264:	e58c1034 	str	r1, [ip, #52]	@ 0x34
    8268:	e58c1038 	str	r1, [ip, #56]	@ 0x38
    826c:	e59f1078 	ldr	r1, [pc, #120]	@ 82ec <kernel_main+0xf0>
    8270:	e58c503c 	str	r5, [ip, #60]	@ 0x3c
    8274:	e58c1040 	str	r1, [ip, #64]	@ 0x40
    8278:	e59f1070 	ldr	r1, [pc, #112]	@ 82f0 <kernel_main+0xf4>
    827c:	e58c3044 	str	r3, [ip, #68]	@ 0x44
    8280:	e58c3048 	str	r3, [ip, #72]	@ 0x48
    8284:	e58c404c 	str	r4, [ip, #76]	@ 0x4c
    8288:	e58c2050 	str	r2, [ip, #80]	@ 0x50
    828c:	e58c2054 	str	r2, [ip, #84]	@ 0x54
    8290:	e5913898 	ldr	r3, [r1, #2200]	@ 0x898
    8294:	e3530000 	cmp	r3, #0
    8298:	bafffffc 	blt	8290 <kernel_main+0x94>
    829c:	e38c3008 	orr	r3, ip, #8
    82a0:	e59f2048 	ldr	r2, [pc, #72]	@ 82f0 <kernel_main+0xf4>
    82a4:	e58138a0 	str	r3, [r1, #2208]	@ 0x8a0
    82a8:	e5923898 	ldr	r3, [r2, #2200]	@ 0x898
    82ac:	e3130101 	tst	r3, #1073741824	@ 0x40000000
    82b0:	1afffffc 	bne	82a8 <kernel_main+0xac>
    82b4:	e5923880 	ldr	r3, [r2, #2176]	@ 0x880
    82b8:	e203300f 	and	r3, r3, #15
    82bc:	e3530008 	cmp	r3, #8
    82c0:	1afffff8 	bne	82a8 <kernel_main+0xac>
    82c4:	e59c004c 	ldr	r0, [ip, #76]	@ 0x4c
    82c8:	e3a02e1e 	mov	r2, #480	@ 0x1e0
    82cc:	e3a01d0a 	mov	r1, #640	@ 0x280
    82d0:	e3c00103 	bic	r0, r0, #-1073741824	@ 0xc0000000
    82d4:	e59c3050 	ldr	r3, [ip, #80]	@ 0x50
    82d8:	ebffff4c 	bl	8010 <draw_mandelbrot>
    82dc:	eafffffe 	b	82dc <kernel_main+0xe0>
    82e0:	0000a2a0 	.word	0x0000a2a0
    82e4:	00048003 	.word	0x00048003
    82e8:	00048005 	.word	0x00048005
    82ec:	00040001 	.word	0x00040001
    82f0:	2000b000 	.word	0x2000b000

000082f4 <__aeabi_dmul>:
    82f4:	e92d4070 	push	{r4, r5, r6, lr}
    82f8:	e3a0c0ff 	mov	ip, #255	@ 0xff
    82fc:	e38ccc07 	orr	ip, ip, #1792	@ 0x700
    8300:	e01c4a21 	ands	r4, ip, r1, lsr #20
    8304:	101c5a23 	andsne	r5, ip, r3, lsr #20
    8308:	1134000c 	teqne	r4, ip
    830c:	1135000c 	teqne	r5, ip
    8310:	0b000075 	bleq	84ec <__aeabi_dmul+0x1f8>
    8314:	e0844005 	add	r4, r4, r5
    8318:	e0216003 	eor	r6, r1, r3
    831c:	e1c11a8c 	bic	r1, r1, ip, lsl #21
    8320:	e1c33a8c 	bic	r3, r3, ip, lsl #21
    8324:	e1905601 	orrs	r5, r0, r1, lsl #12
    8328:	11925603 	orrsne	r5, r2, r3, lsl #12
    832c:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    8330:	e3833601 	orr	r3, r3, #1048576	@ 0x100000
    8334:	0a00001d 	beq	83b0 <__aeabi_dmul+0xbc>
    8338:	e08ec290 	umull	ip, lr, r0, r2
    833c:	e3a05000 	mov	r5, #0
    8340:	e0a5e291 	umlal	lr, r5, r1, r2
    8344:	e2062102 	and	r2, r6, #-2147483648	@ 0x80000000
    8348:	e0a5e390 	umlal	lr, r5, r0, r3
    834c:	e3a06000 	mov	r6, #0
    8350:	e0a65391 	umlal	r5, r6, r1, r3
    8354:	e33c0000 	teq	ip, #0
    8358:	138ee001 	orrne	lr, lr, #1
    835c:	e24440ff 	sub	r4, r4, #255	@ 0xff
    8360:	e3560c02 	cmp	r6, #512	@ 0x200
    8364:	e2c44c03 	sbc	r4, r4, #768	@ 0x300
    8368:	2a000002 	bcs	8378 <__aeabi_dmul+0x84>
    836c:	e1b0e08e 	lsls	lr, lr, #1
    8370:	e0b55005 	adcs	r5, r5, r5
    8374:	e0a66006 	adc	r6, r6, r6
    8378:	e1821586 	orr	r1, r2, r6, lsl #11
    837c:	e1811aa5 	orr	r1, r1, r5, lsr #21
    8380:	e1a00585 	lsl	r0, r5, #11
    8384:	e1800aae 	orr	r0, r0, lr, lsr #21
    8388:	e1a0e58e 	lsl	lr, lr, #11
    838c:	e254c0fd 	subs	ip, r4, #253	@ 0xfd
    8390:	835c0c07 	cmphi	ip, #1792	@ 0x700
    8394:	8a000011 	bhi	83e0 <__aeabi_dmul+0xec>
    8398:	e35e0102 	cmp	lr, #-2147483648	@ 0x80000000
    839c:	01b0e0a0 	lsrseq	lr, r0, #1
    83a0:	e2b00000 	adcs	r0, r0, #0
    83a4:	e0a11a04 	adc	r1, r1, r4, lsl #20
    83a8:	e8bd4070 	pop	{r4, r5, r6, lr}
    83ac:	e12fff1e 	bx	lr
    83b0:	e2066102 	and	r6, r6, #-2147483648	@ 0x80000000
    83b4:	e1861001 	orr	r1, r6, r1
    83b8:	e1800002 	orr	r0, r0, r2
    83bc:	e0211003 	eor	r1, r1, r3
    83c0:	e05440ac 	subs	r4, r4, ip, lsr #1
    83c4:	c074500c 	rsbsgt	r5, r4, ip
    83c8:	c1811a04 	orrgt	r1, r1, r4, lsl #20
    83cc:	c8bd4070 	popgt	{r4, r5, r6, lr}
    83d0:	c12fff1e 	bxgt	lr
    83d4:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    83d8:	e3a0e000 	mov	lr, #0
    83dc:	e2544001 	subs	r4, r4, #1
    83e0:	ca00005d 	bgt	855c <__aeabi_dmul+0x268>
    83e4:	e3740036 	cmn	r4, #54	@ 0x36
    83e8:	d3a00000 	movle	r0, #0
    83ec:	d2011102 	andle	r1, r1, #-2147483648	@ 0x80000000
    83f0:	d8bd4070 	pople	{r4, r5, r6, lr}
    83f4:	d12fff1e 	bxle	lr
    83f8:	e2644000 	rsb	r4, r4, #0
    83fc:	e2544020 	subs	r4, r4, #32
    8400:	aa00001a 	bge	8470 <__aeabi_dmul+0x17c>
    8404:	e294400c 	adds	r4, r4, #12
    8408:	ca00000c 	bgt	8440 <__aeabi_dmul+0x14c>
    840c:	e2844014 	add	r4, r4, #20
    8410:	e2645020 	rsb	r5, r4, #32
    8414:	e1a03510 	lsl	r3, r0, r5
    8418:	e1a00430 	lsr	r0, r0, r4
    841c:	e1800511 	orr	r0, r0, r1, lsl r5
    8420:	e2012102 	and	r2, r1, #-2147483648	@ 0x80000000
    8424:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    8428:	e0900fa3 	adds	r0, r0, r3, lsr #31
    842c:	e0a21431 	adc	r1, r2, r1, lsr r4
    8430:	e19ee083 	orrs	lr, lr, r3, lsl #1
    8434:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    8438:	e8bd4070 	pop	{r4, r5, r6, lr}
    843c:	e12fff1e 	bx	lr
    8440:	e264400c 	rsb	r4, r4, #12
    8444:	e2645020 	rsb	r5, r4, #32
    8448:	e1a03410 	lsl	r3, r0, r4
    844c:	e1a00530 	lsr	r0, r0, r5
    8450:	e1800411 	orr	r0, r0, r1, lsl r4
    8454:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    8458:	e0900fa3 	adds	r0, r0, r3, lsr #31
    845c:	e2a11000 	adc	r1, r1, #0
    8460:	e19ee083 	orrs	lr, lr, r3, lsl #1
    8464:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    8468:	e8bd4070 	pop	{r4, r5, r6, lr}
    846c:	e12fff1e 	bx	lr
    8470:	e2645020 	rsb	r5, r4, #32
    8474:	e18ee510 	orr	lr, lr, r0, lsl r5
    8478:	e1a03430 	lsr	r3, r0, r4
    847c:	e1833511 	orr	r3, r3, r1, lsl r5
    8480:	e1a00431 	lsr	r0, r1, r4
    8484:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    8488:	e1c00431 	bic	r0, r0, r1, lsr r4
    848c:	e0800fa3 	add	r0, r0, r3, lsr #31
    8490:	e19ee083 	orrs	lr, lr, r3, lsl #1
    8494:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    8498:	e8bd4070 	pop	{r4, r5, r6, lr}
    849c:	e12fff1e 	bx	lr
    84a0:	e3340000 	teq	r4, #0
    84a4:	1a000008 	bne	84cc <__aeabi_dmul+0x1d8>
    84a8:	e2016102 	and	r6, r1, #-2147483648	@ 0x80000000
    84ac:	e1b00080 	lsls	r0, r0, #1
    84b0:	e0a11001 	adc	r1, r1, r1
    84b4:	e3110601 	tst	r1, #1048576	@ 0x100000
    84b8:	02444001 	subeq	r4, r4, #1
    84bc:	0afffffa 	beq	84ac <__aeabi_dmul+0x1b8>
    84c0:	e1811006 	orr	r1, r1, r6
    84c4:	e3350000 	teq	r5, #0
    84c8:	112fff1e 	bxne	lr
    84cc:	e2036102 	and	r6, r3, #-2147483648	@ 0x80000000
    84d0:	e1b02082 	lsls	r2, r2, #1
    84d4:	e0a33003 	adc	r3, r3, r3
    84d8:	e3130601 	tst	r3, #1048576	@ 0x100000
    84dc:	02455001 	subeq	r5, r5, #1
    84e0:	0afffffa 	beq	84d0 <__aeabi_dmul+0x1dc>
    84e4:	e1833006 	orr	r3, r3, r6
    84e8:	e12fff1e 	bx	lr
    84ec:	e134000c 	teq	r4, ip
    84f0:	e00c5a23 	and	r5, ip, r3, lsr #20
    84f4:	1135000c 	teqne	r5, ip
    84f8:	0a000007 	beq	851c <__aeabi_dmul+0x228>
    84fc:	e1906081 	orrs	r6, r0, r1, lsl #1
    8500:	11926083 	orrsne	r6, r2, r3, lsl #1
    8504:	1affffe5 	bne	84a0 <__aeabi_dmul+0x1ac>
    8508:	e0211003 	eor	r1, r1, r3
    850c:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    8510:	e3a00000 	mov	r0, #0
    8514:	e8bd4070 	pop	{r4, r5, r6, lr}
    8518:	e12fff1e 	bx	lr
    851c:	e1906081 	orrs	r6, r0, r1, lsl #1
    8520:	01a00002 	moveq	r0, r2
    8524:	01a01003 	moveq	r1, r3
    8528:	11926083 	orrsne	r6, r2, r3, lsl #1
    852c:	0a000010 	beq	8574 <__aeabi_dmul+0x280>
    8530:	e134000c 	teq	r4, ip
    8534:	1a000001 	bne	8540 <__aeabi_dmul+0x24c>
    8538:	e1906601 	orrs	r6, r0, r1, lsl #12
    853c:	1a00000c 	bne	8574 <__aeabi_dmul+0x280>
    8540:	e135000c 	teq	r5, ip
    8544:	1a000003 	bne	8558 <__aeabi_dmul+0x264>
    8548:	e1926603 	orrs	r6, r2, r3, lsl #12
    854c:	11a00002 	movne	r0, r2
    8550:	11a01003 	movne	r1, r3
    8554:	1a000006 	bne	8574 <__aeabi_dmul+0x280>
    8558:	e0211003 	eor	r1, r1, r3
    855c:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    8560:	e381147f 	orr	r1, r1, #2130706432	@ 0x7f000000
    8564:	e381160f 	orr	r1, r1, #15728640	@ 0xf00000
    8568:	e3a00000 	mov	r0, #0
    856c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8570:	e12fff1e 	bx	lr
    8574:	e381147f 	orr	r1, r1, #2130706432	@ 0x7f000000
    8578:	e381173e 	orr	r1, r1, #16252928	@ 0xf80000
    857c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8580:	e12fff1e 	bx	lr
    8584:	e3a0c0ff 	mov	ip, #255	@ 0xff
    8588:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    858c:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    8590:	1132000c 	teqne	r2, ip
    8594:	1133000c 	teqne	r3, ip
    8598:	0a00003e 	beq	8698 <__aeabi_dmul+0x3a4>
    859c:	e0822003 	add	r2, r2, r3
    85a0:	e020c001 	eor	ip, r0, r1
    85a4:	e1b00480 	lsls	r0, r0, #9
    85a8:	11b01481 	lslsne	r1, r1, #9
    85ac:	0a000010 	beq	85f4 <__aeabi_dmul+0x300>
    85b0:	e3a03302 	mov	r3, #134217728	@ 0x8000000
    85b4:	e18302a0 	orr	r0, r3, r0, lsr #5
    85b8:	e18312a1 	orr	r1, r3, r1, lsr #5
    85bc:	e0813190 	umull	r3, r1, r0, r1
    85c0:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    85c4:	e3510502 	cmp	r1, #8388608	@ 0x800000
    85c8:	31a01081 	lslcc	r1, r1, #1
    85cc:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    85d0:	31a03083 	lslcc	r3, r3, #1
    85d4:	e1800001 	orr	r0, r0, r1
    85d8:	e2c2207f 	sbc	r2, r2, #127	@ 0x7f
    85dc:	e35200fd 	cmp	r2, #253	@ 0xfd
    85e0:	8a00000f 	bhi	8624 <__aeabi_dmul+0x330>
    85e4:	e3530102 	cmp	r3, #-2147483648	@ 0x80000000
    85e8:	e0a00b82 	adc	r0, r0, r2, lsl #23
    85ec:	03c00001 	biceq	r0, r0, #1
    85f0:	e12fff1e 	bx	lr
    85f4:	e3300000 	teq	r0, #0
    85f8:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    85fc:	01a01481 	lsleq	r1, r1, #9
    8600:	e18c04a0 	orr	r0, ip, r0, lsr #9
    8604:	e18004a1 	orr	r0, r0, r1, lsr #9
    8608:	e252207f 	subs	r2, r2, #127	@ 0x7f
    860c:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    8610:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    8614:	c12fff1e 	bxgt	lr
    8618:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    861c:	e3a03000 	mov	r3, #0
    8620:	e2522001 	subs	r2, r2, #1
    8624:	ca000035 	bgt	8700 <__aeabi_dmul+0x40c>
    8628:	e3720019 	cmn	r2, #25
    862c:	d2000102 	andle	r0, r0, #-2147483648	@ 0x80000000
    8630:	d12fff1e 	bxle	lr
    8634:	e2622000 	rsb	r2, r2, #0
    8638:	e1b01080 	lsls	r1, r0, #1
    863c:	e1a01231 	lsr	r1, r1, r2
    8640:	e2622020 	rsb	r2, r2, #32
    8644:	e1a0c210 	lsl	ip, r0, r2
    8648:	e1b00061 	rrxs	r0, r1
    864c:	e2a00000 	adc	r0, r0, #0
    8650:	e193308c 	orrs	r3, r3, ip, lsl #1
    8654:	01c00fac 	biceq	r0, r0, ip, lsr #31
    8658:	e12fff1e 	bx	lr
    865c:	e3320000 	teq	r2, #0
    8660:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    8664:	01a00080 	lsleq	r0, r0, #1
    8668:	03100502 	tsteq	r0, #8388608	@ 0x800000
    866c:	02422001 	subeq	r2, r2, #1
    8670:	0afffffb 	beq	8664 <__aeabi_dmul+0x370>
    8674:	e180000c 	orr	r0, r0, ip
    8678:	e3330000 	teq	r3, #0
    867c:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    8680:	01a01081 	lsleq	r1, r1, #1
    8684:	03110502 	tsteq	r1, #8388608	@ 0x800000
    8688:	02433001 	subeq	r3, r3, #1
    868c:	0afffffb 	beq	8680 <__aeabi_dmul+0x38c>
    8690:	e181100c 	orr	r1, r1, ip
    8694:	eaffffc0 	b	859c <__aeabi_dmul+0x2a8>
    8698:	e00c3ba1 	and	r3, ip, r1, lsr #23
    869c:	e132000c 	teq	r2, ip
    86a0:	1133000c 	teqne	r3, ip
    86a4:	0a000005 	beq	86c0 <__aeabi_dmul+0x3cc>
    86a8:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    86ac:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    86b0:	1affffe9 	bne	865c <__aeabi_dmul+0x368>
    86b4:	e0200001 	eor	r0, r0, r1
    86b8:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    86bc:	e12fff1e 	bx	lr
    86c0:	e3300000 	teq	r0, #0
    86c4:	13300102 	teqne	r0, #-2147483648	@ 0x80000000
    86c8:	01a00001 	moveq	r0, r1
    86cc:	13310000 	teqne	r1, #0
    86d0:	13310102 	teqne	r1, #-2147483648	@ 0x80000000
    86d4:	0a00000d 	beq	8710 <__aeabi_dmul+0x41c>
    86d8:	e132000c 	teq	r2, ip
    86dc:	1a000001 	bne	86e8 <__aeabi_dmul+0x3f4>
    86e0:	e1b02480 	lsls	r2, r0, #9
    86e4:	1a000009 	bne	8710 <__aeabi_dmul+0x41c>
    86e8:	e133000c 	teq	r3, ip
    86ec:	1a000002 	bne	86fc <__aeabi_dmul+0x408>
    86f0:	e1b03481 	lsls	r3, r1, #9
    86f4:	11a00001 	movne	r0, r1
    86f8:	1a000004 	bne	8710 <__aeabi_dmul+0x41c>
    86fc:	e0200001 	eor	r0, r0, r1
    8700:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    8704:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    8708:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    870c:	e12fff1e 	bx	lr
    8710:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    8714:	e3800503 	orr	r0, r0, #12582912	@ 0xc00000
    8718:	e12fff1e 	bx	lr

0000871c <__aeabi_drsub>:
    871c:	e2211102 	eor	r1, r1, #-2147483648	@ 0x80000000
    8720:	ea000000 	b	8728 <__adddf3>

00008724 <__aeabi_dsub>:
    8724:	e2233102 	eor	r3, r3, #-2147483648	@ 0x80000000

00008728 <__adddf3>:
    8728:	e92d4030 	push	{r4, r5, lr}
    872c:	e1a04081 	lsl	r4, r1, #1
    8730:	e1a05083 	lsl	r5, r3, #1
    8734:	e1340005 	teq	r4, r5
    8738:	01300002 	teqeq	r0, r2
    873c:	1194c000 	orrsne	ip, r4, r0
    8740:	1195c002 	orrsne	ip, r5, r2
    8744:	11f0cac4 	mvnsne	ip, r4, asr #21
    8748:	11f0cac5 	mvnsne	ip, r5, asr #21
    874c:	0a00008c 	beq	8984 <__adddf3+0x25c>
    8750:	e1a04aa4 	lsr	r4, r4, #21
    8754:	e0745aa5 	rsbs	r5, r4, r5, lsr #21
    8758:	b2655000 	rsblt	r5, r5, #0
    875c:	da000006 	ble	877c <__adddf3+0x54>
    8760:	e0844005 	add	r4, r4, r5
    8764:	e0202002 	eor	r2, r0, r2
    8768:	e0213003 	eor	r3, r1, r3
    876c:	e0220000 	eor	r0, r2, r0
    8770:	e0231001 	eor	r1, r3, r1
    8774:	e0202002 	eor	r2, r0, r2
    8778:	e0213003 	eor	r3, r1, r3
    877c:	e3550036 	cmp	r5, #54	@ 0x36
    8780:	88bd4030 	pophi	{r4, r5, lr}
    8784:	812fff1e 	bxhi	lr
    8788:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    878c:	e1a01601 	lsl	r1, r1, #12
    8790:	e3a0c601 	mov	ip, #1048576	@ 0x100000
    8794:	e18c1621 	orr	r1, ip, r1, lsr #12
    8798:	0a000001 	beq	87a4 <__adddf3+0x7c>
    879c:	e2700000 	rsbs	r0, r0, #0
    87a0:	e2e11000 	rsc	r1, r1, #0
    87a4:	e3130102 	tst	r3, #-2147483648	@ 0x80000000
    87a8:	e1a03603 	lsl	r3, r3, #12
    87ac:	e18c3623 	orr	r3, ip, r3, lsr #12
    87b0:	0a000001 	beq	87bc <__adddf3+0x94>
    87b4:	e2722000 	rsbs	r2, r2, #0
    87b8:	e2e33000 	rsc	r3, r3, #0
    87bc:	e1340005 	teq	r4, r5
    87c0:	0a000069 	beq	896c <__adddf3+0x244>
    87c4:	e2444001 	sub	r4, r4, #1
    87c8:	e275e020 	rsbs	lr, r5, #32
    87cc:	ba000005 	blt	87e8 <__adddf3+0xc0>
    87d0:	e1a0ce12 	lsl	ip, r2, lr
    87d4:	e0900532 	adds	r0, r0, r2, lsr r5
    87d8:	e2a11000 	adc	r1, r1, #0
    87dc:	e0900e13 	adds	r0, r0, r3, lsl lr
    87e0:	e0b11553 	adcs	r1, r1, r3, asr r5
    87e4:	ea000006 	b	8804 <__adddf3+0xdc>
    87e8:	e2455020 	sub	r5, r5, #32
    87ec:	e28ee020 	add	lr, lr, #32
    87f0:	e3520001 	cmp	r2, #1
    87f4:	e1a0ce13 	lsl	ip, r3, lr
    87f8:	238cc002 	orrcs	ip, ip, #2
    87fc:	e0900553 	adds	r0, r0, r3, asr r5
    8800:	e0b11fc3 	adcs	r1, r1, r3, asr #31
    8804:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    8808:	5a000002 	bpl	8818 <__adddf3+0xf0>
    880c:	e27cc000 	rsbs	ip, ip, #0
    8810:	e2f00000 	rscs	r0, r0, #0
    8814:	e2e11000 	rsc	r1, r1, #0
    8818:	e3510601 	cmp	r1, #1048576	@ 0x100000
    881c:	3a00000f 	bcc	8860 <__adddf3+0x138>
    8820:	e3510602 	cmp	r1, #2097152	@ 0x200000
    8824:	3a000006 	bcc	8844 <__adddf3+0x11c>
    8828:	e1b010a1 	lsrs	r1, r1, #1
    882c:	e1b00060 	rrxs	r0, r0
    8830:	e1a0c06c 	rrx	ip, ip
    8834:	e2844001 	add	r4, r4, #1
    8838:	e1a02a84 	lsl	r2, r4, #21
    883c:	e3720501 	cmn	r2, #4194304	@ 0x400000
    8840:	2a00006b 	bcs	89f4 <__adddf3+0x2cc>
    8844:	e35c0102 	cmp	ip, #-2147483648	@ 0x80000000
    8848:	01b0c0a0 	lsrseq	ip, r0, #1
    884c:	e2b00000 	adcs	r0, r0, #0
    8850:	e0a11a04 	adc	r1, r1, r4, lsl #20
    8854:	e1811005 	orr	r1, r1, r5
    8858:	e8bd4030 	pop	{r4, r5, lr}
    885c:	e12fff1e 	bx	lr
    8860:	e1b0c08c 	lsls	ip, ip, #1
    8864:	e0b00000 	adcs	r0, r0, r0
    8868:	e0a11001 	adc	r1, r1, r1
    886c:	e2544001 	subs	r4, r4, #1
    8870:	23510601 	cmpcs	r1, #1048576	@ 0x100000
    8874:	2afffff2 	bcs	8844 <__adddf3+0x11c>
    8878:	e3310000 	teq	r1, #0
    887c:	13a03014 	movne	r3, #20
    8880:	03a03034 	moveq	r3, #52	@ 0x34
    8884:	01a01000 	moveq	r1, r0
    8888:	03a00000 	moveq	r0, #0
    888c:	e1a02001 	mov	r2, r1
    8890:	e3520801 	cmp	r2, #65536	@ 0x10000
    8894:	21a02822 	lsrcs	r2, r2, #16
    8898:	22433010 	subcs	r3, r3, #16
    889c:	e3520c01 	cmp	r2, #256	@ 0x100
    88a0:	21a02422 	lsrcs	r2, r2, #8
    88a4:	22433008 	subcs	r3, r3, #8
    88a8:	e3520010 	cmp	r2, #16
    88ac:	21a02222 	lsrcs	r2, r2, #4
    88b0:	22433004 	subcs	r3, r3, #4
    88b4:	e3520004 	cmp	r2, #4
    88b8:	22433002 	subcs	r3, r3, #2
    88bc:	304330a2 	subcc	r3, r3, r2, lsr #1
    88c0:	e04331a2 	sub	r3, r3, r2, lsr #3
    88c4:	e2532020 	subs	r2, r3, #32
    88c8:	aa000007 	bge	88ec <__adddf3+0x1c4>
    88cc:	e292200c 	adds	r2, r2, #12
    88d0:	da000004 	ble	88e8 <__adddf3+0x1c0>
    88d4:	e282c014 	add	ip, r2, #20
    88d8:	e262200c 	rsb	r2, r2, #12
    88dc:	e1a00c11 	lsl	r0, r1, ip
    88e0:	e1a01231 	lsr	r1, r1, r2
    88e4:	ea000004 	b	88fc <__adddf3+0x1d4>
    88e8:	e2822014 	add	r2, r2, #20
    88ec:	d262c020 	rsble	ip, r2, #32
    88f0:	e1a01211 	lsl	r1, r1, r2
    88f4:	d1811c30 	orrle	r1, r1, r0, lsr ip
    88f8:	d1a00210 	lslle	r0, r0, r2
    88fc:	e0544003 	subs	r4, r4, r3
    8900:	a0811a04 	addge	r1, r1, r4, lsl #20
    8904:	a1811005 	orrge	r1, r1, r5
    8908:	a8bd4030 	popge	{r4, r5, lr}
    890c:	a12fff1e 	bxge	lr
    8910:	e1e04004 	mvn	r4, r4
    8914:	e254401f 	subs	r4, r4, #31
    8918:	aa00000f 	bge	895c <__adddf3+0x234>
    891c:	e294400c 	adds	r4, r4, #12
    8920:	ca000006 	bgt	8940 <__adddf3+0x218>
    8924:	e2844014 	add	r4, r4, #20
    8928:	e2642020 	rsb	r2, r4, #32
    892c:	e1a00430 	lsr	r0, r0, r4
    8930:	e1800211 	orr	r0, r0, r1, lsl r2
    8934:	e1851431 	orr	r1, r5, r1, lsr r4
    8938:	e8bd4030 	pop	{r4, r5, lr}
    893c:	e12fff1e 	bx	lr
    8940:	e264400c 	rsb	r4, r4, #12
    8944:	e2642020 	rsb	r2, r4, #32
    8948:	e1a00230 	lsr	r0, r0, r2
    894c:	e1800411 	orr	r0, r0, r1, lsl r4
    8950:	e1a01005 	mov	r1, r5
    8954:	e8bd4030 	pop	{r4, r5, lr}
    8958:	e12fff1e 	bx	lr
    895c:	e1a00431 	lsr	r0, r1, r4
    8960:	e1a01005 	mov	r1, r5
    8964:	e8bd4030 	pop	{r4, r5, lr}
    8968:	e12fff1e 	bx	lr
    896c:	e3340000 	teq	r4, #0
    8970:	e2233601 	eor	r3, r3, #1048576	@ 0x100000
    8974:	02211601 	eoreq	r1, r1, #1048576	@ 0x100000
    8978:	02844001 	addeq	r4, r4, #1
    897c:	12455001 	subne	r5, r5, #1
    8980:	eaffff8f 	b	87c4 <__adddf3+0x9c>
    8984:	e1f0cac4 	mvns	ip, r4, asr #21
    8988:	11f0cac5 	mvnsne	ip, r5, asr #21
    898c:	0a00001d 	beq	8a08 <__adddf3+0x2e0>
    8990:	e1340005 	teq	r4, r5
    8994:	01300002 	teqeq	r0, r2
    8998:	0a000004 	beq	89b0 <__adddf3+0x288>
    899c:	e194c000 	orrs	ip, r4, r0
    89a0:	01a01003 	moveq	r1, r3
    89a4:	01a00002 	moveq	r0, r2
    89a8:	e8bd4030 	pop	{r4, r5, lr}
    89ac:	e12fff1e 	bx	lr
    89b0:	e1310003 	teq	r1, r3
    89b4:	13a01000 	movne	r1, #0
    89b8:	13a00000 	movne	r0, #0
    89bc:	18bd4030 	popne	{r4, r5, lr}
    89c0:	112fff1e 	bxne	lr
    89c4:	e1b0caa4 	lsrs	ip, r4, #21
    89c8:	1a000004 	bne	89e0 <__adddf3+0x2b8>
    89cc:	e1b00080 	lsls	r0, r0, #1
    89d0:	e0b11001 	adcs	r1, r1, r1
    89d4:	23811102 	orrcs	r1, r1, #-2147483648	@ 0x80000000
    89d8:	e8bd4030 	pop	{r4, r5, lr}
    89dc:	e12fff1e 	bx	lr
    89e0:	e2944501 	adds	r4, r4, #4194304	@ 0x400000
    89e4:	32811601 	addcc	r1, r1, #1048576	@ 0x100000
    89e8:	38bd4030 	popcc	{r4, r5, lr}
    89ec:	312fff1e 	bxcc	lr
    89f0:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    89f4:	e385147f 	orr	r1, r5, #2130706432	@ 0x7f000000
    89f8:	e381160f 	orr	r1, r1, #15728640	@ 0xf00000
    89fc:	e3a00000 	mov	r0, #0
    8a00:	e8bd4030 	pop	{r4, r5, lr}
    8a04:	e12fff1e 	bx	lr
    8a08:	e1f0cac4 	mvns	ip, r4, asr #21
    8a0c:	11a01003 	movne	r1, r3
    8a10:	11a00002 	movne	r0, r2
    8a14:	01f0cac5 	mvnseq	ip, r5, asr #21
    8a18:	11a03001 	movne	r3, r1
    8a1c:	11a02000 	movne	r2, r0
    8a20:	e1904601 	orrs	r4, r0, r1, lsl #12
    8a24:	01925603 	orrseq	r5, r2, r3, lsl #12
    8a28:	01310003 	teqeq	r1, r3
    8a2c:	13811702 	orrne	r1, r1, #524288	@ 0x80000
    8a30:	e8bd4030 	pop	{r4, r5, lr}
    8a34:	e12fff1e 	bx	lr

00008a38 <__aeabi_ui2d>:
    8a38:	e3300000 	teq	r0, #0
    8a3c:	03a01000 	moveq	r1, #0
    8a40:	012fff1e 	bxeq	lr
    8a44:	e92d4030 	push	{r4, r5, lr}
    8a48:	e3a04b01 	mov	r4, #1024	@ 0x400
    8a4c:	e2844032 	add	r4, r4, #50	@ 0x32
    8a50:	e3a05000 	mov	r5, #0
    8a54:	e3a01000 	mov	r1, #0
    8a58:	eaffff86 	b	8878 <__adddf3+0x150>

00008a5c <__aeabi_i2d>:
    8a5c:	e3300000 	teq	r0, #0
    8a60:	03a01000 	moveq	r1, #0
    8a64:	012fff1e 	bxeq	lr
    8a68:	e92d4030 	push	{r4, r5, lr}
    8a6c:	e3a04b01 	mov	r4, #1024	@ 0x400
    8a70:	e2844032 	add	r4, r4, #50	@ 0x32
    8a74:	e2105102 	ands	r5, r0, #-2147483648	@ 0x80000000
    8a78:	42600000 	rsbmi	r0, r0, #0
    8a7c:	e3a01000 	mov	r1, #0
    8a80:	eaffff7c 	b	8878 <__adddf3+0x150>

00008a84 <__aeabi_f2d>:
    8a84:	e1b02080 	lsls	r2, r0, #1
    8a88:	e1a011c2 	asr	r1, r2, #3
    8a8c:	e1a01061 	rrx	r1, r1
    8a90:	e1a00e02 	lsl	r0, r2, #28
    8a94:	121234ff 	andsne	r3, r2, #-16777216	@ 0xff000000
    8a98:	133304ff 	teqne	r3, #-16777216	@ 0xff000000
    8a9c:	1221130e 	eorne	r1, r1, #939524096	@ 0x38000000
    8aa0:	112fff1e 	bxne	lr
    8aa4:	e3d224ff 	bics	r2, r2, #-16777216	@ 0xff000000
    8aa8:	012fff1e 	bxeq	lr
    8aac:	e33304ff 	teq	r3, #-16777216	@ 0xff000000
    8ab0:	03811702 	orreq	r1, r1, #524288	@ 0x80000
    8ab4:	012fff1e 	bxeq	lr
    8ab8:	e92d4030 	push	{r4, r5, lr}
    8abc:	e3a04d0e 	mov	r4, #896	@ 0x380
    8ac0:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    8ac4:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    8ac8:	eaffff6a 	b	8878 <__adddf3+0x150>

00008acc <__aeabi_ul2d>:
    8acc:	e1902001 	orrs	r2, r0, r1
    8ad0:	012fff1e 	bxeq	lr
    8ad4:	e92d4030 	push	{r4, r5, lr}
    8ad8:	e3a05000 	mov	r5, #0
    8adc:	ea000006 	b	8afc <__aeabi_l2d+0x1c>

00008ae0 <__aeabi_l2d>:
    8ae0:	e1902001 	orrs	r2, r0, r1
    8ae4:	012fff1e 	bxeq	lr
    8ae8:	e92d4030 	push	{r4, r5, lr}
    8aec:	e2115102 	ands	r5, r1, #-2147483648	@ 0x80000000
    8af0:	5a000001 	bpl	8afc <__aeabi_l2d+0x1c>
    8af4:	e2700000 	rsbs	r0, r0, #0
    8af8:	e2e11000 	rsc	r1, r1, #0
    8afc:	e3a04b01 	mov	r4, #1024	@ 0x400
    8b00:	e2844032 	add	r4, r4, #50	@ 0x32
    8b04:	e1b0cb21 	lsrs	ip, r1, #22
    8b08:	0affff42 	beq	8818 <__adddf3+0xf0>
    8b0c:	e3a02003 	mov	r2, #3
    8b10:	e1b0c1ac 	lsrs	ip, ip, #3
    8b14:	12822003 	addne	r2, r2, #3
    8b18:	e1b0c1ac 	lsrs	ip, ip, #3
    8b1c:	12822003 	addne	r2, r2, #3
    8b20:	e08221ac 	add	r2, r2, ip, lsr #3
    8b24:	e2623020 	rsb	r3, r2, #32
    8b28:	e1a0c310 	lsl	ip, r0, r3
    8b2c:	e1a00230 	lsr	r0, r0, r2
    8b30:	e1800311 	orr	r0, r0, r1, lsl r3
    8b34:	e1a01231 	lsr	r1, r1, r2
    8b38:	e0844002 	add	r4, r4, r2
    8b3c:	eaffff35 	b	8818 <__adddf3+0xf0>

00008b40 <__aeabi_d2f>:
    8b40:	e1a02081 	lsl	r2, r1, #1
    8b44:	e2523207 	subs	r3, r2, #1879048192	@ 0x70000000
    8b48:	2253c602 	subscs	ip, r3, #2097152	@ 0x200000
    8b4c:	227cc57f 	rsbscs	ip, ip, #532676608	@ 0x1fc00000
    8b50:	9a000006 	bls	8b70 <__aeabi_d2f+0x30>
    8b54:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    8b58:	e1a02180 	lsl	r2, r0, #3
    8b5c:	e18c0ea0 	orr	r0, ip, r0, lsr #29
    8b60:	e3520102 	cmp	r2, #-2147483648	@ 0x80000000
    8b64:	e0a00103 	adc	r0, r0, r3, lsl #2
    8b68:	03c00001 	biceq	r0, r0, #1
    8b6c:	e12fff1e 	bx	lr
    8b70:	e3110101 	tst	r1, #1073741824	@ 0x40000000
    8b74:	1a00000f 	bne	8bb8 <__aeabi_d2f+0x78>
    8b78:	e293262e 	adds	r2, r3, #48234496	@ 0x2e00000
    8b7c:	b2010102 	andlt	r0, r1, #-2147483648	@ 0x80000000
    8b80:	b12fff1e 	bxlt	lr
    8b84:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    8b88:	e1a02aa2 	lsr	r2, r2, #21
    8b8c:	e2622018 	rsb	r2, r2, #24
    8b90:	e262c020 	rsb	ip, r2, #32
    8b94:	e1b03c10 	lsls	r3, r0, ip
    8b98:	e1a00230 	lsr	r0, r0, r2
    8b9c:	13800001 	orrne	r0, r0, #1
    8ba0:	e1a03581 	lsl	r3, r1, #11
    8ba4:	e1a035a3 	lsr	r3, r3, #11
    8ba8:	e1800c13 	orr	r0, r0, r3, lsl ip
    8bac:	e1a03233 	lsr	r3, r3, r2
    8bb0:	e1a03083 	lsl	r3, r3, #1
    8bb4:	eaffffe6 	b	8b54 <__aeabi_d2f+0x14>
    8bb8:	e1f03ac2 	mvns	r3, r2, asr #21
    8bbc:	1a000003 	bne	8bd0 <__aeabi_d2f+0x90>
    8bc0:	e1903601 	orrs	r3, r0, r1, lsl #12
    8bc4:	13a0047f 	movne	r0, #2130706432	@ 0x7f000000
    8bc8:	13800503 	orrne	r0, r0, #12582912	@ 0xc00000
    8bcc:	112fff1e 	bxne	lr
    8bd0:	e2010102 	and	r0, r1, #-2147483648	@ 0x80000000
    8bd4:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    8bd8:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    8bdc:	e12fff1e 	bx	lr

00008be0 <__aeabi_frsub>:
    8be0:	e2200102 	eor	r0, r0, #-2147483648	@ 0x80000000
    8be4:	ea000000 	b	8bec <__addsf3>

00008be8 <__aeabi_fsub>:
    8be8:	e2211102 	eor	r1, r1, #-2147483648	@ 0x80000000

00008bec <__addsf3>:
    8bec:	e1b02080 	lsls	r2, r0, #1
    8bf0:	11b03081 	lslsne	r3, r1, #1
    8bf4:	11320003 	teqne	r2, r3
    8bf8:	11f0cc42 	mvnsne	ip, r2, asr #24
    8bfc:	11f0cc43 	mvnsne	ip, r3, asr #24
    8c00:	0a000047 	beq	8d24 <__addsf3+0x138>
    8c04:	e1a02c22 	lsr	r2, r2, #24
    8c08:	e0723c23 	rsbs	r3, r2, r3, lsr #24
    8c0c:	c0822003 	addgt	r2, r2, r3
    8c10:	c0201001 	eorgt	r1, r0, r1
    8c14:	c0210000 	eorgt	r0, r1, r0
    8c18:	c0201001 	eorgt	r1, r0, r1
    8c1c:	b2633000 	rsblt	r3, r3, #0
    8c20:	e3530019 	cmp	r3, #25
    8c24:	812fff1e 	bxhi	lr
    8c28:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
    8c2c:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    8c30:	e3c004ff 	bic	r0, r0, #-16777216	@ 0xff000000
    8c34:	12600000 	rsbne	r0, r0, #0
    8c38:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    8c3c:	e3811502 	orr	r1, r1, #8388608	@ 0x800000
    8c40:	e3c114ff 	bic	r1, r1, #-16777216	@ 0xff000000
    8c44:	12611000 	rsbne	r1, r1, #0
    8c48:	e1320003 	teq	r2, r3
    8c4c:	0a00002e 	beq	8d0c <__addsf3+0x120>
    8c50:	e2422001 	sub	r2, r2, #1
    8c54:	e0900351 	adds	r0, r0, r1, asr r3
    8c58:	e2633020 	rsb	r3, r3, #32
    8c5c:	e1a01311 	lsl	r1, r1, r3
    8c60:	e2003102 	and	r3, r0, #-2147483648	@ 0x80000000
    8c64:	5a000001 	bpl	8c70 <__addsf3+0x84>
    8c68:	e2711000 	rsbs	r1, r1, #0
    8c6c:	e2e00000 	rsc	r0, r0, #0
    8c70:	e3500502 	cmp	r0, #8388608	@ 0x800000
    8c74:	3a00000b 	bcc	8ca8 <__addsf3+0xbc>
    8c78:	e3500401 	cmp	r0, #16777216	@ 0x1000000
    8c7c:	3a000004 	bcc	8c94 <__addsf3+0xa8>
    8c80:	e1b000a0 	lsrs	r0, r0, #1
    8c84:	e1a01061 	rrx	r1, r1
    8c88:	e2822001 	add	r2, r2, #1
    8c8c:	e35200fe 	cmp	r2, #254	@ 0xfe
    8c90:	2a000038 	bcs	8d78 <__addsf3+0x18c>
    8c94:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    8c98:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8c9c:	03c00001 	biceq	r0, r0, #1
    8ca0:	e1800003 	orr	r0, r0, r3
    8ca4:	e12fff1e 	bx	lr
    8ca8:	e1b01081 	lsls	r1, r1, #1
    8cac:	e0a00000 	adc	r0, r0, r0
    8cb0:	e2522001 	subs	r2, r2, #1
    8cb4:	23500502 	cmpcs	r0, #8388608	@ 0x800000
    8cb8:	2afffff5 	bcs	8c94 <__addsf3+0xa8>
    8cbc:	e1b0c620 	lsrs	ip, r0, #12
    8cc0:	01a00600 	lsleq	r0, r0, #12
    8cc4:	0242200c 	subeq	r2, r2, #12
    8cc8:	e31008ff 	tst	r0, #16711680	@ 0xff0000
    8ccc:	01a00400 	lsleq	r0, r0, #8
    8cd0:	02422008 	subeq	r2, r2, #8
    8cd4:	e310060f 	tst	r0, #15728640	@ 0xf00000
    8cd8:	01a00200 	lsleq	r0, r0, #4
    8cdc:	02422004 	subeq	r2, r2, #4
    8ce0:	e3100503 	tst	r0, #12582912	@ 0xc00000
    8ce4:	01a00100 	lsleq	r0, r0, #2
    8ce8:	02422002 	subeq	r2, r2, #2
    8cec:	e3500502 	cmp	r0, #8388608	@ 0x800000
    8cf0:	31a00080 	lslcc	r0, r0, #1
    8cf4:	e2d22000 	sbcs	r2, r2, #0
    8cf8:	a0800b82 	addge	r0, r0, r2, lsl #23
    8cfc:	b2622000 	rsblt	r2, r2, #0
    8d00:	a1800003 	orrge	r0, r0, r3
    8d04:	b1830230 	orrlt	r0, r3, r0, lsr r2
    8d08:	e12fff1e 	bx	lr
    8d0c:	e3320000 	teq	r2, #0
    8d10:	e2211502 	eor	r1, r1, #8388608	@ 0x800000
    8d14:	02200502 	eoreq	r0, r0, #8388608	@ 0x800000
    8d18:	02822001 	addeq	r2, r2, #1
    8d1c:	12433001 	subne	r3, r3, #1
    8d20:	eaffffca 	b	8c50 <__addsf3+0x64>
    8d24:	e1a03081 	lsl	r3, r1, #1
    8d28:	e1f0cc42 	mvns	ip, r2, asr #24
    8d2c:	11f0cc43 	mvnsne	ip, r3, asr #24
    8d30:	0a000013 	beq	8d84 <__addsf3+0x198>
    8d34:	e1320003 	teq	r2, r3
    8d38:	0a000002 	beq	8d48 <__addsf3+0x15c>
    8d3c:	e3320000 	teq	r2, #0
    8d40:	01a00001 	moveq	r0, r1
    8d44:	e12fff1e 	bx	lr
    8d48:	e1300001 	teq	r0, r1
    8d4c:	13a00000 	movne	r0, #0
    8d50:	112fff1e 	bxne	lr
    8d54:	e31204ff 	tst	r2, #-16777216	@ 0xff000000
    8d58:	1a000002 	bne	8d68 <__addsf3+0x17c>
    8d5c:	e1b00080 	lsls	r0, r0, #1
    8d60:	23800102 	orrcs	r0, r0, #-2147483648	@ 0x80000000
    8d64:	e12fff1e 	bx	lr
    8d68:	e2922402 	adds	r2, r2, #33554432	@ 0x2000000
    8d6c:	32800502 	addcc	r0, r0, #8388608	@ 0x800000
    8d70:	312fff1e 	bxcc	lr
    8d74:	e2003102 	and	r3, r0, #-2147483648	@ 0x80000000
    8d78:	e383047f 	orr	r0, r3, #2130706432	@ 0x7f000000
    8d7c:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    8d80:	e12fff1e 	bx	lr
    8d84:	e1f02c42 	mvns	r2, r2, asr #24
    8d88:	11a00001 	movne	r0, r1
    8d8c:	01f03c43 	mvnseq	r3, r3, asr #24
    8d90:	11a01000 	movne	r1, r0
    8d94:	e1b02480 	lsls	r2, r0, #9
    8d98:	01b03481 	lslseq	r3, r1, #9
    8d9c:	01300001 	teqeq	r0, r1
    8da0:	13800501 	orrne	r0, r0, #4194304	@ 0x400000
    8da4:	e12fff1e 	bx	lr

00008da8 <__aeabi_ui2f>:
    8da8:	e3a03000 	mov	r3, #0
    8dac:	ea000001 	b	8db8 <__aeabi_i2f+0x8>

00008db0 <__aeabi_i2f>:
    8db0:	e2103102 	ands	r3, r0, #-2147483648	@ 0x80000000
    8db4:	42600000 	rsbmi	r0, r0, #0
    8db8:	e1b0c000 	movs	ip, r0
    8dbc:	012fff1e 	bxeq	lr
    8dc0:	e383344b 	orr	r3, r3, #1258291200	@ 0x4b000000
    8dc4:	e1a01000 	mov	r1, r0
    8dc8:	e3a00000 	mov	r0, #0
    8dcc:	ea00000f 	b	8e10 <__aeabi_l2f+0x30>

00008dd0 <__aeabi_ul2f>:
    8dd0:	e1902001 	orrs	r2, r0, r1
    8dd4:	012fff1e 	bxeq	lr
    8dd8:	e3a03000 	mov	r3, #0
    8ddc:	ea000005 	b	8df8 <__aeabi_l2f+0x18>

00008de0 <__aeabi_l2f>:
    8de0:	e1902001 	orrs	r2, r0, r1
    8de4:	012fff1e 	bxeq	lr
    8de8:	e2113102 	ands	r3, r1, #-2147483648	@ 0x80000000
    8dec:	5a000001 	bpl	8df8 <__aeabi_l2f+0x18>
    8df0:	e2700000 	rsbs	r0, r0, #0
    8df4:	e2e11000 	rsc	r1, r1, #0
    8df8:	e1b0c001 	movs	ip, r1
    8dfc:	01a0c000 	moveq	ip, r0
    8e00:	01a01000 	moveq	r1, r0
    8e04:	03a00000 	moveq	r0, #0
    8e08:	e383345b 	orr	r3, r3, #1526726656	@ 0x5b000000
    8e0c:	02433201 	subeq	r3, r3, #268435456	@ 0x10000000
    8e10:	e2433502 	sub	r3, r3, #8388608	@ 0x800000
    8e14:	e3a02017 	mov	r2, #23
    8e18:	e35c0801 	cmp	ip, #65536	@ 0x10000
    8e1c:	21a0c82c 	lsrcs	ip, ip, #16
    8e20:	22422010 	subcs	r2, r2, #16
    8e24:	e35c0c01 	cmp	ip, #256	@ 0x100
    8e28:	21a0c42c 	lsrcs	ip, ip, #8
    8e2c:	22422008 	subcs	r2, r2, #8
    8e30:	e35c0010 	cmp	ip, #16
    8e34:	21a0c22c 	lsrcs	ip, ip, #4
    8e38:	22422004 	subcs	r2, r2, #4
    8e3c:	e35c0004 	cmp	ip, #4
    8e40:	22422002 	subcs	r2, r2, #2
    8e44:	304220ac 	subcc	r2, r2, ip, lsr #1
    8e48:	e05221ac 	subs	r2, r2, ip, lsr #3
    8e4c:	e0433b82 	sub	r3, r3, r2, lsl #23
    8e50:	ba000006 	blt	8e70 <__aeabi_l2f+0x90>
    8e54:	e0833211 	add	r3, r3, r1, lsl r2
    8e58:	e1a0c210 	lsl	ip, r0, r2
    8e5c:	e2622020 	rsb	r2, r2, #32
    8e60:	e35c0102 	cmp	ip, #-2147483648	@ 0x80000000
    8e64:	e0a30230 	adc	r0, r3, r0, lsr r2
    8e68:	03c00001 	biceq	r0, r0, #1
    8e6c:	e12fff1e 	bx	lr
    8e70:	e2822020 	add	r2, r2, #32
    8e74:	e1a0c211 	lsl	ip, r1, r2
    8e78:	e2622020 	rsb	r2, r2, #32
    8e7c:	e190008c 	orrs	r0, r0, ip, lsl #1
    8e80:	e0a30231 	adc	r0, r3, r1, lsr r2
    8e84:	01c00fac 	biceq	r0, r0, ip, lsr #31
    8e88:	e12fff1e 	bx	lr

00008e8c <__aeabi_fmul>:
    8e8c:	e3a0c0ff 	mov	ip, #255	@ 0xff
    8e90:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    8e94:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    8e98:	1132000c 	teqne	r2, ip
    8e9c:	1133000c 	teqne	r3, ip
    8ea0:	0a00003e 	beq	8fa0 <__aeabi_fmul+0x114>
    8ea4:	e0822003 	add	r2, r2, r3
    8ea8:	e020c001 	eor	ip, r0, r1
    8eac:	e1b00480 	lsls	r0, r0, #9
    8eb0:	11b01481 	lslsne	r1, r1, #9
    8eb4:	0a000010 	beq	8efc <__aeabi_fmul+0x70>
    8eb8:	e3a03302 	mov	r3, #134217728	@ 0x8000000
    8ebc:	e18302a0 	orr	r0, r3, r0, lsr #5
    8ec0:	e18312a1 	orr	r1, r3, r1, lsr #5
    8ec4:	e0813190 	umull	r3, r1, r0, r1
    8ec8:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    8ecc:	e3510502 	cmp	r1, #8388608	@ 0x800000
    8ed0:	31a01081 	lslcc	r1, r1, #1
    8ed4:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    8ed8:	31a03083 	lslcc	r3, r3, #1
    8edc:	e1800001 	orr	r0, r0, r1
    8ee0:	e2c2207f 	sbc	r2, r2, #127	@ 0x7f
    8ee4:	e35200fd 	cmp	r2, #253	@ 0xfd
    8ee8:	8a00000f 	bhi	8f2c <__aeabi_fmul+0xa0>
    8eec:	e3530102 	cmp	r3, #-2147483648	@ 0x80000000
    8ef0:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8ef4:	03c00001 	biceq	r0, r0, #1
    8ef8:	e12fff1e 	bx	lr
    8efc:	e3300000 	teq	r0, #0
    8f00:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    8f04:	01a01481 	lsleq	r1, r1, #9
    8f08:	e18c04a0 	orr	r0, ip, r0, lsr #9
    8f0c:	e18004a1 	orr	r0, r0, r1, lsr #9
    8f10:	e252207f 	subs	r2, r2, #127	@ 0x7f
    8f14:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    8f18:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    8f1c:	c12fff1e 	bxgt	lr
    8f20:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    8f24:	e3a03000 	mov	r3, #0
    8f28:	e2522001 	subs	r2, r2, #1
    8f2c:	ca000035 	bgt	9008 <__aeabi_fmul+0x17c>
    8f30:	e3720019 	cmn	r2, #25
    8f34:	d2000102 	andle	r0, r0, #-2147483648	@ 0x80000000
    8f38:	d12fff1e 	bxle	lr
    8f3c:	e2622000 	rsb	r2, r2, #0
    8f40:	e1b01080 	lsls	r1, r0, #1
    8f44:	e1a01231 	lsr	r1, r1, r2
    8f48:	e2622020 	rsb	r2, r2, #32
    8f4c:	e1a0c210 	lsl	ip, r0, r2
    8f50:	e1b00061 	rrxs	r0, r1
    8f54:	e2a00000 	adc	r0, r0, #0
    8f58:	e193308c 	orrs	r3, r3, ip, lsl #1
    8f5c:	01c00fac 	biceq	r0, r0, ip, lsr #31
    8f60:	e12fff1e 	bx	lr
    8f64:	e3320000 	teq	r2, #0
    8f68:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    8f6c:	01a00080 	lsleq	r0, r0, #1
    8f70:	03100502 	tsteq	r0, #8388608	@ 0x800000
    8f74:	02422001 	subeq	r2, r2, #1
    8f78:	0afffffb 	beq	8f6c <__aeabi_fmul+0xe0>
    8f7c:	e180000c 	orr	r0, r0, ip
    8f80:	e3330000 	teq	r3, #0
    8f84:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    8f88:	01a01081 	lsleq	r1, r1, #1
    8f8c:	03110502 	tsteq	r1, #8388608	@ 0x800000
    8f90:	02433001 	subeq	r3, r3, #1
    8f94:	0afffffb 	beq	8f88 <__aeabi_fmul+0xfc>
    8f98:	e181100c 	orr	r1, r1, ip
    8f9c:	eaffffc0 	b	8ea4 <__aeabi_fmul+0x18>
    8fa0:	e00c3ba1 	and	r3, ip, r1, lsr #23
    8fa4:	e132000c 	teq	r2, ip
    8fa8:	1133000c 	teqne	r3, ip
    8fac:	0a000005 	beq	8fc8 <__aeabi_fmul+0x13c>
    8fb0:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    8fb4:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    8fb8:	1affffe9 	bne	8f64 <__aeabi_fmul+0xd8>
    8fbc:	e0200001 	eor	r0, r0, r1
    8fc0:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    8fc4:	e12fff1e 	bx	lr
    8fc8:	e3300000 	teq	r0, #0
    8fcc:	13300102 	teqne	r0, #-2147483648	@ 0x80000000
    8fd0:	01a00001 	moveq	r0, r1
    8fd4:	13310000 	teqne	r1, #0
    8fd8:	13310102 	teqne	r1, #-2147483648	@ 0x80000000
    8fdc:	0a00000d 	beq	9018 <__aeabi_fmul+0x18c>
    8fe0:	e132000c 	teq	r2, ip
    8fe4:	1a000001 	bne	8ff0 <__aeabi_fmul+0x164>
    8fe8:	e1b02480 	lsls	r2, r0, #9
    8fec:	1a000009 	bne	9018 <__aeabi_fmul+0x18c>
    8ff0:	e133000c 	teq	r3, ip
    8ff4:	1a000002 	bne	9004 <__aeabi_fmul+0x178>
    8ff8:	e1b03481 	lsls	r3, r1, #9
    8ffc:	11a00001 	movne	r0, r1
    9000:	1a000004 	bne	9018 <__aeabi_fmul+0x18c>
    9004:	e0200001 	eor	r0, r0, r1
    9008:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    900c:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    9010:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    9014:	e12fff1e 	bx	lr
    9018:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    901c:	e3800503 	orr	r0, r0, #12582912	@ 0xc00000
    9020:	e12fff1e 	bx	lr

00009024 <__aeabi_fdiv>:
    9024:	e3a0c0ff 	mov	ip, #255	@ 0xff
    9028:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    902c:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    9030:	1132000c 	teqne	r2, ip
    9034:	1133000c 	teqne	r3, ip
    9038:	0a00003a 	beq	9128 <__aeabi_fdiv+0x104>
    903c:	e0422003 	sub	r2, r2, r3
    9040:	e020c001 	eor	ip, r0, r1
    9044:	e1b01481 	lsls	r1, r1, #9
    9048:	e1a00480 	lsl	r0, r0, #9
    904c:	0a00001c 	beq	90c4 <__aeabi_fdiv+0xa0>
    9050:	e3a03201 	mov	r3, #268435456	@ 0x10000000
    9054:	e1831221 	orr	r1, r3, r1, lsr #4
    9058:	e1833220 	orr	r3, r3, r0, lsr #4
    905c:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    9060:	e1530001 	cmp	r3, r1
    9064:	31a03083 	lslcc	r3, r3, #1
    9068:	e2a2207d 	adc	r2, r2, #125	@ 0x7d
    906c:	e3a0c502 	mov	ip, #8388608	@ 0x800000
    9070:	e1530001 	cmp	r3, r1
    9074:	20433001 	subcs	r3, r3, r1
    9078:	2180000c 	orrcs	r0, r0, ip
    907c:	e15300a1 	cmp	r3, r1, lsr #1
    9080:	204330a1 	subcs	r3, r3, r1, lsr #1
    9084:	218000ac 	orrcs	r0, r0, ip, lsr #1
    9088:	e1530121 	cmp	r3, r1, lsr #2
    908c:	20433121 	subcs	r3, r3, r1, lsr #2
    9090:	2180012c 	orrcs	r0, r0, ip, lsr #2
    9094:	e15301a1 	cmp	r3, r1, lsr #3
    9098:	204331a1 	subcs	r3, r3, r1, lsr #3
    909c:	218001ac 	orrcs	r0, r0, ip, lsr #3
    90a0:	e1b03203 	lsls	r3, r3, #4
    90a4:	11b0c22c 	lsrsne	ip, ip, #4
    90a8:	1afffff0 	bne	9070 <__aeabi_fdiv+0x4c>
    90ac:	e35200fd 	cmp	r2, #253	@ 0xfd
    90b0:	8affff9d 	bhi	8f2c <__aeabi_fmul+0xa0>
    90b4:	e1530001 	cmp	r3, r1
    90b8:	e0a00b82 	adc	r0, r0, r2, lsl #23
    90bc:	03c00001 	biceq	r0, r0, #1
    90c0:	e12fff1e 	bx	lr
    90c4:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    90c8:	e18c04a0 	orr	r0, ip, r0, lsr #9
    90cc:	e292207f 	adds	r2, r2, #127	@ 0x7f
    90d0:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    90d4:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    90d8:	c12fff1e 	bxgt	lr
    90dc:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    90e0:	e3a03000 	mov	r3, #0
    90e4:	e2522001 	subs	r2, r2, #1
    90e8:	eaffff8f 	b	8f2c <__aeabi_fmul+0xa0>
    90ec:	e3320000 	teq	r2, #0
    90f0:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    90f4:	01a00080 	lsleq	r0, r0, #1
    90f8:	03100502 	tsteq	r0, #8388608	@ 0x800000
    90fc:	02422001 	subeq	r2, r2, #1
    9100:	0afffffb 	beq	90f4 <__aeabi_fdiv+0xd0>
    9104:	e180000c 	orr	r0, r0, ip
    9108:	e3330000 	teq	r3, #0
    910c:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    9110:	01a01081 	lsleq	r1, r1, #1
    9114:	03110502 	tsteq	r1, #8388608	@ 0x800000
    9118:	02433001 	subeq	r3, r3, #1
    911c:	0afffffb 	beq	9110 <__aeabi_fdiv+0xec>
    9120:	e181100c 	orr	r1, r1, ip
    9124:	eaffffc4 	b	903c <__aeabi_fdiv+0x18>
    9128:	e00c3ba1 	and	r3, ip, r1, lsr #23
    912c:	e132000c 	teq	r2, ip
    9130:	1a000005 	bne	914c <__aeabi_fdiv+0x128>
    9134:	e1b02480 	lsls	r2, r0, #9
    9138:	1affffb6 	bne	9018 <__aeabi_fmul+0x18c>
    913c:	e133000c 	teq	r3, ip
    9140:	1affffaf 	bne	9004 <__aeabi_fmul+0x178>
    9144:	e1a00001 	mov	r0, r1
    9148:	eaffffb2 	b	9018 <__aeabi_fmul+0x18c>
    914c:	e133000c 	teq	r3, ip
    9150:	1a000003 	bne	9164 <__aeabi_fdiv+0x140>
    9154:	e1b03481 	lsls	r3, r1, #9
    9158:	0affff97 	beq	8fbc <__aeabi_fmul+0x130>
    915c:	e1a00001 	mov	r0, r1
    9160:	eaffffac 	b	9018 <__aeabi_fmul+0x18c>
    9164:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    9168:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    916c:	1affffde 	bne	90ec <__aeabi_fdiv+0xc8>
    9170:	e3d02102 	bics	r2, r0, #-2147483648	@ 0x80000000
    9174:	1affffa2 	bne	9004 <__aeabi_fmul+0x178>
    9178:	e3d13102 	bics	r3, r1, #-2147483648	@ 0x80000000
    917c:	1affff8e 	bne	8fbc <__aeabi_fmul+0x130>
    9180:	eaffffa4 	b	9018 <__aeabi_fmul+0x18c>

00009184 <__gesf2>:
    9184:	e3e0c000 	mvn	ip, #0
    9188:	ea000002 	b	9198 <__cmpsf2+0x4>

0000918c <__lesf2>:
    918c:	e3a0c001 	mov	ip, #1
    9190:	ea000000 	b	9198 <__cmpsf2+0x4>

00009194 <__cmpsf2>:
    9194:	e3a0c001 	mov	ip, #1
    9198:	e52dc004 	push	{ip}		@ (str ip, [sp, #-4]!)
    919c:	e1a02080 	lsl	r2, r0, #1
    91a0:	e1a03081 	lsl	r3, r1, #1
    91a4:	e1f0cc42 	mvns	ip, r2, asr #24
    91a8:	11f0cc43 	mvnsne	ip, r3, asr #24
    91ac:	0a000007 	beq	91d0 <__cmpsf2+0x3c>
    91b0:	e28dd004 	add	sp, sp, #4
    91b4:	e192c0a3 	orrs	ip, r2, r3, lsr #1
    91b8:	11300001 	teqne	r0, r1
    91bc:	50520003 	subspl	r0, r2, r3
    91c0:	81a00fc1 	asrhi	r0, r1, #31
    91c4:	31e00fc1 	mvncc	r0, r1, asr #31
    91c8:	13800001 	orrne	r0, r0, #1
    91cc:	e12fff1e 	bx	lr
    91d0:	e1f0cc42 	mvns	ip, r2, asr #24
    91d4:	1a000001 	bne	91e0 <__cmpsf2+0x4c>
    91d8:	e1b0c480 	lsls	ip, r0, #9
    91dc:	1a000003 	bne	91f0 <__cmpsf2+0x5c>
    91e0:	e1f0cc43 	mvns	ip, r3, asr #24
    91e4:	1afffff1 	bne	91b0 <__cmpsf2+0x1c>
    91e8:	e1b0c481 	lsls	ip, r1, #9
    91ec:	0affffef 	beq	91b0 <__cmpsf2+0x1c>
    91f0:	e49d0004 	pop	{r0}		@ (ldr r0, [sp], #4)
    91f4:	e12fff1e 	bx	lr

000091f8 <__aeabi_cfrcmple>:
    91f8:	e1a0c000 	mov	ip, r0
    91fc:	e1a00001 	mov	r0, r1
    9200:	e1a0100c 	mov	r1, ip
    9204:	eaffffff 	b	9208 <__aeabi_cfcmpeq>

00009208 <__aeabi_cfcmpeq>:
    9208:	e92d400f 	push	{r0, r1, r2, r3, lr}
    920c:	ebffffe0 	bl	9194 <__cmpsf2>
    9210:	e3500000 	cmp	r0, #0
    9214:	43700000 	cmnmi	r0, #0
    9218:	e8bd400f 	pop	{r0, r1, r2, r3, lr}
    921c:	e12fff1e 	bx	lr

00009220 <__aeabi_fcmpeq>:
    9220:	e52de008 	str	lr, [sp, #-8]!
    9224:	ebfffff7 	bl	9208 <__aeabi_cfcmpeq>
    9228:	03a00001 	moveq	r0, #1
    922c:	13a00000 	movne	r0, #0
    9230:	e49de008 	ldr	lr, [sp], #8
    9234:	e12fff1e 	bx	lr

00009238 <__aeabi_fcmplt>:
    9238:	e52de008 	str	lr, [sp, #-8]!
    923c:	ebfffff1 	bl	9208 <__aeabi_cfcmpeq>
    9240:	33a00001 	movcc	r0, #1
    9244:	23a00000 	movcs	r0, #0
    9248:	e49de008 	ldr	lr, [sp], #8
    924c:	e12fff1e 	bx	lr

00009250 <__aeabi_fcmple>:
    9250:	e52de008 	str	lr, [sp, #-8]!
    9254:	ebffffeb 	bl	9208 <__aeabi_cfcmpeq>
    9258:	93a00001 	movls	r0, #1
    925c:	83a00000 	movhi	r0, #0
    9260:	e49de008 	ldr	lr, [sp], #8
    9264:	e12fff1e 	bx	lr

00009268 <__aeabi_fcmpge>:
    9268:	e52de008 	str	lr, [sp, #-8]!
    926c:	ebffffe1 	bl	91f8 <__aeabi_cfrcmple>
    9270:	93a00001 	movls	r0, #1
    9274:	83a00000 	movhi	r0, #0
    9278:	e49de008 	ldr	lr, [sp], #8
    927c:	e12fff1e 	bx	lr

00009280 <__aeabi_fcmpgt>:
    9280:	e52de008 	str	lr, [sp, #-8]!
    9284:	ebffffdb 	bl	91f8 <__aeabi_cfrcmple>
    9288:	33a00001 	movcc	r0, #1
    928c:	23a00000 	movcs	r0, #0
    9290:	e49de008 	ldr	lr, [sp], #8
    9294:	e12fff1e 	bx	lr
