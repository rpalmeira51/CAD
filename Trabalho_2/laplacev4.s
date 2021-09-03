	.file	"laplacev4.cpp"
# GNU C++17 (GCC) version 11.1.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.1.0-p13.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"{"
.LC1:
	.string	", "
.LC2:
	.string	"}\n"
	.text
	.globl	_Z11print_arrayPdRSo
	.type	_Z11print_arrayPdRSo, @function
_Z11print_arrayPdRSo:
.LFB2322:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# o, o
# laplacev4.cpp:12:   o << "{";
	movq	-32(%rbp), %rax	# o, tmp86
	leaq	.LC0(%rip), %rdx	#, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp86,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	movq	$125000, -8(%rbp)	#, i
# laplacev4.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	jmp	.L2	#
.L3:
# laplacev4.cpp:15:     o << a[i] << ", ";
	movq	-8(%rbp), %rax	# i, tmp88
	leaq	0(,%rax,8), %rdx	#, _1
	movq	-24(%rbp), %rax	# a, tmp89
	addq	%rdx, %rax	# _1, _2
	movq	(%rax), %rdx	# *_2, _3
	movq	-32(%rbp), %rax	# o, tmp90
	movq	%rdx, %xmm0	# _3,
	movq	%rax, %rdi	# tmp90,
	call	_ZNSolsEd@PLT	#
	movq	%rax, %rdx	#, _4
# laplacev4.cpp:15:     o << a[i] << ", ";
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	movq	%rdx, %rdi	# _4,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	addq	$1, -8(%rbp)	#, i
.L2:
# laplacev4.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	cmpq	$125499, -8(%rbp)	#, i
	jbe	.L3	#,
# laplacev4.cpp:17:   o  << "}\n";
	movq	-32(%rbp), %rax	# o, tmp92
	leaq	.LC2(%rip), %rdx	#, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp92,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:18: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2322:
	.size	_Z11print_arrayPdRSo, .-_Z11print_arrayPdRSo
	.section	.text._Z7secondsv,"axG",@progbits,_Z7secondsv,comdat
	.weak	_Z7secondsv
	.type	_Z7secondsv, @function
_Z7secondsv:
.LFB2323:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# laplacev4.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	call	clock@PLT	#
# laplacev4.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	pxor	%xmm1, %xmm1	# _2
	cvtsi2sdq	%rax, %xmm1	# _1, _2
# laplacev4.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	movsd	.LC3(%rip), %xmm0	#, tmp86
	mulsd	%xmm1, %xmm0	# _2, _5
	movq	%xmm0, %rax	# _5, <retval>
# laplacev4.cpp:26: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2323:
	.size	_Z7secondsv, .-_Z7secondsv
	.section	.text._Z3SQRRKd,"axG",@progbits,_Z3SQRRKd,comdat
	.weak	_Z3SQRRKd
	.type	_Z3SQRRKd, @function
_Z3SQRRKd:
.LFB2324:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
# laplacev4.cpp:30: 	return (x*x);
	movq	-8(%rbp), %rax	# x, tmp86
	movsd	(%rax), %xmm1	# *x_4(D), _1
# laplacev4.cpp:30: 	return (x*x);
	movq	-8(%rbp), %rax	# x, tmp87
	movsd	(%rax), %xmm0	# *x_4(D), _2
# laplacev4.cpp:30: 	return (x*x);
	mulsd	%xmm1, %xmm0	# _1, _5
	movq	%xmm0, %rax	# _5, <retval>
# laplacev4.cpp:31: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2324:
	.size	_Z3SQRRKd, .-_Z3SQRRKd
	.section	.text._Z2BCdd,"axG",@progbits,_Z2BCdd,comdat
	.weak	_Z2BCdd
	.type	_Z2BCdd, @function
_Z2BCdd:
.LFB2325:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# x, x
	movsd	%xmm1, -16(%rbp)	# y, y
# laplacev4.cpp:35: 	return (x*x - y*y);
	movsd	-8(%rbp), %xmm0	# x, tmp86
	movapd	%xmm0, %xmm1	# tmp86, tmp86
	mulsd	%xmm0, %xmm1	# tmp86, tmp86
# laplacev4.cpp:35: 	return (x*x - y*y);
	movsd	-16(%rbp), %xmm0	# y, tmp87
	mulsd	%xmm0, %xmm0	# tmp87, _2
# laplacev4.cpp:35: 	return (x*x - y*y);
	subsd	%xmm0, %xmm1	# _2, _5
	movq	%xmm1, %rax	# _5, <retval>
# laplacev4.cpp:36: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2325:
	.size	_Z2BCdd, .-_Z2BCdd
	.text
	.align 2
	.globl	_ZN4GridC2Eii
	.type	_ZN4GridC2Eii, @function
_ZN4GridC2Eii:
.LFB2327:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movl	%esi, -28(%rbp)	# n_x, n_x
	movl	%edx, -32(%rbp)	# n_y, n_y
# laplacev4.cpp:48: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-24(%rbp), %rax	# this, tmp105
	movl	-28(%rbp), %edx	# n_x, tmp106
	movl	%edx, 16(%rax)	# tmp106, this_27(D)->nx
# laplacev4.cpp:48: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-24(%rbp), %rax	# this, tmp107
	movl	-32(%rbp), %edx	# n_y, tmp108
	movl	%edx, 20(%rax)	# tmp108, this_27(D)->ny
# laplacev4.cpp:50: 	dx = 1.0/Real(nx - 1);
	movq	-24(%rbp), %rax	# this, tmp109
	movl	16(%rax), %eax	# this_27(D)->nx, _1
# laplacev4.cpp:50: 	dx = 1.0/Real(nx - 1);
	subl	$1, %eax	#, _2
# laplacev4.cpp:50: 	dx = 1.0/Real(nx - 1);
	pxor	%xmm1, %xmm1	# _3
	cvtsi2sdl	%eax, %xmm1	# _2, _3
# laplacev4.cpp:50: 	dx = 1.0/Real(nx - 1);
	movsd	.LC4(%rip), %xmm0	#, tmp110
	divsd	%xmm1, %xmm0	# _3, _4
# laplacev4.cpp:50: 	dx = 1.0/Real(nx - 1);
	movq	-24(%rbp), %rax	# this, tmp111
	movsd	%xmm0, (%rax)	# _4, this_27(D)->dx
# laplacev4.cpp:51: 	dy = 1.0/Real(ny - 1);
	movq	-24(%rbp), %rax	# this, tmp112
	movl	20(%rax), %eax	# this_27(D)->ny, _5
# laplacev4.cpp:51: 	dy = 1.0/Real(ny - 1);
	subl	$1, %eax	#, _6
# laplacev4.cpp:51: 	dy = 1.0/Real(ny - 1);
	pxor	%xmm1, %xmm1	# _7
	cvtsi2sdl	%eax, %xmm1	# _6, _7
# laplacev4.cpp:51: 	dy = 1.0/Real(ny - 1);
	movsd	.LC4(%rip), %xmm0	#, tmp113
	divsd	%xmm1, %xmm0	# _7, _8
# laplacev4.cpp:51: 	dy = 1.0/Real(ny - 1);
	movq	-24(%rbp), %rax	# this, tmp114
	movsd	%xmm0, 8(%rax)	# _8, this_27(D)->dy
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp115
	movl	16(%rax), %edx	# this_27(D)->nx, _9
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp116
	movl	20(%rax), %eax	# this_27(D)->ny, _10
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	imull	%edx, %eax	# _9, _11
	cltq
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	movabsq	$1152921504606846975, %rdx	#, tmp117
	cmpq	%rdx, %rax	# tmp117, _35
	ja	.L11	#,
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	salq	$3, %rax	#, iftmp.0_37
	movq	%rax, %rdi	# iftmp.0_37,
	call	_Znam@PLT	#
	movq	%rax, %rdx	# tmp118, _12
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp119
	movq	%rdx, 24(%rax)	# _12, this_27(D)->u
# laplacev4.cpp:53: 	for (int i=0; i<nx; ++i) {
	movl	$0, -8(%rbp)	#, i
# laplacev4.cpp:53: 	for (int i=0; i<nx; ++i) {
	jmp	.L13	#
.L11:
# laplacev4.cpp:52: 	u = new Real [nx*ny];
	call	__cxa_throw_bad_array_new_length@PLT	#
.L16:
# laplacev4.cpp:54: 		for (int j=0; j<ny; ++j) {
	movl	$0, -4(%rbp)	#, j
# laplacev4.cpp:54: 		for (int j=0; j<ny; ++j) {
	jmp	.L14	#
.L15:
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movq	-24(%rbp), %rax	# this, tmp120
	movq	24(%rax), %rdx	# this_27(D)->u, _13
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movq	-24(%rbp), %rax	# this, tmp121
	movl	16(%rax), %eax	# this_27(D)->nx, _14
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	imull	-8(%rbp), %eax	# i, _14
	movl	%eax, %ecx	# _14, _15
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movl	-4(%rbp), %eax	# j, tmp122
	addl	%ecx, %eax	# _15, _16
	cltq
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	salq	$3, %rax	#, _18
	addq	%rdx, %rax	# _13, _19
# laplacev4.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	pxor	%xmm0, %xmm0	# tmp123
	movsd	%xmm0, (%rax)	# tmp123, *_19
# laplacev4.cpp:54: 		for (int j=0; j<ny; ++j) {
	addl	$1, -4(%rbp)	#, j
.L14:
# laplacev4.cpp:54: 		for (int j=0; j<ny; ++j) {
	movq	-24(%rbp), %rax	# this, tmp124
	movl	20(%rax), %eax	# this_27(D)->ny, _20
# laplacev4.cpp:54: 		for (int j=0; j<ny; ++j) {
	cmpl	%eax, -4(%rbp)	# _20, j
	jl	.L15	#,
# laplacev4.cpp:53: 	for (int i=0; i<nx; ++i) {
	addl	$1, -8(%rbp)	#, i
.L13:
# laplacev4.cpp:53: 	for (int i=0; i<nx; ++i) {
	movq	-24(%rbp), %rax	# this, tmp125
	movl	16(%rax), %eax	# this_27(D)->nx, _21
# laplacev4.cpp:53: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -8(%rbp)	# _21, i
	jl	.L16	#,
# laplacev4.cpp:58: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2327:
	.size	_ZN4GridC2Eii, .-_ZN4GridC2Eii
	.globl	_ZN4GridC1Eii
	.set	_ZN4GridC1Eii,_ZN4GridC2Eii
	.align 2
	.globl	_ZN4GridD2Ev
	.type	_ZN4GridD2Ev, @function
_ZN4GridD2Ev:
.LFB2330:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# laplacev4.cpp:66: 	delete [] u;
	movq	-8(%rbp), %rax	# this, tmp84
	movq	24(%rax), %rax	# this_5(D)->u, _1
# laplacev4.cpp:66: 	delete [] u;
	testq	%rax, %rax	# _1
	je	.L19	#,
# laplacev4.cpp:66: 	delete [] u;
	movq	-8(%rbp), %rax	# this, tmp85
	movq	24(%rax), %rax	# this_5(D)->u, _2
	movq	%rax, %rdi	# _2,
	call	_ZdaPv@PLT	#
.L19:
# laplacev4.cpp:67: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2330:
	.size	_ZN4GridD2Ev, .-_ZN4GridD2Ev
	.globl	_ZN4GridD1Ev
	.set	_ZN4GridD1Ev,_ZN4GridD2Ev
	.align 2
	.globl	_ZN4Grid9setBCFuncEPFdddE
	.type	_ZN4Grid9setBCFuncEPFdddE, @function
_ZN4Grid9setBCFuncEPFdddE:
.LFB2332:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# this, this
	movq	%rsi, -96(%rbp)	# f, f
# laplacev4.cpp:72: 	xmin = 0.0;
	pxor	%xmm0, %xmm0	# tmp124
	movsd	%xmm0, -64(%rbp)	# tmp124, xmin
# laplacev4.cpp:73: 	ymin = 0.0;
	pxor	%xmm0, %xmm0	# tmp125
	movsd	%xmm0, -56(%rbp)	# tmp125, ymin
# laplacev4.cpp:74: 	xmax = 1.0;
	movsd	.LC4(%rip), %xmm0	#, tmp126
	movsd	%xmm0, -48(%rbp)	# tmp126, xmax
# laplacev4.cpp:75: 	ymax = 1.0;
	movsd	.LC4(%rip), %xmm0	#, tmp127
	movsd	%xmm0, -40(%rbp)	# tmp127, ymax
# laplacev4.cpp:77: 	for (int j=0; j<ny; ++j) {
	movl	$0, -72(%rbp)	#, j
# laplacev4.cpp:77: 	for (int j=0; j<ny; ++j) {
	jmp	.L21	#
.L22:
# laplacev4.cpp:78: 		y = j*dy;
	pxor	%xmm1, %xmm1	# _1
	cvtsi2sdl	-72(%rbp), %xmm1	# j, _1
# laplacev4.cpp:78: 		y = j*dy;
	movq	-88(%rbp), %rax	# this, tmp128
	movsd	8(%rax), %xmm0	# this_53(D)->dy, _2
# laplacev4.cpp:78: 		y = j*dy;
	mulsd	%xmm1, %xmm0	# _1, tmp129
	movsd	%xmm0, -24(%rbp)	# tmp129, y
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	movq	-96(%rbp), %rdx	# f, f.1_3
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	movq	-88(%rbp), %rax	# this, tmp130
	movq	24(%rax), %rcx	# this_53(D)->u, _4
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	movl	-72(%rbp), %eax	# j, tmp131
	cltq
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	salq	$3, %rax	#, _6
	leaq	(%rcx,%rax), %rbx	#, _7
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	movsd	-24(%rbp), %xmm0	# y, tmp132
	movq	-64(%rbp), %rax	# xmin, tmp133
	movapd	%xmm0, %xmm1	# tmp132,
	movq	%rax, %xmm0	# tmp133,
	call	*%rdx	# f.1_3
	movq	%xmm0, %rax	#, _8
# laplacev4.cpp:79: 		u[j] = f(xmin, y);
	movq	%rax, (%rbx)	# _8, *_7
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-96(%rbp), %rdx	# f, f.2_9
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp134
	movq	24(%rax), %rsi	# this_53(D)->u, _10
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp135
	movl	16(%rax), %eax	# this_53(D)->nx, _11
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	leal	-1(%rax), %ecx	#, _12
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp136
	movl	16(%rax), %eax	# this_53(D)->nx, _13
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	imull	%eax, %ecx	# _13, _14
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movl	-72(%rbp), %eax	# j, tmp137
	addl	%ecx, %eax	# _14, _15
	cltq
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	salq	$3, %rax	#, _17
	leaq	(%rsi,%rax), %rbx	#, _18
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movsd	-24(%rbp), %xmm0	# y, tmp138
	movq	-48(%rbp), %rax	# xmax, tmp139
	movapd	%xmm0, %xmm1	# tmp138,
	movq	%rax, %xmm0	# tmp139,
	call	*%rdx	# f.2_9
	movq	%xmm0, %rax	#, _19
# laplacev4.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	%rax, (%rbx)	# _19, *_18
# laplacev4.cpp:77: 	for (int j=0; j<ny; ++j) {
	addl	$1, -72(%rbp)	#, j
.L21:
# laplacev4.cpp:77: 	for (int j=0; j<ny; ++j) {
	movq	-88(%rbp), %rax	# this, tmp140
	movl	20(%rax), %eax	# this_53(D)->ny, _20
# laplacev4.cpp:77: 	for (int j=0; j<ny; ++j) {
	cmpl	%eax, -72(%rbp)	# _20, j
	jl	.L22	#,
# laplacev4.cpp:83: 	for (int i=0; i<nx; ++i) {
	movl	$0, -68(%rbp)	#, i
# laplacev4.cpp:83: 	for (int i=0; i<nx; ++i) {
	jmp	.L23	#
.L24:
# laplacev4.cpp:84: 		x = i*dx;
	pxor	%xmm1, %xmm1	# _21
	cvtsi2sdl	-68(%rbp), %xmm1	# i, _21
# laplacev4.cpp:84: 		x = i*dx;
	movq	-88(%rbp), %rax	# this, tmp141
	movsd	(%rax), %xmm0	# this_53(D)->dx, _22
# laplacev4.cpp:84: 		x = i*dx;
	mulsd	%xmm1, %xmm0	# _21, tmp142
	movsd	%xmm0, -32(%rbp)	# tmp142, x
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-96(%rbp), %rdx	# f, f.3_23
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-88(%rbp), %rax	# this, tmp143
	movq	24(%rax), %rcx	# this_53(D)->u, _24
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-88(%rbp), %rax	# this, tmp144
	movl	16(%rax), %eax	# this_53(D)->nx, _25
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	imull	-68(%rbp), %eax	# i, _26
	cltq
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	salq	$3, %rax	#, _28
	leaq	(%rcx,%rax), %rbx	#, _29
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	movsd	-56(%rbp), %xmm0	# ymin, tmp145
	movq	-32(%rbp), %rax	# x, tmp146
	movapd	%xmm0, %xmm1	# tmp145,
	movq	%rax, %xmm0	# tmp146,
	call	*%rdx	# f.3_23
	movq	%xmm0, %rax	#, _30
# laplacev4.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	%rax, (%rbx)	# _30, *_29
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-96(%rbp), %rdx	# f, f.4_31
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp147
	movq	24(%rax), %rcx	# this_53(D)->u, _32
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp148
	movl	16(%rax), %eax	# this_53(D)->nx, _33
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	imull	-68(%rbp), %eax	# i, _33
	movl	%eax, %esi	# _33, _34
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp149
	movl	20(%rax), %eax	# this_53(D)->ny, _35
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	addl	%esi, %eax	# _34, _36
	cltq
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	salq	$3, %rax	#, _38
	subq	$8, %rax	#, _39
	leaq	(%rcx,%rax), %rbx	#, _40
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movsd	-40(%rbp), %xmm0	# ymax, tmp150
	movq	-32(%rbp), %rax	# x, tmp151
	movapd	%xmm0, %xmm1	# tmp150,
	movq	%rax, %xmm0	# tmp151,
	call	*%rdx	# f.4_31
	movq	%xmm0, %rax	#, _41
# laplacev4.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	%rax, (%rbx)	# _41, *_40
# laplacev4.cpp:83: 	for (int i=0; i<nx; ++i) {
	addl	$1, -68(%rbp)	#, i
.L23:
# laplacev4.cpp:83: 	for (int i=0; i<nx; ++i) {
	movq	-88(%rbp), %rax	# this, tmp152
	movl	16(%rax), %eax	# this_53(D)->nx, _42
# laplacev4.cpp:83: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -68(%rbp)	# _42, i
	jl	.L24	#,
# laplacev4.cpp:88: }
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2332:
	.size	_ZN4Grid9setBCFuncEPFdddE, .-_ZN4Grid9setBCFuncEPFdddE
	.align 2
	.globl	_ZN13LaplaceSolverC2EP4Grid
	.type	_ZN13LaplaceSolverC2EP4Grid, @function
_ZN13LaplaceSolverC2EP4Grid:
.LFB2334:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# grid, grid
# laplacev4.cpp:101: 	g = grid;
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# grid, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->g
# laplacev4.cpp:102: 	initialize();
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZN13LaplaceSolver10initializeEv	#
# laplacev4.cpp:103: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2334:
	.size	_ZN13LaplaceSolverC2EP4Grid, .-_ZN13LaplaceSolverC2EP4Grid
	.globl	_ZN13LaplaceSolverC1EP4Grid
	.set	_ZN13LaplaceSolverC1EP4Grid,_ZN13LaplaceSolverC2EP4Grid
	.align 2
	.globl	_ZN13LaplaceSolverD2Ev
	.type	_ZN13LaplaceSolverD2Ev, @function
_ZN13LaplaceSolverD2Ev:
.LFB2337:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# laplacev4.cpp:107: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2337:
	.size	_ZN13LaplaceSolverD2Ev, .-_ZN13LaplaceSolverD2Ev
	.globl	_ZN13LaplaceSolverD1Ev
	.set	_ZN13LaplaceSolverD1Ev,_ZN13LaplaceSolverD2Ev
	.align 2
	.globl	_ZN13LaplaceSolver10initializeEv
	.type	_ZN13LaplaceSolver10initializeEv, @function
_ZN13LaplaceSolver10initializeEv:
.LFB2339:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# laplacev4.cpp:111: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2339:
	.size	_ZN13LaplaceSolver10initializeEv, .-_ZN13LaplaceSolver10initializeEv
	.align 2
	.globl	_ZN13LaplaceSolver8timeStepEdi
	.type	_ZN13LaplaceSolver8timeStepEdi, @function
_ZN13LaplaceSolver8timeStepEdi:
.LFB2340:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# this, this
	movsd	%xmm0, -128(%rbp)	# dt, dt
	movl	%esi, -132(%rbp)	# step_size_i, step_size_i
# laplacev4.cpp:114: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp260
	movq	%rax, -8(%rbp)	# tmp260, D.59843
	xorl	%eax, %eax	# tmp260
# laplacev4.cpp:115: 	int step_size = step_size_i-1;
	movl	-132(%rbp), %eax	# step_size_i, tmp173
	subl	$1, %eax	#, tmp172
	movl	%eax, -80(%rbp)	# tmp172, step_size
# laplacev4.cpp:116: 	Real dx2 = g->dx*g->dx;
	movq	-120(%rbp), %rax	# this, tmp174
	movq	(%rax), %rax	# this_101(D)->g, _1
# laplacev4.cpp:116: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm1	# _1->dx, _2
# laplacev4.cpp:116: 	Real dx2 = g->dx*g->dx;
	movq	-120(%rbp), %rax	# this, tmp175
	movq	(%rax), %rax	# this_101(D)->g, _3
# laplacev4.cpp:116: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm0	# _3->dx, _4
# laplacev4.cpp:116: 	Real dx2 = g->dx*g->dx;
	mulsd	%xmm1, %xmm0	# _2, tmp176
	movsd	%xmm0, -40(%rbp)	# tmp176, dx2
# laplacev4.cpp:117: 	Real dy2 = g->dy*g->dy;
	movq	-120(%rbp), %rax	# this, tmp177
	movq	(%rax), %rax	# this_101(D)->g, _5
# laplacev4.cpp:117: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm1	# _5->dy, _6
# laplacev4.cpp:117: 	Real dy2 = g->dy*g->dy;
	movq	-120(%rbp), %rax	# this, tmp178
	movq	(%rax), %rax	# this_101(D)->g, _7
# laplacev4.cpp:117: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm0	# _7->dy, _8
# laplacev4.cpp:117: 	Real dy2 = g->dy*g->dy;
	mulsd	%xmm1, %xmm0	# _6, tmp179
	movsd	%xmm0, -32(%rbp)	# tmp179, dy2
# laplacev4.cpp:119: 	Real err = 0.0;
	pxor	%xmm0, %xmm0	# tmp180
	movsd	%xmm0, -48(%rbp)	# tmp180, err
# laplacev4.cpp:120: 	int nx = g->nx;
	movq	-120(%rbp), %rax	# this, tmp181
	movq	(%rax), %rax	# this_101(D)->g, _9
# laplacev4.cpp:120: 	int nx = g->nx;
	movl	16(%rax), %eax	# _9->nx, tmp182
	movl	%eax, -76(%rbp)	# tmp182, nx
# laplacev4.cpp:121: 	int ny = g->ny;
	movq	-120(%rbp), %rax	# this, tmp183
	movq	(%rax), %rax	# this_101(D)->g, _10
# laplacev4.cpp:121: 	int ny = g->ny;
	movl	20(%rax), %eax	# _10->ny, tmp184
	movl	%eax, -72(%rbp)	# tmp184, ny
# laplacev4.cpp:122: 	Real *u = g->u;
	movq	-120(%rbp), %rax	# this, tmp185
	movq	(%rax), %rax	# this_101(D)->g, _11
# laplacev4.cpp:122: 	Real *u = g->u;
	movq	24(%rax), %rax	# _11->u, tmp186
	movq	%rax, -24(%rbp)	# tmp186, u
# laplacev4.cpp:124: 	for (int s=0;s<step_size;s++){
	movl	$0, -100(%rbp)	#, s
# laplacev4.cpp:124: 	for (int s=0;s<step_size;s++){
	jmp	.L29	#
.L34:
# laplacev4.cpp:125: 		for (int i=1; i<nx-1; ++i) {
	movl	$1, -96(%rbp)	#, i
# laplacev4.cpp:125: 		for (int i=1; i<nx-1; ++i) {
	jmp	.L30	#
.L33:
# laplacev4.cpp:126: 			subscript = nx*i;
	movl	-76(%rbp), %eax	# nx, tmp188
	imull	-96(%rbp), %eax	# i, tmp187
	movl	%eax, -68(%rbp)	# tmp187, subscript
# laplacev4.cpp:127: 			subscript_m = subscript -nx;
	movl	-68(%rbp), %eax	# subscript, tmp192
	subl	-76(%rbp), %eax	# nx, tmp191
	movl	%eax, -64(%rbp)	# tmp191, subscript_m
# laplacev4.cpp:128: 			subscript_p = subscript + nx;
	movl	-68(%rbp), %edx	# subscript, tmp197
	movl	-76(%rbp), %eax	# nx, tmp198
	addl	%edx, %eax	# tmp197, tmp196
	movl	%eax, -60(%rbp)	# tmp196, subscript_p
# laplacev4.cpp:129: 			for (int j=1; j<ny-1; ++j) {
	movl	$1, -92(%rbp)	#, j
# laplacev4.cpp:129: 			for (int j=1; j<ny-1; ++j) {
	jmp	.L31	#
.L32:
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-64(%rbp), %edx	# subscript_m, tmp199
	movl	-92(%rbp), %eax	# j, tmp200
	addl	%edx, %eax	# tmp199, _12
	cltq
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _14
	movq	-24(%rbp), %rax	# u, tmp201
	addq	%rdx, %rax	# _14, _15
	movsd	(%rax), %xmm1	# *_15, _16
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-60(%rbp), %edx	# subscript_p, tmp202
	movl	-92(%rbp), %eax	# j, tmp203
	addl	%edx, %eax	# tmp202, _17
	cltq
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _19
	movq	-24(%rbp), %rax	# u, tmp204
	addq	%rdx, %rax	# _19, _20
	movsd	(%rax), %xmm0	# *_20, _21
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _21, _22
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-92(%rbp), %eax	# j, tmp205
	leal	-1(%rax), %edx	#, _23
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-68(%rbp), %eax	# subscript, tmp206
	addl	%edx, %eax	# _23, _24
	cltq
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _26
	movq	-24(%rbp), %rax	# u, tmp207
	addq	%rdx, %rax	# _26, _27
	movsd	(%rax), %xmm2	# *_27, _28
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-92(%rbp), %eax	# j, tmp208
	leal	1(%rax), %edx	#, _29
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-68(%rbp), %eax	# subscript, tmp209
	addl	%edx, %eax	# _29, _30
	cltq
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _32
	movq	-24(%rbp), %rax	# u, tmp210
	addq	%rdx, %rax	# _32, _33
	movsd	(%rax), %xmm0	# *_33, _34
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	addsd	%xmm2, %xmm0	# _28, _35
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _35, _36
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-68(%rbp), %edx	# subscript, tmp211
	movl	-92(%rbp), %eax	# j, tmp212
	addl	%edx, %eax	# tmp211, _37
	cltq
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _39
	movq	-24(%rbp), %rax	# u, tmp213
	addq	%rdx, %rax	# _39, _40
# laplacev4.cpp:131: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movsd	.LC6(%rip), %xmm0	#, tmp214
	mulsd	%xmm1, %xmm0	# _36, _41
# laplacev4.cpp:130: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movsd	%xmm0, (%rax)	# _41, *_40
# laplacev4.cpp:129: 			for (int j=1; j<ny-1; ++j) {
	addl	$1, -92(%rbp)	#, j
.L31:
# laplacev4.cpp:129: 			for (int j=1; j<ny-1; ++j) {
	movl	-72(%rbp), %eax	# ny, tmp215
	subl	$1, %eax	#, _42
# laplacev4.cpp:129: 			for (int j=1; j<ny-1; ++j) {
	cmpl	%eax, -92(%rbp)	# _42, j
	jl	.L32	#,
# laplacev4.cpp:125: 		for (int i=1; i<nx-1; ++i) {
	addl	$1, -96(%rbp)	#, i
.L30:
# laplacev4.cpp:125: 		for (int i=1; i<nx-1; ++i) {
	movl	-76(%rbp), %eax	# nx, tmp216
	subl	$1, %eax	#, _43
# laplacev4.cpp:125: 		for (int i=1; i<nx-1; ++i) {
	cmpl	%eax, -96(%rbp)	# _43, i
	jl	.L33	#,
# laplacev4.cpp:124: 	for (int s=0;s<step_size;s++){
	addl	$1, -100(%rbp)	#, s
.L29:
# laplacev4.cpp:124: 	for (int s=0;s<step_size;s++){
	movl	-100(%rbp), %eax	# s, tmp217
	cmpl	-80(%rbp), %eax	# step_size, tmp217
	jl	.L34	#,
# laplacev4.cpp:135: 	for (int i=1; i<nx-1; ++i) {
	movl	$1, -88(%rbp)	#, i
# laplacev4.cpp:135: 	for (int i=1; i<nx-1; ++i) {
	jmp	.L35	#
.L38:
# laplacev4.cpp:136: 		subscript = nx*i;
	movl	-76(%rbp), %eax	# nx, tmp219
	imull	-88(%rbp), %eax	# i, tmp218
	movl	%eax, -68(%rbp)	# tmp218, subscript
# laplacev4.cpp:137: 		subscript_m = subscript -nx;
	movl	-68(%rbp), %eax	# subscript, tmp223
	subl	-76(%rbp), %eax	# nx, tmp222
	movl	%eax, -64(%rbp)	# tmp222, subscript_m
# laplacev4.cpp:138: 		subscript_p = subscript + nx;
	movl	-68(%rbp), %edx	# subscript, tmp228
	movl	-76(%rbp), %eax	# nx, tmp229
	addl	%edx, %eax	# tmp228, tmp227
	movl	%eax, -60(%rbp)	# tmp227, subscript_p
# laplacev4.cpp:139: 		for (int j=1; j<ny-1; ++j) {
	movl	$1, -84(%rbp)	#, j
# laplacev4.cpp:139: 		for (int j=1; j<ny-1; ++j) {
	jmp	.L36	#
.L37:
# laplacev4.cpp:140: 			tmp = u[(subscript +j)];
	movl	-68(%rbp), %edx	# subscript, tmp230
	movl	-84(%rbp), %eax	# j, tmp231
	addl	%edx, %eax	# tmp230, _44
	cltq
# laplacev4.cpp:140: 			tmp = u[(subscript +j)];
	leaq	0(,%rax,8), %rdx	#, _46
	movq	-24(%rbp), %rax	# u, tmp232
	addq	%rdx, %rax	# _46, _47
# laplacev4.cpp:140: 			tmp = u[(subscript +j)];
	movsd	(%rax), %xmm0	# *_47, tmp233
	movsd	%xmm0, -16(%rbp)	# tmp233, tmp
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-64(%rbp), %edx	# subscript_m, tmp234
	movl	-84(%rbp), %eax	# j, tmp235
	addl	%edx, %eax	# tmp234, _48
	cltq
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _50
	movq	-24(%rbp), %rax	# u, tmp236
	addq	%rdx, %rax	# _50, _51
	movsd	(%rax), %xmm1	# *_51, _52
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-60(%rbp), %edx	# subscript_p, tmp237
	movl	-84(%rbp), %eax	# j, tmp238
	addl	%edx, %eax	# tmp237, _53
	cltq
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _55
	movq	-24(%rbp), %rax	# u, tmp239
	addq	%rdx, %rax	# _55, _56
	movsd	(%rax), %xmm0	# *_56, _57
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _57, _58
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-84(%rbp), %eax	# j, tmp240
	leal	-1(%rax), %edx	#, _59
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-68(%rbp), %eax	# subscript, tmp241
	addl	%edx, %eax	# _59, _60
	cltq
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _62
	movq	-24(%rbp), %rax	# u, tmp242
	addq	%rdx, %rax	# _62, _63
	movsd	(%rax), %xmm2	# *_63, _64
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-84(%rbp), %eax	# j, tmp243
	leal	1(%rax), %edx	#, _65
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-68(%rbp), %eax	# subscript, tmp244
	addl	%edx, %eax	# _65, _66
	cltq
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _68
	movq	-24(%rbp), %rax	# u, tmp245
	addq	%rdx, %rax	# _68, _69
	movsd	(%rax), %xmm0	# *_69, _70
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	addsd	%xmm2, %xmm0	# _64, _71
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _71, _72
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-68(%rbp), %edx	# subscript, tmp246
	movl	-84(%rbp), %eax	# j, tmp247
	addl	%edx, %eax	# tmp246, _73
	cltq
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _75
	movq	-24(%rbp), %rax	# u, tmp248
	addq	%rdx, %rax	# _75, _76
# laplacev4.cpp:142: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movsd	.LC6(%rip), %xmm0	#, tmp249
	mulsd	%xmm1, %xmm0	# _72, _77
# laplacev4.cpp:141: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movsd	%xmm0, (%rax)	# _77, *_76
# laplacev4.cpp:143: 			err += SQR(u[(subscript +j)] - tmp);
	movl	-68(%rbp), %edx	# subscript, tmp250
	movl	-84(%rbp), %eax	# j, tmp251
	addl	%edx, %eax	# tmp250, _78
	cltq
# laplacev4.cpp:143: 			err += SQR(u[(subscript +j)] - tmp);
	leaq	0(,%rax,8), %rdx	#, _80
	movq	-24(%rbp), %rax	# u, tmp252
	addq	%rdx, %rax	# _80, _81
	movsd	(%rax), %xmm0	# *_81, _82
# laplacev4.cpp:143: 			err += SQR(u[(subscript +j)] - tmp);
	subsd	-16(%rbp), %xmm0	# tmp, _83
	movsd	%xmm0, -56(%rbp)	# _83, D.52314
# laplacev4.cpp:143: 			err += SQR(u[(subscript +j)] - tmp);
	leaq	-56(%rbp), %rax	#, tmp253
	movq	%rax, %rdi	# tmp253,
	call	_Z3SQRRKd	#
# laplacev4.cpp:143: 			err += SQR(u[(subscript +j)] - tmp);
	movsd	-48(%rbp), %xmm1	# err, tmp255
	addsd	%xmm1, %xmm0	# tmp255, tmp254
	movsd	%xmm0, -48(%rbp)	# tmp254, err
# laplacev4.cpp:139: 		for (int j=1; j<ny-1; ++j) {
	addl	$1, -84(%rbp)	#, j
.L36:
# laplacev4.cpp:139: 		for (int j=1; j<ny-1; ++j) {
	movl	-72(%rbp), %eax	# ny, tmp256
	subl	$1, %eax	#, _84
# laplacev4.cpp:139: 		for (int j=1; j<ny-1; ++j) {
	cmpl	%eax, -84(%rbp)	# _84, j
	jl	.L37	#,
# laplacev4.cpp:135: 	for (int i=1; i<nx-1; ++i) {
	addl	$1, -88(%rbp)	#, i
.L35:
# laplacev4.cpp:135: 	for (int i=1; i<nx-1; ++i) {
	movl	-76(%rbp), %eax	# nx, tmp257
	subl	$1, %eax	#, _85
# laplacev4.cpp:135: 	for (int i=1; i<nx-1; ++i) {
	cmpl	%eax, -88(%rbp)	# _85, i
	jl	.L38	#,
# laplacev4.cpp:146: 	return sqrt(err);
	movq	-48(%rbp), %rax	# err, tmp258
	movq	%rax, %xmm0	# tmp258,
	call	sqrt@PLT	#
	movq	%xmm0, %rax	#, _111
# laplacev4.cpp:147: }
	movq	-8(%rbp), %rdx	# D.59843, tmp261
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp261
	je	.L40	#,
	call	__stack_chk_fail@PLT	#
.L40:
	movq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2340:
	.size	_ZN13LaplaceSolver8timeStepEdi, .-_ZN13LaplaceSolver8timeStepEdi
	.align 2
	.globl	_ZN13LaplaceSolver5solveEid
	.type	_ZN13LaplaceSolver5solveEid, @function
_ZN13LaplaceSolver5solveEid:
.LFB2341:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movl	%esi, -44(%rbp)	# n_iter, n_iter
	movsd	%xmm0, -56(%rbp)	# eps, eps
# laplacev4.cpp:151: 	int count = 1;
	movl	$1, -20(%rbp)	#, count
# laplacev4.cpp:152: 	int step_size = 5;
	movl	$5, -16(%rbp)	#, step_size
# laplacev4.cpp:153: 	int max_iter = n_iter/step_size;
	movl	-44(%rbp), %eax	# n_iter, tmp87
	cltd
	idivl	-16(%rbp)	# step_size
	movl	%eax, -12(%rbp)	# tmp85, max_iter
# laplacev4.cpp:154: 	Real err = timeStep(0.0,step_size);
	movl	-16(%rbp), %edx	# step_size, tmp88
	movq	-40(%rbp), %rax	# this, tmp89
	movl	%edx, %esi	# tmp88,
	movq	.LC5(%rip), %rdx	#, tmp90
	movq	%rdx, %xmm0	# tmp90,
	movq	%rax, %rdi	# tmp89,
	call	_ZN13LaplaceSolver8timeStepEdi	#
	movq	%xmm0, %rax	#, tmp91
	movq	%rax, -8(%rbp)	# tmp91, err
# laplacev4.cpp:155: 	while (err > eps) {
	jmp	.L42	#
.L45:
# laplacev4.cpp:156: 		if (n_iter && (count >= max_iter)) {
	cmpl	$0, -44(%rbp)	#, n_iter
	je	.L43	#,
# laplacev4.cpp:156: 		if (n_iter && (count >= max_iter)) {
	movl	-20(%rbp), %eax	# count, tmp92
	cmpl	-12(%rbp), %eax	# max_iter, tmp92
	jl	.L43	#,
# laplacev4.cpp:157: 			return err;
	movsd	-8(%rbp), %xmm0	# err, _3
	jmp	.L44	#
.L43:
# laplacev4.cpp:159: 		err = timeStep(0.0,step_size);
	movl	-16(%rbp), %edx	# step_size, tmp93
	movq	-40(%rbp), %rax	# this, tmp94
	movl	%edx, %esi	# tmp93,
	movq	.LC5(%rip), %rdx	#, tmp95
	movq	%rdx, %xmm0	# tmp95,
	movq	%rax, %rdi	# tmp94,
	call	_ZN13LaplaceSolver8timeStepEdi	#
	movq	%xmm0, %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, err
# laplacev4.cpp:160: 		++count;
	addl	$1, -20(%rbp)	#, count
.L42:
# laplacev4.cpp:155: 	while (err > eps) {
	movsd	-8(%rbp), %xmm0	# err, tmp97
	comisd	-56(%rbp), %xmm0	# eps, tmp97
	ja	.L45	#,
# laplacev4.cpp:162: 	return Real(count);
	pxor	%xmm0, %xmm0	# _3
	cvtsi2sdl	-20(%rbp), %xmm0	# count, _3
.L44:
# laplacev4.cpp:163: }
	movq	%xmm0, %rax	# _3, <retval>
	movq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2341:
	.size	_ZN13LaplaceSolver5solveEid, .-_ZN13LaplaceSolver5solveEid
	.section	.rodata
.LC7:
	.string	"Enter nx n_iter eps --> "
.LC8:
	.string	"nx = "
.LC9:
	.string	", ny = "
.LC10:
	.string	", n_iter = "
.LC11:
	.string	", eps = "
.LC12:
	.string	"Iterations took "
.LC13:
	.string	"seconds.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2342:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2342
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)	# argc, argc
	movq	%rsi, -96(%rbp)	# argv, argv
# laplacev4.cpp:166: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	movq	%rax, -24(%rbp)	# tmp145, D.59847
	xorl	%eax, %eax	# tmp145
# laplacev4.cpp:170: 	std::cout << "Enter nx n_iter eps --> ";
	leaq	.LC7(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	_ZSt4cout(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:171: 	std::cin >> nx >> n_iter >> eps;
	leaq	-72(%rbp), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	_ZSt3cin(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _1
# laplacev4.cpp:171: 	std::cin >> nx >> n_iter >> eps;
	leaq	-68(%rbp), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	movq	%rdx, %rdi	# _1,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _2
# laplacev4.cpp:171: 	std::cin >> nx >> n_iter >> eps;
	leaq	-64(%rbp), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	movq	%rdx, %rdi	# _2,
	call	_ZNSirsERd@PLT	#
# laplacev4.cpp:172: 	Grid *g = new Grid(nx, nx);
	movl	$32, %edi	#,
	call	_Znwm@PLT	#
.LEHE0:
	movq	%rax, %rbx	# tmp116, _34
	movl	-72(%rbp), %edx	# nx, nx.5_3
	movl	-72(%rbp), %eax	# nx, nx.6_4
	movl	%eax, %esi	# nx.6_4,
	movq	%rbx, %rdi	# _34,
.LEHB1:
	call	_ZN4GridC1Eii	#
.LEHE1:
# laplacev4.cpp:172: 	Grid *g = new Grid(nx, nx);
	movq	%rbx, -48(%rbp)	# _34, g
# laplacev4.cpp:173: 	g->setBCFunc(BC);
	movq	-48(%rbp), %rax	# g, tmp117
	leaq	_Z2BCdd(%rip), %rdx	#, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
.LEHB2:
	call	_ZN4Grid9setBCFuncEPFdddE	#
.LEHE2:
# laplacev4.cpp:174: 	LaplaceSolver s = LaplaceSolver(g);
	movq	-48(%rbp), %rdx	# g, tmp119
	leaq	-56(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	_ZN13LaplaceSolverC1EP4Grid	#
# laplacev4.cpp:175: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	leaq	.LC8(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	_ZSt4cout(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# laplacev4.cpp:175: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	-48(%rbp), %rax	# g, tmp123
	movl	16(%rax), %eax	# g_37->nx, _6
	movl	%eax, %esi	# _6,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEi@PLT	#
# laplacev4.cpp:175: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _7
	leaq	.LC9(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _7,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:175: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _8
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	-48(%rbp), %rax	# g, tmp125
	movl	20(%rax), %eax	# g_37->ny, _9
	movl	%eax, %esi	# _9,
	movq	%rdx, %rdi	# _8,
	call	_ZNSolsEi@PLT	#
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _10
	leaq	.LC10(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movq	%rdx, %rdi	# _10,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _11
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movl	-68(%rbp), %eax	# n_iter, n_iter.7_12
	movl	%eax, %esi	# n_iter.7_12,
	movq	%rdx, %rdi	# _11,
	call	_ZNSolsEi@PLT	#
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _13
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	movq	%rdx, %rdi	# _13,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _14
# laplacev4.cpp:177: 		<<std::endl;
	movq	-64(%rbp), %rax	# eps, eps.8_15
# laplacev4.cpp:176: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %xmm0	# eps.8_15,
	movq	%rdx, %rdi	# _14,
	call	_ZNSolsEd@PLT	#
# laplacev4.cpp:177: 		<<std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# _16,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev4.cpp:178: 	t_start = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp130
	movq	%rax, -40(%rbp)	# tmp130, t_start
# laplacev4.cpp:179: 	std::cout << s.solve(n_iter, eps) << std::endl;
	movq	-64(%rbp), %rcx	# eps, eps.9_17
	movl	-68(%rbp), %edx	# n_iter, n_iter.10_18
	leaq	-56(%rbp), %rax	#, tmp131
	movq	%rcx, %xmm0	# eps.9_17,
	movl	%edx, %esi	# n_iter.10_18,
	movq	%rax, %rdi	# tmp131,
	call	_ZN13LaplaceSolver5solveEid	#
	movq	%xmm0, %rax	#, _19
	movq	%rax, %xmm0	# _19,
	leaq	_ZSt4cout(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	_ZNSolsEd@PLT	#
# laplacev4.cpp:179: 	std::cout << s.solve(n_iter, eps) << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# _20,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev4.cpp:180: 	t_end = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, t_end
# laplacev4.cpp:181: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC12(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	_ZSt4cout(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _21
# laplacev4.cpp:181: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movsd	-32(%rbp), %xmm0	# t_end, tmp138
	subsd	-40(%rbp), %xmm0	# t_start, tmp138
	movq	%xmm0, %rax	# tmp138, _22
	movq	%rax, %xmm0	# _22,
	movq	%rdx, %rdi	# _21,
	call	_ZNSolsEd@PLT	#
# laplacev4.cpp:181: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movq	%rax, %rdx	#, _23
# laplacev4.cpp:181: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC13(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	movq	%rdx, %rdi	# _23,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
.LEHE3:
# laplacev4.cpp:182: 	return 0;
	movl	$0, %ebx	#, _70
# laplacev4.cpp:183: }
	leaq	-56(%rbp), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	_ZN13LaplaceSolverD1Ev	#
	movl	%ebx, %eax	# _70, <retval>
	movq	-24(%rbp), %rdx	# D.59847, tmp146
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	je	.L50	#,
	jmp	.L53	#
.L51:
# laplacev4.cpp:172: 	Grid *g = new Grid(nx, nx);
	movq	%rax, %r12	#, tmp142
	movl	$32, %esi	#,
	movq	%rbx, %rdi	# _34,
	call	_ZdlPvm@PLT	#
	movq	%r12, %rax	# tmp142, D.59845
	movq	%rax, %rdi	# D.59845,
.LEHB4:
	call	_Unwind_Resume@PLT	#
.L52:
# laplacev4.cpp:183: }
	movq	%rax, %rbx	#, tmp144
	leaq	-56(%rbp), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	_ZN13LaplaceSolverD1Ev	#
	movq	%rbx, %rax	# tmp144, D.59846
	movq	%rax, %rdi	# D.59846,
	call	_Unwind_Resume@PLT	#
.LEHE4:
.L53:
	call	__stack_chk_fail@PLT	#
.L50:
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2342:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2342:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2342-.LLSDACSB2342
.LLSDACSB2342:
	.uleb128 .LEHB0-.LFB2342
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2342
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L51-.LFB2342
	.uleb128 0
	.uleb128 .LEHB2-.LFB2342
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2342
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L52-.LFB2342
	.uleb128 0
	.uleb128 .LEHB4-.LFB2342
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2342:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2997:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# laplacev4.cpp:183: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L56	#,
# laplacev4.cpp:183: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L56	#,
# /usr/include/c++/11.1.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rax	#, tmp83
	movq	%rax, %rdx	# tmp83,
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp85,
	call	__cxa_atexit@PLT	#
.L56:
# laplacev4.cpp:183: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2997:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z11print_arrayPdRSo, @function
_GLOBAL__sub_I__Z11print_arrayPdRSo:
.LFB2998:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# laplacev4.cpp:183: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2998:
	.size	_GLOBAL__sub_I__Z11print_arrayPdRSo, .-_GLOBAL__sub_I__Z11print_arrayPdRSo
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11print_arrayPdRSo
	.section	.rodata
	.align 8
.LC3:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	0
	.align 8
.LC6:
	.long	0
	.long	1070596096
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
