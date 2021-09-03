	.file	"laplacev5.cpp"
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
# laplacev5.cpp:12:   o << "{";
	movq	-32(%rbp), %rax	# o, tmp86
	leaq	.LC0(%rip), %rdx	#, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp86,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	movq	$125000, -8(%rbp)	#, i
# laplacev5.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	jmp	.L2	#
.L3:
# laplacev5.cpp:15:     o << a[i] << ", ";
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
# laplacev5.cpp:15:     o << a[i] << ", ";
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	movq	%rdx, %rdi	# _4,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	addq	$1, -8(%rbp)	#, i
.L2:
# laplacev5.cpp:13:   for (std::size_t i = 500*250; i < (500)*251; ++i)
	cmpq	$125499, -8(%rbp)	#, i
	jbe	.L3	#,
# laplacev5.cpp:17:   o  << "}\n";
	movq	-32(%rbp), %rax	# o, tmp92
	leaq	.LC2(%rip), %rdx	#, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp92,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:18: }
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
# laplacev5.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	call	clock@PLT	#
# laplacev5.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	pxor	%xmm1, %xmm1	# _2
	cvtsi2sdq	%rax, %xmm1	# _1, _2
# laplacev5.cpp:25: 	return ( (double) clock() ) * secs_per_tick;
	movsd	.LC3(%rip), %xmm0	#, tmp86
	mulsd	%xmm1, %xmm0	# _2, _5
	movq	%xmm0, %rax	# _5, <retval>
# laplacev5.cpp:26: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2323:
	.size	_Z7secondsv, .-_Z7secondsv
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
# laplacev5.cpp:35: 	return (x*x - y*y);
	movsd	-8(%rbp), %xmm0	# x, tmp86
	movapd	%xmm0, %xmm1	# tmp86, tmp86
	mulsd	%xmm0, %xmm1	# tmp86, tmp86
# laplacev5.cpp:35: 	return (x*x - y*y);
	movsd	-16(%rbp), %xmm0	# y, tmp87
	mulsd	%xmm0, %xmm0	# tmp87, _2
# laplacev5.cpp:35: 	return (x*x - y*y);
	subsd	%xmm0, %xmm1	# _2, _5
	movq	%xmm1, %rax	# _5, <retval>
# laplacev5.cpp:36: }
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
# laplacev5.cpp:48: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-24(%rbp), %rax	# this, tmp105
	movl	-28(%rbp), %edx	# n_x, tmp106
	movl	%edx, 16(%rax)	# tmp106, this_27(D)->nx
# laplacev5.cpp:48: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-24(%rbp), %rax	# this, tmp107
	movl	-32(%rbp), %edx	# n_y, tmp108
	movl	%edx, 20(%rax)	# tmp108, this_27(D)->ny
# laplacev5.cpp:50: 	dx = 1.0/Real(nx - 1);
	movq	-24(%rbp), %rax	# this, tmp109
	movl	16(%rax), %eax	# this_27(D)->nx, _1
# laplacev5.cpp:50: 	dx = 1.0/Real(nx - 1);
	subl	$1, %eax	#, _2
# laplacev5.cpp:50: 	dx = 1.0/Real(nx - 1);
	pxor	%xmm1, %xmm1	# _3
	cvtsi2sdl	%eax, %xmm1	# _2, _3
# laplacev5.cpp:50: 	dx = 1.0/Real(nx - 1);
	movsd	.LC4(%rip), %xmm0	#, tmp110
	divsd	%xmm1, %xmm0	# _3, _4
# laplacev5.cpp:50: 	dx = 1.0/Real(nx - 1);
	movq	-24(%rbp), %rax	# this, tmp111
	movsd	%xmm0, (%rax)	# _4, this_27(D)->dx
# laplacev5.cpp:51: 	dy = 1.0/Real(ny - 1);
	movq	-24(%rbp), %rax	# this, tmp112
	movl	20(%rax), %eax	# this_27(D)->ny, _5
# laplacev5.cpp:51: 	dy = 1.0/Real(ny - 1);
	subl	$1, %eax	#, _6
# laplacev5.cpp:51: 	dy = 1.0/Real(ny - 1);
	pxor	%xmm1, %xmm1	# _7
	cvtsi2sdl	%eax, %xmm1	# _6, _7
# laplacev5.cpp:51: 	dy = 1.0/Real(ny - 1);
	movsd	.LC4(%rip), %xmm0	#, tmp113
	divsd	%xmm1, %xmm0	# _7, _8
# laplacev5.cpp:51: 	dy = 1.0/Real(ny - 1);
	movq	-24(%rbp), %rax	# this, tmp114
	movsd	%xmm0, 8(%rax)	# _8, this_27(D)->dy
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp115
	movl	16(%rax), %edx	# this_27(D)->nx, _9
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp116
	movl	20(%rax), %eax	# this_27(D)->ny, _10
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	imull	%edx, %eax	# _9, _11
	cltq
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	movabsq	$1152921504606846975, %rdx	#, tmp117
	cmpq	%rdx, %rax	# tmp117, _35
	ja	.L9	#,
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	salq	$3, %rax	#, iftmp.0_37
	movq	%rax, %rdi	# iftmp.0_37,
	call	_Znam@PLT	#
	movq	%rax, %rdx	# tmp118, _12
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	movq	-24(%rbp), %rax	# this, tmp119
	movq	%rdx, 24(%rax)	# _12, this_27(D)->u
# laplacev5.cpp:53: 	for (int i=0; i<nx; ++i) {
	movl	$0, -8(%rbp)	#, i
# laplacev5.cpp:53: 	for (int i=0; i<nx; ++i) {
	jmp	.L11	#
.L9:
# laplacev5.cpp:52: 	u = new Real [nx*ny];
	call	__cxa_throw_bad_array_new_length@PLT	#
.L14:
# laplacev5.cpp:54: 		for (int j=0; j<ny; ++j) {
	movl	$0, -4(%rbp)	#, j
# laplacev5.cpp:54: 		for (int j=0; j<ny; ++j) {
	jmp	.L12	#
.L13:
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movq	-24(%rbp), %rax	# this, tmp120
	movq	24(%rax), %rdx	# this_27(D)->u, _13
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movq	-24(%rbp), %rax	# this, tmp121
	movl	16(%rax), %eax	# this_27(D)->nx, _14
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	imull	-8(%rbp), %eax	# i, _14
	movl	%eax, %ecx	# _14, _15
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	movl	-4(%rbp), %eax	# j, tmp122
	addl	%ecx, %eax	# _15, _16
	cltq
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	salq	$3, %rax	#, _18
	addq	%rdx, %rax	# _13, _19
# laplacev5.cpp:55: 			u[( i*( nx) + j )] = 0.0;
	pxor	%xmm0, %xmm0	# tmp123
	movsd	%xmm0, (%rax)	# tmp123, *_19
# laplacev5.cpp:54: 		for (int j=0; j<ny; ++j) {
	addl	$1, -4(%rbp)	#, j
.L12:
# laplacev5.cpp:54: 		for (int j=0; j<ny; ++j) {
	movq	-24(%rbp), %rax	# this, tmp124
	movl	20(%rax), %eax	# this_27(D)->ny, _20
# laplacev5.cpp:54: 		for (int j=0; j<ny; ++j) {
	cmpl	%eax, -4(%rbp)	# _20, j
	jl	.L13	#,
# laplacev5.cpp:53: 	for (int i=0; i<nx; ++i) {
	addl	$1, -8(%rbp)	#, i
.L11:
# laplacev5.cpp:53: 	for (int i=0; i<nx; ++i) {
	movq	-24(%rbp), %rax	# this, tmp125
	movl	16(%rax), %eax	# this_27(D)->nx, _21
# laplacev5.cpp:53: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -8(%rbp)	# _21, i
	jl	.L14	#,
# laplacev5.cpp:58: }
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
# laplacev5.cpp:66: 	delete [] u;
	movq	-8(%rbp), %rax	# this, tmp84
	movq	24(%rax), %rax	# this_5(D)->u, _1
# laplacev5.cpp:66: 	delete [] u;
	testq	%rax, %rax	# _1
	je	.L17	#,
# laplacev5.cpp:66: 	delete [] u;
	movq	-8(%rbp), %rax	# this, tmp85
	movq	24(%rax), %rax	# this_5(D)->u, _2
	movq	%rax, %rdi	# _2,
	call	_ZdaPv@PLT	#
.L17:
# laplacev5.cpp:67: }
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
# laplacev5.cpp:72: 	xmin = 0.0;
	pxor	%xmm0, %xmm0	# tmp124
	movsd	%xmm0, -64(%rbp)	# tmp124, xmin
# laplacev5.cpp:73: 	ymin = 0.0;
	pxor	%xmm0, %xmm0	# tmp125
	movsd	%xmm0, -56(%rbp)	# tmp125, ymin
# laplacev5.cpp:74: 	xmax = 1.0;
	movsd	.LC4(%rip), %xmm0	#, tmp126
	movsd	%xmm0, -48(%rbp)	# tmp126, xmax
# laplacev5.cpp:75: 	ymax = 1.0;
	movsd	.LC4(%rip), %xmm0	#, tmp127
	movsd	%xmm0, -40(%rbp)	# tmp127, ymax
# laplacev5.cpp:77: 	for (int j=0; j<ny; ++j) {
	movl	$0, -72(%rbp)	#, j
# laplacev5.cpp:77: 	for (int j=0; j<ny; ++j) {
	jmp	.L19	#
.L20:
# laplacev5.cpp:78: 		y = j*dy;
	pxor	%xmm1, %xmm1	# _1
	cvtsi2sdl	-72(%rbp), %xmm1	# j, _1
# laplacev5.cpp:78: 		y = j*dy;
	movq	-88(%rbp), %rax	# this, tmp128
	movsd	8(%rax), %xmm0	# this_53(D)->dy, _2
# laplacev5.cpp:78: 		y = j*dy;
	mulsd	%xmm1, %xmm0	# _1, tmp129
	movsd	%xmm0, -24(%rbp)	# tmp129, y
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	movq	-96(%rbp), %rdx	# f, f.1_3
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	movq	-88(%rbp), %rax	# this, tmp130
	movq	24(%rax), %rcx	# this_53(D)->u, _4
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	movl	-72(%rbp), %eax	# j, tmp131
	cltq
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	salq	$3, %rax	#, _6
	leaq	(%rcx,%rax), %rbx	#, _7
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	movsd	-24(%rbp), %xmm0	# y, tmp132
	movq	-64(%rbp), %rax	# xmin, tmp133
	movapd	%xmm0, %xmm1	# tmp132,
	movq	%rax, %xmm0	# tmp133,
	call	*%rdx	# f.1_3
	movq	%xmm0, %rax	#, _8
# laplacev5.cpp:79: 		u[j] = f(xmin, y);
	movq	%rax, (%rbx)	# _8, *_7
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-96(%rbp), %rdx	# f, f.2_9
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp134
	movq	24(%rax), %rsi	# this_53(D)->u, _10
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp135
	movl	16(%rax), %eax	# this_53(D)->nx, _11
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	leal	-1(%rax), %ecx	#, _12
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp136
	movl	16(%rax), %eax	# this_53(D)->nx, _13
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	imull	%eax, %ecx	# _13, _14
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movl	-72(%rbp), %eax	# j, tmp137
	addl	%ecx, %eax	# _14, _15
	cltq
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	salq	$3, %rax	#, _17
	leaq	(%rsi,%rax), %rbx	#, _18
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movsd	-24(%rbp), %xmm0	# y, tmp138
	movq	-48(%rbp), %rax	# xmax, tmp139
	movapd	%xmm0, %xmm1	# tmp138,
	movq	%rax, %xmm0	# tmp139,
	call	*%rdx	# f.2_9
	movq	%xmm0, %rax	#, _19
# laplacev5.cpp:80: 		u[(nx-1)*nx + j] = f(xmax, y);
	movq	%rax, (%rbx)	# _19, *_18
# laplacev5.cpp:77: 	for (int j=0; j<ny; ++j) {
	addl	$1, -72(%rbp)	#, j
.L19:
# laplacev5.cpp:77: 	for (int j=0; j<ny; ++j) {
	movq	-88(%rbp), %rax	# this, tmp140
	movl	20(%rax), %eax	# this_53(D)->ny, _20
# laplacev5.cpp:77: 	for (int j=0; j<ny; ++j) {
	cmpl	%eax, -72(%rbp)	# _20, j
	jl	.L20	#,
# laplacev5.cpp:83: 	for (int i=0; i<nx; ++i) {
	movl	$0, -68(%rbp)	#, i
# laplacev5.cpp:83: 	for (int i=0; i<nx; ++i) {
	jmp	.L21	#
.L22:
# laplacev5.cpp:84: 		x = i*dx;
	pxor	%xmm1, %xmm1	# _21
	cvtsi2sdl	-68(%rbp), %xmm1	# i, _21
# laplacev5.cpp:84: 		x = i*dx;
	movq	-88(%rbp), %rax	# this, tmp141
	movsd	(%rax), %xmm0	# this_53(D)->dx, _22
# laplacev5.cpp:84: 		x = i*dx;
	mulsd	%xmm1, %xmm0	# _21, tmp142
	movsd	%xmm0, -32(%rbp)	# tmp142, x
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-96(%rbp), %rdx	# f, f.3_23
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-88(%rbp), %rax	# this, tmp143
	movq	24(%rax), %rcx	# this_53(D)->u, _24
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	-88(%rbp), %rax	# this, tmp144
	movl	16(%rax), %eax	# this_53(D)->nx, _25
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	imull	-68(%rbp), %eax	# i, _26
	cltq
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	salq	$3, %rax	#, _28
	leaq	(%rcx,%rax), %rbx	#, _29
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	movsd	-56(%rbp), %xmm0	# ymin, tmp145
	movq	-32(%rbp), %rax	# x, tmp146
	movapd	%xmm0, %xmm1	# tmp145,
	movq	%rax, %xmm0	# tmp146,
	call	*%rdx	# f.3_23
	movq	%xmm0, %rax	#, _30
# laplacev5.cpp:85: 		u[i*nx ] = f(x, ymin);
	movq	%rax, (%rbx)	# _30, *_29
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-96(%rbp), %rdx	# f, f.4_31
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp147
	movq	24(%rax), %rcx	# this_53(D)->u, _32
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp148
	movl	16(%rax), %eax	# this_53(D)->nx, _33
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	imull	-68(%rbp), %eax	# i, _33
	movl	%eax, %esi	# _33, _34
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp149
	movl	20(%rax), %eax	# this_53(D)->ny, _35
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	addl	%esi, %eax	# _34, _36
	cltq
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	salq	$3, %rax	#, _38
	subq	$8, %rax	#, _39
	leaq	(%rcx,%rax), %rbx	#, _40
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movsd	-40(%rbp), %xmm0	# ymax, tmp150
	movq	-32(%rbp), %rax	# x, tmp151
	movapd	%xmm0, %xmm1	# tmp150,
	movq	%rax, %xmm0	# tmp151,
	call	*%rdx	# f.4_31
	movq	%xmm0, %rax	#, _41
# laplacev5.cpp:86: 		u[i*nx + ny-1] = f(x, ymax);
	movq	%rax, (%rbx)	# _41, *_40
# laplacev5.cpp:83: 	for (int i=0; i<nx; ++i) {
	addl	$1, -68(%rbp)	#, i
.L21:
# laplacev5.cpp:83: 	for (int i=0; i<nx; ++i) {
	movq	-88(%rbp), %rax	# this, tmp152
	movl	16(%rax), %eax	# this_53(D)->nx, _42
# laplacev5.cpp:83: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -68(%rbp)	# _42, i
	jl	.L22	#,
# laplacev5.cpp:88: }
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
# laplacev5.cpp:101: 	g = grid;
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# grid, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->g
# laplacev5.cpp:102: 	initialize();
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZN13LaplaceSolver10initializeEv	#
# laplacev5.cpp:103: }
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
# laplacev5.cpp:107: }
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
# laplacev5.cpp:111: }
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
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# this, this
	movsd	%xmm0, -112(%rbp)	# dt, dt
	movl	%esi, -116(%rbp)	# step_size_i, step_size_i
# laplacev5.cpp:115: 	int step_size = step_size_i-1;
	movl	-116(%rbp), %eax	# step_size_i, tmp172
	subl	$1, %eax	#, tmp171
	movl	%eax, -72(%rbp)	# tmp171, step_size
# laplacev5.cpp:116: 	Real dx2 = g->dx*g->dx;
	movq	-104(%rbp), %rax	# this, tmp173
	movq	(%rax), %rax	# this_101(D)->g, _1
# laplacev5.cpp:116: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm1	# _1->dx, _2
# laplacev5.cpp:116: 	Real dx2 = g->dx*g->dx;
	movq	-104(%rbp), %rax	# this, tmp174
	movq	(%rax), %rax	# this_101(D)->g, _3
# laplacev5.cpp:116: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm0	# _3->dx, _4
# laplacev5.cpp:116: 	Real dx2 = g->dx*g->dx;
	mulsd	%xmm1, %xmm0	# _2, tmp175
	movsd	%xmm0, -40(%rbp)	# tmp175, dx2
# laplacev5.cpp:117: 	Real dy2 = g->dy*g->dy;
	movq	-104(%rbp), %rax	# this, tmp176
	movq	(%rax), %rax	# this_101(D)->g, _5
# laplacev5.cpp:117: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm1	# _5->dy, _6
# laplacev5.cpp:117: 	Real dy2 = g->dy*g->dy;
	movq	-104(%rbp), %rax	# this, tmp177
	movq	(%rax), %rax	# this_101(D)->g, _7
# laplacev5.cpp:117: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm0	# _7->dy, _8
# laplacev5.cpp:117: 	Real dy2 = g->dy*g->dy;
	mulsd	%xmm1, %xmm0	# _6, tmp178
	movsd	%xmm0, -32(%rbp)	# tmp178, dy2
# laplacev5.cpp:120: 	Real err = 0.0;
	pxor	%xmm0, %xmm0	# tmp179
	movsd	%xmm0, -48(%rbp)	# tmp179, err
# laplacev5.cpp:121: 	int nx = g->nx;
	movq	-104(%rbp), %rax	# this, tmp180
	movq	(%rax), %rax	# this_101(D)->g, _9
# laplacev5.cpp:121: 	int nx = g->nx;
	movl	16(%rax), %eax	# _9->nx, tmp181
	movl	%eax, -68(%rbp)	# tmp181, nx
# laplacev5.cpp:122: 	int ny = g->ny;
	movq	-104(%rbp), %rax	# this, tmp182
	movq	(%rax), %rax	# this_101(D)->g, _10
# laplacev5.cpp:122: 	int ny = g->ny;
	movl	20(%rax), %eax	# _10->ny, tmp183
	movl	%eax, -64(%rbp)	# tmp183, ny
# laplacev5.cpp:123: 	Real *u = g->u;
	movq	-104(%rbp), %rax	# this, tmp184
	movq	(%rax), %rax	# this_101(D)->g, _11
# laplacev5.cpp:123: 	Real *u = g->u;
	movq	24(%rax), %rax	# _11->u, tmp185
	movq	%rax, -24(%rbp)	# tmp185, u
# laplacev5.cpp:125: 	for (int s=0;s<step_size;s++){
	movl	$0, -92(%rbp)	#, s
# laplacev5.cpp:125: 	for (int s=0;s<step_size;s++){
	jmp	.L27	#
.L32:
# laplacev5.cpp:126: 		for (int i=1; i<nx-1; ++i) {
	movl	$1, -88(%rbp)	#, i
# laplacev5.cpp:126: 		for (int i=1; i<nx-1; ++i) {
	jmp	.L28	#
.L31:
# laplacev5.cpp:127: 			subscript = nx*i;
	movl	-68(%rbp), %eax	# nx, tmp187
	imull	-88(%rbp), %eax	# i, tmp186
	movl	%eax, -60(%rbp)	# tmp186, subscript
# laplacev5.cpp:128: 			subscript_m = subscript -nx;
	movl	-60(%rbp), %eax	# subscript, tmp191
	subl	-68(%rbp), %eax	# nx, tmp190
	movl	%eax, -56(%rbp)	# tmp190, subscript_m
# laplacev5.cpp:129: 			subscript_p = subscript + nx;
	movl	-60(%rbp), %edx	# subscript, tmp196
	movl	-68(%rbp), %eax	# nx, tmp197
	addl	%edx, %eax	# tmp196, tmp195
	movl	%eax, -52(%rbp)	# tmp195, subscript_p
# laplacev5.cpp:130: 			for (int j=1; j<ny-1; ++j) {
	movl	$1, -84(%rbp)	#, j
# laplacev5.cpp:130: 			for (int j=1; j<ny-1; ++j) {
	jmp	.L29	#
.L30:
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-56(%rbp), %edx	# subscript_m, tmp198
	movl	-84(%rbp), %eax	# j, tmp199
	addl	%edx, %eax	# tmp198, _12
	cltq
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _14
	movq	-24(%rbp), %rax	# u, tmp200
	addq	%rdx, %rax	# _14, _15
	movsd	(%rax), %xmm1	# *_15, _16
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-52(%rbp), %edx	# subscript_p, tmp201
	movl	-84(%rbp), %eax	# j, tmp202
	addl	%edx, %eax	# tmp201, _17
	cltq
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _19
	movq	-24(%rbp), %rax	# u, tmp203
	addq	%rdx, %rax	# _19, _20
	movsd	(%rax), %xmm0	# *_20, _21
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _21, _22
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-84(%rbp), %eax	# j, tmp204
	leal	-1(%rax), %edx	#, _23
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-60(%rbp), %eax	# subscript, tmp205
	addl	%edx, %eax	# _23, _24
	cltq
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _26
	movq	-24(%rbp), %rax	# u, tmp206
	addq	%rdx, %rax	# _26, _27
	movsd	(%rax), %xmm2	# *_27, _28
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-84(%rbp), %eax	# j, tmp207
	leal	1(%rax), %edx	#, _29
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-60(%rbp), %eax	# subscript, tmp208
	addl	%edx, %eax	# _29, _30
	cltq
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _32
	movq	-24(%rbp), %rax	# u, tmp209
	addq	%rdx, %rax	# _32, _33
	movsd	(%rax), %xmm0	# *_33, _34
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	addsd	%xmm2, %xmm0	# _28, _35
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _35, _36
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-60(%rbp), %edx	# subscript, tmp210
	movl	-84(%rbp), %eax	# j, tmp211
	addl	%edx, %eax	# tmp210, _37
	cltq
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _39
	movq	-24(%rbp), %rax	# u, tmp212
	addq	%rdx, %rax	# _39, _40
# laplacev5.cpp:132: 						(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movsd	.LC6(%rip), %xmm0	#, tmp213
	mulsd	%xmm1, %xmm0	# _36, _41
# laplacev5.cpp:131: 				u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movsd	%xmm0, (%rax)	# _41, *_40
# laplacev5.cpp:130: 			for (int j=1; j<ny-1; ++j) {
	addl	$1, -84(%rbp)	#, j
.L29:
# laplacev5.cpp:130: 			for (int j=1; j<ny-1; ++j) {
	movl	-64(%rbp), %eax	# ny, tmp214
	subl	$1, %eax	#, _42
# laplacev5.cpp:130: 			for (int j=1; j<ny-1; ++j) {
	cmpl	%eax, -84(%rbp)	# _42, j
	jl	.L30	#,
# laplacev5.cpp:126: 		for (int i=1; i<nx-1; ++i) {
	addl	$1, -88(%rbp)	#, i
.L28:
# laplacev5.cpp:126: 		for (int i=1; i<nx-1; ++i) {
	movl	-68(%rbp), %eax	# nx, tmp215
	subl	$1, %eax	#, _43
# laplacev5.cpp:126: 		for (int i=1; i<nx-1; ++i) {
	cmpl	%eax, -88(%rbp)	# _43, i
	jl	.L31	#,
# laplacev5.cpp:125: 	for (int s=0;s<step_size;s++){
	addl	$1, -92(%rbp)	#, s
.L27:
# laplacev5.cpp:125: 	for (int s=0;s<step_size;s++){
	movl	-92(%rbp), %eax	# s, tmp216
	cmpl	-72(%rbp), %eax	# step_size, tmp216
	jl	.L32	#,
# laplacev5.cpp:136: 	for (int i=1; i<nx-1; ++i) {
	movl	$1, -80(%rbp)	#, i
# laplacev5.cpp:136: 	for (int i=1; i<nx-1; ++i) {
	jmp	.L33	#
.L36:
# laplacev5.cpp:137: 		subscript = nx*i;
	movl	-68(%rbp), %eax	# nx, tmp218
	imull	-80(%rbp), %eax	# i, tmp217
	movl	%eax, -60(%rbp)	# tmp217, subscript
# laplacev5.cpp:138: 		subscript_m = subscript -nx;
	movl	-60(%rbp), %eax	# subscript, tmp222
	subl	-68(%rbp), %eax	# nx, tmp221
	movl	%eax, -56(%rbp)	# tmp221, subscript_m
# laplacev5.cpp:139: 		subscript_p = subscript + nx;
	movl	-60(%rbp), %edx	# subscript, tmp227
	movl	-68(%rbp), %eax	# nx, tmp228
	addl	%edx, %eax	# tmp227, tmp226
	movl	%eax, -52(%rbp)	# tmp226, subscript_p
# laplacev5.cpp:140: 		for (int j=1; j<ny-1; ++j) {
	movl	$1, -76(%rbp)	#, j
# laplacev5.cpp:140: 		for (int j=1; j<ny-1; ++j) {
	jmp	.L34	#
.L35:
# laplacev5.cpp:141: 			tmp = u[(subscript +j)];
	movl	-60(%rbp), %edx	# subscript, tmp229
	movl	-76(%rbp), %eax	# j, tmp230
	addl	%edx, %eax	# tmp229, _44
	cltq
# laplacev5.cpp:141: 			tmp = u[(subscript +j)];
	leaq	0(,%rax,8), %rdx	#, _46
	movq	-24(%rbp), %rax	# u, tmp231
	addq	%rdx, %rax	# _46, _47
# laplacev5.cpp:141: 			tmp = u[(subscript +j)];
	movsd	(%rax), %xmm0	# *_47, tmp232
	movsd	%xmm0, -16(%rbp)	# tmp232, tmp
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-56(%rbp), %edx	# subscript_m, tmp233
	movl	-76(%rbp), %eax	# j, tmp234
	addl	%edx, %eax	# tmp233, _48
	cltq
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _50
	movq	-24(%rbp), %rax	# u, tmp235
	addq	%rdx, %rax	# _50, _51
	movsd	(%rax), %xmm1	# *_51, _52
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-52(%rbp), %edx	# subscript_p, tmp236
	movl	-76(%rbp), %eax	# j, tmp237
	addl	%edx, %eax	# tmp236, _53
	cltq
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _55
	movq	-24(%rbp), %rax	# u, tmp238
	addq	%rdx, %rax	# _55, _56
	movsd	(%rax), %xmm0	# *_56, _57
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _57, _58
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-76(%rbp), %eax	# j, tmp239
	leal	-1(%rax), %edx	#, _59
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-60(%rbp), %eax	# subscript, tmp240
	addl	%edx, %eax	# _59, _60
	cltq
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _62
	movq	-24(%rbp), %rax	# u, tmp241
	addq	%rdx, %rax	# _62, _63
	movsd	(%rax), %xmm2	# *_63, _64
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-76(%rbp), %eax	# j, tmp242
	leal	1(%rax), %edx	#, _65
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movl	-60(%rbp), %eax	# subscript, tmp243
	addl	%edx, %eax	# _65, _66
	cltq
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	leaq	0(,%rax,8), %rdx	#, _68
	movq	-24(%rbp), %rax	# u, tmp244
	addq	%rdx, %rax	# _68, _69
	movsd	(%rax), %xmm0	# *_69, _70
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	addsd	%xmm2, %xmm0	# _64, _71
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	addsd	%xmm0, %xmm1	# _71, _72
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movl	-60(%rbp), %edx	# subscript, tmp245
	movl	-76(%rbp), %eax	# j, tmp246
	addl	%edx, %eax	# tmp245, _73
	cltq
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	leaq	0(,%rax,8), %rdx	#, _75
	movq	-24(%rbp), %rax	# u, tmp247
	addq	%rdx, %rax	# _75, _76
# laplacev5.cpp:143: 					(u[subscript + (j-1)] + u[ subscript + (j+1)] ))*0.25;
	movsd	.LC6(%rip), %xmm0	#, tmp248
	mulsd	%xmm1, %xmm0	# _72, _77
# laplacev5.cpp:142: 			u[(subscript +j)] = ((u[subscript_m + j] + u[subscript_p +j] ) +
	movsd	%xmm0, (%rax)	# _77, *_76
# laplacev5.cpp:144: 			errtemp = (u[(subscript +j)] - tmp);
	movl	-60(%rbp), %edx	# subscript, tmp249
	movl	-76(%rbp), %eax	# j, tmp250
	addl	%edx, %eax	# tmp249, _78
	cltq
# laplacev5.cpp:144: 			errtemp = (u[(subscript +j)] - tmp);
	leaq	0(,%rax,8), %rdx	#, _80
	movq	-24(%rbp), %rax	# u, tmp251
	addq	%rdx, %rax	# _80, _81
	movsd	(%rax), %xmm0	# *_81, _82
# laplacev5.cpp:144: 			errtemp = (u[(subscript +j)] - tmp);
	subsd	-16(%rbp), %xmm0	# tmp, tmp252
	movsd	%xmm0, -8(%rbp)	# tmp252, errtemp
# laplacev5.cpp:145: 			err += errtemp*errtemp;
	movsd	-8(%rbp), %xmm0	# errtemp, tmp253
	mulsd	%xmm0, %xmm0	# tmp253, _83
# laplacev5.cpp:145: 			err += errtemp*errtemp;
	movsd	-48(%rbp), %xmm1	# err, tmp255
	addsd	%xmm1, %xmm0	# tmp255, tmp254
	movsd	%xmm0, -48(%rbp)	# tmp254, err
# laplacev5.cpp:140: 		for (int j=1; j<ny-1; ++j) {
	addl	$1, -76(%rbp)	#, j
.L34:
# laplacev5.cpp:140: 		for (int j=1; j<ny-1; ++j) {
	movl	-64(%rbp), %eax	# ny, tmp256
	subl	$1, %eax	#, _84
# laplacev5.cpp:140: 		for (int j=1; j<ny-1; ++j) {
	cmpl	%eax, -76(%rbp)	# _84, j
	jl	.L35	#,
# laplacev5.cpp:136: 	for (int i=1; i<nx-1; ++i) {
	addl	$1, -80(%rbp)	#, i
.L33:
# laplacev5.cpp:136: 	for (int i=1; i<nx-1; ++i) {
	movl	-68(%rbp), %eax	# nx, tmp257
	subl	$1, %eax	#, _85
# laplacev5.cpp:136: 	for (int i=1; i<nx-1; ++i) {
	cmpl	%eax, -80(%rbp)	# _85, i
	jl	.L36	#,
# laplacev5.cpp:148: 	return sqrt(err);
	movq	-48(%rbp), %rax	# err, tmp258
	movq	%rax, %xmm0	# tmp258,
	call	sqrt@PLT	#
	movq	%xmm0, %rax	#, _111
# laplacev5.cpp:149: }
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
# laplacev5.cpp:153: 	int count = 1;
	movl	$1, -20(%rbp)	#, count
# laplacev5.cpp:154: 	int step_size = 5;
	movl	$5, -16(%rbp)	#, step_size
# laplacev5.cpp:155: 	int max_iter = n_iter/step_size;
	movl	-44(%rbp), %eax	# n_iter, tmp87
	cltd
	idivl	-16(%rbp)	# step_size
	movl	%eax, -12(%rbp)	# tmp85, max_iter
# laplacev5.cpp:156: 	Real err = timeStep(0.0,step_size);
	movl	-16(%rbp), %edx	# step_size, tmp88
	movq	-40(%rbp), %rax	# this, tmp89
	movl	%edx, %esi	# tmp88,
	movq	.LC5(%rip), %rdx	#, tmp90
	movq	%rdx, %xmm0	# tmp90,
	movq	%rax, %rdi	# tmp89,
	call	_ZN13LaplaceSolver8timeStepEdi	#
	movq	%xmm0, %rax	#, tmp91
	movq	%rax, -8(%rbp)	# tmp91, err
# laplacev5.cpp:157: 	while (err > eps) {
	jmp	.L39	#
.L42:
# laplacev5.cpp:158: 		if (n_iter && (count >= max_iter)) {
	cmpl	$0, -44(%rbp)	#, n_iter
	je	.L40	#,
# laplacev5.cpp:158: 		if (n_iter && (count >= max_iter)) {
	movl	-20(%rbp), %eax	# count, tmp92
	cmpl	-12(%rbp), %eax	# max_iter, tmp92
	jl	.L40	#,
# laplacev5.cpp:159: 			return err;
	movsd	-8(%rbp), %xmm0	# err, _3
	jmp	.L41	#
.L40:
# laplacev5.cpp:161: 		err = timeStep(0.0,step_size);
	movl	-16(%rbp), %edx	# step_size, tmp93
	movq	-40(%rbp), %rax	# this, tmp94
	movl	%edx, %esi	# tmp93,
	movq	.LC5(%rip), %rdx	#, tmp95
	movq	%rdx, %xmm0	# tmp95,
	movq	%rax, %rdi	# tmp94,
	call	_ZN13LaplaceSolver8timeStepEdi	#
	movq	%xmm0, %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, err
# laplacev5.cpp:162: 		++count;
	addl	$1, -20(%rbp)	#, count
.L39:
# laplacev5.cpp:157: 	while (err > eps) {
	movsd	-8(%rbp), %xmm0	# err, tmp97
	comisd	-56(%rbp), %xmm0	# eps, tmp97
	ja	.L42	#,
# laplacev5.cpp:164: 	return Real(count);
	pxor	%xmm0, %xmm0	# _3
	cvtsi2sdl	-20(%rbp), %xmm0	# count, _3
.L41:
# laplacev5.cpp:165: }
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
# laplacev5.cpp:168: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	movq	%rax, -24(%rbp)	# tmp145, D.59841
	xorl	%eax, %eax	# tmp145
# laplacev5.cpp:172: 	std::cout << "Enter nx n_iter eps --> ";
	leaq	.LC7(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	_ZSt4cout(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:173: 	std::cin >> nx >> n_iter >> eps;
	leaq	-72(%rbp), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	_ZSt3cin(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _1
# laplacev5.cpp:173: 	std::cin >> nx >> n_iter >> eps;
	leaq	-68(%rbp), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	movq	%rdx, %rdi	# _1,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _2
# laplacev5.cpp:173: 	std::cin >> nx >> n_iter >> eps;
	leaq	-64(%rbp), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	movq	%rdx, %rdi	# _2,
	call	_ZNSirsERd@PLT	#
# laplacev5.cpp:174: 	Grid *g = new Grid(nx, nx);
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
# laplacev5.cpp:174: 	Grid *g = new Grid(nx, nx);
	movq	%rbx, -48(%rbp)	# _34, g
# laplacev5.cpp:175: 	g->setBCFunc(BC);
	movq	-48(%rbp), %rax	# g, tmp117
	leaq	_Z2BCdd(%rip), %rdx	#, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
.LEHB2:
	call	_ZN4Grid9setBCFuncEPFdddE	#
.LEHE2:
# laplacev5.cpp:176: 	LaplaceSolver s = LaplaceSolver(g);
	movq	-48(%rbp), %rdx	# g, tmp119
	leaq	-56(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	_ZN13LaplaceSolverC1EP4Grid	#
# laplacev5.cpp:177: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	leaq	.LC8(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	_ZSt4cout(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# laplacev5.cpp:177: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	-48(%rbp), %rax	# g, tmp123
	movl	16(%rax), %eax	# g_37->nx, _6
	movl	%eax, %esi	# _6,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEi@PLT	#
# laplacev5.cpp:177: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _7
	leaq	.LC9(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _7,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:177: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _8
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	-48(%rbp), %rax	# g, tmp125
	movl	20(%rax), %eax	# g_37->ny, _9
	movl	%eax, %esi	# _9,
	movq	%rdx, %rdi	# _8,
	call	_ZNSolsEi@PLT	#
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _10
	leaq	.LC10(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movq	%rdx, %rdi	# _10,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _11
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movl	-68(%rbp), %eax	# n_iter, n_iter.7_12
	movl	%eax, %esi	# n_iter.7_12,
	movq	%rdx, %rdi	# _11,
	call	_ZNSolsEi@PLT	#
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _13
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	movq	%rdx, %rdi	# _13,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _14
# laplacev5.cpp:179: 		<<std::endl;
	movq	-64(%rbp), %rax	# eps, eps.8_15
# laplacev5.cpp:178: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %xmm0	# eps.8_15,
	movq	%rdx, %rdi	# _14,
	call	_ZNSolsEd@PLT	#
# laplacev5.cpp:179: 		<<std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# _16,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev5.cpp:180: 	t_start = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp130
	movq	%rax, -40(%rbp)	# tmp130, t_start
# laplacev5.cpp:181: 	std::cout << s.solve(n_iter, eps) << std::endl;
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
# laplacev5.cpp:181: 	std::cout << s.solve(n_iter, eps) << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# _20,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev5.cpp:182: 	t_end = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, t_end
# laplacev5.cpp:183: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC12(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	_ZSt4cout(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _21
# laplacev5.cpp:183: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movsd	-32(%rbp), %xmm0	# t_end, tmp138
	subsd	-40(%rbp), %xmm0	# t_start, tmp138
	movq	%xmm0, %rax	# tmp138, _22
	movq	%rax, %xmm0	# _22,
	movq	%rdx, %rdi	# _21,
	call	_ZNSolsEd@PLT	#
# laplacev5.cpp:183: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movq	%rax, %rdx	#, _23
# laplacev5.cpp:183: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC13(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	movq	%rdx, %rdi	# _23,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
.LEHE3:
# laplacev5.cpp:184: 	return 0;
	movl	$0, %ebx	#, _70
# laplacev5.cpp:185: }
	leaq	-56(%rbp), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	_ZN13LaplaceSolverD1Ev	#
	movl	%ebx, %eax	# _70, <retval>
	movq	-24(%rbp), %rdx	# D.59841, tmp146
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	je	.L47	#,
	jmp	.L50	#
.L48:
# laplacev5.cpp:174: 	Grid *g = new Grid(nx, nx);
	movq	%rax, %r12	#, tmp142
	movl	$32, %esi	#,
	movq	%rbx, %rdi	# _34,
	call	_ZdlPvm@PLT	#
	movq	%r12, %rax	# tmp142, D.59839
	movq	%rax, %rdi	# D.59839,
.LEHB4:
	call	_Unwind_Resume@PLT	#
.L49:
# laplacev5.cpp:185: }
	movq	%rax, %rbx	#, tmp144
	leaq	-56(%rbp), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	_ZN13LaplaceSolverD1Ev	#
	movq	%rbx, %rax	# tmp144, D.59840
	movq	%rax, %rdi	# D.59840,
	call	_Unwind_Resume@PLT	#
.LEHE4:
.L50:
	call	__stack_chk_fail@PLT	#
.L47:
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
	.uleb128 .L48-.LFB2342
	.uleb128 0
	.uleb128 .LEHB2-.LFB2342
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2342
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L49-.LFB2342
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
# laplacev5.cpp:185: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L53	#,
# laplacev5.cpp:185: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L53	#,
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
.L53:
# laplacev5.cpp:185: }
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
# laplacev5.cpp:185: }
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
