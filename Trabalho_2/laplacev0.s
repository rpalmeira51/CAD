	.file	"laplacev0.cpp"
# GNU C++17 (GCC) version 11.1.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.1.0-p13.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._Z7secondsv,"axG",@progbits,_Z7secondsv,comdat
	.weak	_Z7secondsv
	.type	_Z7secondsv, @function
_Z7secondsv:
.LFB2322:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# laplacev0.cpp:13: 	return ( (double) clock() ) * secs_per_tick;
	call	clock@PLT	#
# laplacev0.cpp:13: 	return ( (double) clock() ) * secs_per_tick;
	pxor	%xmm1, %xmm1	# _2
	cvtsi2sdq	%rax, %xmm1	# _1, _2
# laplacev0.cpp:13: 	return ( (double) clock() ) * secs_per_tick;
	movsd	.LC0(%rip), %xmm0	#, tmp86
	mulsd	%xmm1, %xmm0	# _2, _5
	movq	%xmm0, %rax	# _5, <retval>
# laplacev0.cpp:14: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2322:
	.size	_Z7secondsv, .-_Z7secondsv
	.section	.text._Z3SQRRKd,"axG",@progbits,_Z3SQRRKd,comdat
	.weak	_Z3SQRRKd
	.type	_Z3SQRRKd, @function
_Z3SQRRKd:
.LFB2323:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
# laplacev0.cpp:18: 	return (x*x);
	movq	-8(%rbp), %rax	# x, tmp86
	movsd	(%rax), %xmm1	# *x_4(D), _1
# laplacev0.cpp:18: 	return (x*x);
	movq	-8(%rbp), %rax	# x, tmp87
	movsd	(%rax), %xmm0	# *x_4(D), _2
# laplacev0.cpp:18: 	return (x*x);
	mulsd	%xmm1, %xmm0	# _1, _5
	movq	%xmm0, %rax	# _5, <retval>
# laplacev0.cpp:19: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2323:
	.size	_Z3SQRRKd, .-_Z3SQRRKd
	.section	.text._Z2BCdd,"axG",@progbits,_Z2BCdd,comdat
	.weak	_Z2BCdd
	.type	_Z2BCdd, @function
_Z2BCdd:
.LFB2324:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# x, x
	movsd	%xmm1, -16(%rbp)	# y, y
# laplacev0.cpp:23: 	return (x*x - y*y);
	movsd	-8(%rbp), %xmm0	# x, tmp86
	movapd	%xmm0, %xmm1	# tmp86, tmp86
	mulsd	%xmm0, %xmm1	# tmp86, tmp86
# laplacev0.cpp:23: 	return (x*x - y*y);
	movsd	-16(%rbp), %xmm0	# y, tmp87
	mulsd	%xmm0, %xmm0	# tmp87, _2
# laplacev0.cpp:23: 	return (x*x - y*y);
	subsd	%xmm0, %xmm1	# _2, _5
	movq	%xmm1, %rax	# _5, <retval>
# laplacev0.cpp:24: }
	movq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2324:
	.size	_Z2BCdd, .-_Z2BCdd
	.text
	.align 2
	.globl	_ZN4GridC2Eii
	.type	_ZN4GridC2Eii, @function
_ZN4GridC2Eii:
.LFB2326:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# this, this
	movl	%esi, -44(%rbp)	# n_x, n_x
	movl	%edx, -48(%rbp)	# n_y, n_y
# laplacev0.cpp:36: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-40(%rbp), %rax	# this, tmp113
	movl	-44(%rbp), %edx	# n_x, tmp114
	movl	%edx, 16(%rax)	# tmp114, this_35(D)->nx
# laplacev0.cpp:36: Grid :: Grid(const int n_x, const int n_y) : nx(n_x), ny(n_y)
	movq	-40(%rbp), %rax	# this, tmp115
	movl	-48(%rbp), %edx	# n_y, tmp116
	movl	%edx, 20(%rax)	# tmp116, this_35(D)->ny
# laplacev0.cpp:38: 	dx = 1.0/Real(nx - 1);
	movq	-40(%rbp), %rax	# this, tmp117
	movl	16(%rax), %eax	# this_35(D)->nx, _1
# laplacev0.cpp:38: 	dx = 1.0/Real(nx - 1);
	subl	$1, %eax	#, _2
# laplacev0.cpp:38: 	dx = 1.0/Real(nx - 1);
	pxor	%xmm1, %xmm1	# _3
	cvtsi2sdl	%eax, %xmm1	# _2, _3
# laplacev0.cpp:38: 	dx = 1.0/Real(nx - 1);
	movsd	.LC1(%rip), %xmm0	#, tmp118
	divsd	%xmm1, %xmm0	# _3, _4
# laplacev0.cpp:38: 	dx = 1.0/Real(nx - 1);
	movq	-40(%rbp), %rax	# this, tmp119
	movsd	%xmm0, (%rax)	# _4, this_35(D)->dx
# laplacev0.cpp:39: 	dy = 1.0/Real(ny - 1);
	movq	-40(%rbp), %rax	# this, tmp120
	movl	20(%rax), %eax	# this_35(D)->ny, _5
# laplacev0.cpp:39: 	dy = 1.0/Real(ny - 1);
	subl	$1, %eax	#, _6
# laplacev0.cpp:39: 	dy = 1.0/Real(ny - 1);
	pxor	%xmm1, %xmm1	# _7
	cvtsi2sdl	%eax, %xmm1	# _6, _7
# laplacev0.cpp:39: 	dy = 1.0/Real(ny - 1);
	movsd	.LC1(%rip), %xmm0	#, tmp121
	divsd	%xmm1, %xmm0	# _7, _8
# laplacev0.cpp:39: 	dy = 1.0/Real(ny - 1);
	movq	-40(%rbp), %rax	# this, tmp122
	movsd	%xmm0, 8(%rax)	# _8, this_35(D)->dy
# laplacev0.cpp:40: 	u = new Real* [nx];
	movq	-40(%rbp), %rax	# this, tmp123
	movl	16(%rax), %eax	# this_35(D)->nx, _9
	cltq
# laplacev0.cpp:40: 	u = new Real* [nx];
	movabsq	$1152921504606846975, %rdx	#, tmp124
	cmpq	%rdx, %rax	# tmp124, _43
	ja	.L8	#,
# laplacev0.cpp:40: 	u = new Real* [nx];
	salq	$3, %rax	#, iftmp.0_45
	movq	%rax, %rdi	# iftmp.0_45,
	call	_Znam@PLT	#
	movq	%rax, %rdx	# tmp125, _10
# laplacev0.cpp:40: 	u = new Real* [nx];
	movq	-40(%rbp), %rax	# this, tmp126
	movq	%rdx, 24(%rax)	# _10, this_35(D)->u
# laplacev0.cpp:41: 	for (int i=0; i<nx; ++i) {
	movl	$0, -28(%rbp)	#, i
# laplacev0.cpp:41: 	for (int i=0; i<nx; ++i) {
	jmp	.L10	#
.L8:
# laplacev0.cpp:40: 	u = new Real* [nx];
	call	__cxa_throw_bad_array_new_length@PLT	#
.L13:
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movq	-40(%rbp), %rax	# this, tmp127
	movl	20(%rax), %eax	# this_35(D)->ny, _11
	cltq
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movabsq	$1152921504606846975, %rdx	#, tmp128
	cmpq	%rdx, %rax	# tmp128, _55
	ja	.L11	#,
# laplacev0.cpp:42: 		u[i] = new double [ny];
	salq	$3, %rax	#, iftmp.1_57
	jmp	.L18	#
.L11:
# laplacev0.cpp:42: 		u[i] = new double [ny];
	call	__cxa_throw_bad_array_new_length@PLT	#
.L18:
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movq	-40(%rbp), %rdx	# this, tmp129
	movq	24(%rdx), %rcx	# this_35(D)->u, _12
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movl	-28(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, _13
# laplacev0.cpp:42: 		u[i] = new double [ny];
	salq	$3, %rdx	#, _14
	leaq	(%rcx,%rdx), %rbx	#, _15
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movq	%rax, %rdi	# iftmp.1_57,
	call	_Znam@PLT	#
# laplacev0.cpp:42: 		u[i] = new double [ny];
	movq	%rax, (%rbx)	# _16, *_15
# laplacev0.cpp:41: 	for (int i=0; i<nx; ++i) {
	addl	$1, -28(%rbp)	#, i
.L10:
# laplacev0.cpp:41: 	for (int i=0; i<nx; ++i) {
	movq	-40(%rbp), %rax	# this, tmp132
	movl	16(%rax), %eax	# this_35(D)->nx, _17
# laplacev0.cpp:41: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -28(%rbp)	# _17, i
	jl	.L13	#,
# laplacev0.cpp:44: 	for (int i=0; i<nx; ++i) {
	movl	$0, -24(%rbp)	#, i
# laplacev0.cpp:44: 	for (int i=0; i<nx; ++i) {
	jmp	.L14	#
.L17:
# laplacev0.cpp:45: 		for (int j=0; j<ny; ++j) {
	movl	$0, -20(%rbp)	#, j
# laplacev0.cpp:45: 		for (int j=0; j<ny; ++j) {
	jmp	.L15	#
.L16:
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	movq	-40(%rbp), %rax	# this, tmp133
	movq	24(%rax), %rdx	# this_35(D)->u, _18
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	movl	-24(%rbp), %eax	# i, tmp134
	cltq
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	salq	$3, %rax	#, _20
	addq	%rdx, %rax	# _18, _21
	movq	(%rax), %rdx	# *_21, _22
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	movl	-20(%rbp), %eax	# j, tmp135
	cltq
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	salq	$3, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
# laplacev0.cpp:46: 			u[i][j] = 0.0;
	pxor	%xmm0, %xmm0	# tmp136
	movsd	%xmm0, (%rax)	# tmp136, *_25
# laplacev0.cpp:45: 		for (int j=0; j<ny; ++j) {
	addl	$1, -20(%rbp)	#, j
.L15:
# laplacev0.cpp:45: 		for (int j=0; j<ny; ++j) {
	movq	-40(%rbp), %rax	# this, tmp137
	movl	20(%rax), %eax	# this_35(D)->ny, _26
# laplacev0.cpp:45: 		for (int j=0; j<ny; ++j) {
	cmpl	%eax, -20(%rbp)	# _26, j
	jl	.L16	#,
# laplacev0.cpp:44: 	for (int i=0; i<nx; ++i) {
	addl	$1, -24(%rbp)	#, i
.L14:
# laplacev0.cpp:44: 	for (int i=0; i<nx; ++i) {
	movq	-40(%rbp), %rax	# this, tmp138
	movl	16(%rax), %eax	# this_35(D)->nx, _27
# laplacev0.cpp:44: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -24(%rbp)	# _27, i
	jl	.L17	#,
# laplacev0.cpp:49: }
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2326:
	.size	_ZN4GridC2Eii, .-_ZN4GridC2Eii
	.globl	_ZN4GridC1Eii
	.set	_ZN4GridC1Eii,_ZN4GridC2Eii
	.align 2
	.globl	_ZN4GridD2Ev
	.type	_ZN4GridD2Ev, @function
_ZN4GridD2Ev:
.LFB2329:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# laplacev0.cpp:54: 	for (int i=0; i<nx; ++i) {
	movl	$0, -4(%rbp)	#, i
# laplacev0.cpp:54: 	for (int i=0; i<nx; ++i) {
	jmp	.L20	#
.L22:
# laplacev0.cpp:55: 		delete [] u[i];
	movq	-24(%rbp), %rax	# this, tmp95
	movq	24(%rax), %rdx	# this_20(D)->u, _1
# laplacev0.cpp:55: 		delete [] u[i];
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
# laplacev0.cpp:55: 		delete [] u[i];
	salq	$3, %rax	#, _3
	addq	%rdx, %rax	# _1, _4
	movq	(%rax), %rax	# *_4, _5
# laplacev0.cpp:55: 		delete [] u[i];
	testq	%rax, %rax	# _5
	je	.L21	#,
# laplacev0.cpp:55: 		delete [] u[i];
	movq	-24(%rbp), %rax	# this, tmp97
	movq	24(%rax), %rdx	# this_20(D)->u, _6
# laplacev0.cpp:55: 		delete [] u[i];
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
# laplacev0.cpp:55: 		delete [] u[i];
	salq	$3, %rax	#, _8
	addq	%rdx, %rax	# _6, _9
	movq	(%rax), %rax	# *_9, _10
	movq	%rax, %rdi	# _10,
	call	_ZdaPv@PLT	#
.L21:
# laplacev0.cpp:54: 	for (int i=0; i<nx; ++i) {
	addl	$1, -4(%rbp)	#, i
.L20:
# laplacev0.cpp:54: 	for (int i=0; i<nx; ++i) {
	movq	-24(%rbp), %rax	# this, tmp99
	movl	16(%rax), %eax	# this_20(D)->nx, _11
# laplacev0.cpp:54: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -4(%rbp)	# _11, i
	jl	.L22	#,
# laplacev0.cpp:57: 	delete [] u;
	movq	-24(%rbp), %rax	# this, tmp100
	movq	24(%rax), %rax	# this_20(D)->u, _12
# laplacev0.cpp:57: 	delete [] u;
	testq	%rax, %rax	# _12
	je	.L24	#,
# laplacev0.cpp:57: 	delete [] u;
	movq	-24(%rbp), %rax	# this, tmp101
	movq	24(%rax), %rax	# this_20(D)->u, _13
	movq	%rax, %rdi	# _13,
	call	_ZdaPv@PLT	#
.L24:
# laplacev0.cpp:58: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2329:
	.size	_ZN4GridD2Ev, .-_ZN4GridD2Ev
	.globl	_ZN4GridD1Ev
	.set	_ZN4GridD1Ev,_ZN4GridD2Ev
	.align 2
	.globl	_ZN4Grid9setBCFuncEPFdddE
	.type	_ZN4Grid9setBCFuncEPFdddE, @function
_ZN4Grid9setBCFuncEPFdddE:
.LFB2331:
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
# laplacev0.cpp:63: 	xmin = 0.0;
	pxor	%xmm0, %xmm0	# tmp126
	movsd	%xmm0, -64(%rbp)	# tmp126, xmin
# laplacev0.cpp:64: 	ymin = 0.0;
	pxor	%xmm0, %xmm0	# tmp127
	movsd	%xmm0, -56(%rbp)	# tmp127, ymin
# laplacev0.cpp:65: 	xmax = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp128
	movsd	%xmm0, -48(%rbp)	# tmp128, xmax
# laplacev0.cpp:66: 	ymax = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp129
	movsd	%xmm0, -40(%rbp)	# tmp129, ymax
# laplacev0.cpp:68: 	for (int j=0; j<ny; ++j) {
	movl	$0, -72(%rbp)	#, j
# laplacev0.cpp:68: 	for (int j=0; j<ny; ++j) {
	jmp	.L26	#
.L27:
# laplacev0.cpp:69: 		y = j*dy;
	pxor	%xmm1, %xmm1	# _1
	cvtsi2sdl	-72(%rbp), %xmm1	# j, _1
# laplacev0.cpp:69: 		y = j*dy;
	movq	-88(%rbp), %rax	# this, tmp130
	movsd	8(%rax), %xmm0	# this_55(D)->dy, _2
# laplacev0.cpp:69: 		y = j*dy;
	mulsd	%xmm1, %xmm0	# _1, tmp131
	movsd	%xmm0, -24(%rbp)	# tmp131, y
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movq	-96(%rbp), %rdx	# f, f.2_3
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movq	-88(%rbp), %rax	# this, tmp132
	movq	24(%rax), %rax	# this_55(D)->u, _4
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movq	(%rax), %rcx	# *_4, _5
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movl	-72(%rbp), %eax	# j, tmp133
	cltq
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	salq	$3, %rax	#, _7
	leaq	(%rcx,%rax), %rbx	#, _8
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movsd	-24(%rbp), %xmm0	# y, tmp134
	movq	-64(%rbp), %rax	# xmin, tmp135
	movapd	%xmm0, %xmm1	# tmp134,
	movq	%rax, %xmm0	# tmp135,
	call	*%rdx	# f.2_3
	movq	%xmm0, %rax	#, _9
# laplacev0.cpp:70: 		u[0][j] = f(xmin, y);
	movq	%rax, (%rbx)	# _9, *_8
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movq	-96(%rbp), %rdx	# f, f.3_10
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp136
	movq	24(%rax), %rcx	# this_55(D)->u, _11
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movq	-88(%rbp), %rax	# this, tmp137
	movl	16(%rax), %eax	# this_55(D)->nx, _12
	cltq
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	salq	$3, %rax	#, _14
	subq	$8, %rax	#, _15
	addq	%rcx, %rax	# _11, _16
	movq	(%rax), %rcx	# *_16, _17
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movl	-72(%rbp), %eax	# j, tmp138
	cltq
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	salq	$3, %rax	#, _19
	leaq	(%rcx,%rax), %rbx	#, _20
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movsd	-24(%rbp), %xmm0	# y, tmp139
	movq	-48(%rbp), %rax	# xmax, tmp140
	movapd	%xmm0, %xmm1	# tmp139,
	movq	%rax, %xmm0	# tmp140,
	call	*%rdx	# f.3_10
	movq	%xmm0, %rax	#, _21
# laplacev0.cpp:71: 		u[nx-1][j] = f(xmax, y);
	movq	%rax, (%rbx)	# _21, *_20
# laplacev0.cpp:68: 	for (int j=0; j<ny; ++j) {
	addl	$1, -72(%rbp)	#, j
.L26:
# laplacev0.cpp:68: 	for (int j=0; j<ny; ++j) {
	movq	-88(%rbp), %rax	# this, tmp141
	movl	20(%rax), %eax	# this_55(D)->ny, _22
# laplacev0.cpp:68: 	for (int j=0; j<ny; ++j) {
	cmpl	%eax, -72(%rbp)	# _22, j
	jl	.L27	#,
# laplacev0.cpp:74: 	for (int i=0; i<nx; ++i) {
	movl	$0, -68(%rbp)	#, i
# laplacev0.cpp:74: 	for (int i=0; i<nx; ++i) {
	jmp	.L28	#
.L29:
# laplacev0.cpp:75: 		x = i*dx;
	pxor	%xmm1, %xmm1	# _23
	cvtsi2sdl	-68(%rbp), %xmm1	# i, _23
# laplacev0.cpp:75: 		x = i*dx;
	movq	-88(%rbp), %rax	# this, tmp142
	movsd	(%rax), %xmm0	# this_55(D)->dx, _24
# laplacev0.cpp:75: 		x = i*dx;
	mulsd	%xmm1, %xmm0	# _23, tmp143
	movsd	%xmm0, -32(%rbp)	# tmp143, x
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movq	-96(%rbp), %rdx	# f, f.4_25
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movq	-88(%rbp), %rax	# this, tmp144
	movq	24(%rax), %rcx	# this_55(D)->u, _26
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movl	-68(%rbp), %eax	# i, tmp145
	cltq
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	salq	$3, %rax	#, _28
	addq	%rcx, %rax	# _26, _29
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movq	(%rax), %rbx	# *_29, _30
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movsd	-56(%rbp), %xmm0	# ymin, tmp146
	movq	-32(%rbp), %rax	# x, tmp147
	movapd	%xmm0, %xmm1	# tmp146,
	movq	%rax, %xmm0	# tmp147,
	call	*%rdx	# f.4_25
	movq	%xmm0, %rax	#, _31
# laplacev0.cpp:76: 		u[i][0] = f(x, ymin);
	movq	%rax, (%rbx)	# _31, *_30
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movq	-96(%rbp), %rdx	# f, f.5_32
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp148
	movq	24(%rax), %rcx	# this_55(D)->u, _33
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movl	-68(%rbp), %eax	# i, tmp149
	cltq
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	salq	$3, %rax	#, _35
	addq	%rcx, %rax	# _33, _36
	movq	(%rax), %rcx	# *_36, _37
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movq	-88(%rbp), %rax	# this, tmp150
	movl	20(%rax), %eax	# this_55(D)->ny, _38
	cltq
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	salq	$3, %rax	#, _40
	subq	$8, %rax	#, _41
	leaq	(%rcx,%rax), %rbx	#, _42
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movsd	-40(%rbp), %xmm0	# ymax, tmp151
	movq	-32(%rbp), %rax	# x, tmp152
	movapd	%xmm0, %xmm1	# tmp151,
	movq	%rax, %xmm0	# tmp152,
	call	*%rdx	# f.5_32
	movq	%xmm0, %rax	#, _43
# laplacev0.cpp:77: 		u[i][ny-1] = f(x, ymax);
	movq	%rax, (%rbx)	# _43, *_42
# laplacev0.cpp:74: 	for (int i=0; i<nx; ++i) {
	addl	$1, -68(%rbp)	#, i
.L28:
# laplacev0.cpp:74: 	for (int i=0; i<nx; ++i) {
	movq	-88(%rbp), %rax	# this, tmp153
	movl	16(%rax), %eax	# this_55(D)->nx, _44
# laplacev0.cpp:74: 	for (int i=0; i<nx; ++i) {
	cmpl	%eax, -68(%rbp)	# _44, i
	jl	.L29	#,
# laplacev0.cpp:79: }
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2331:
	.size	_ZN4Grid9setBCFuncEPFdddE, .-_ZN4Grid9setBCFuncEPFdddE
	.align 2
	.globl	_ZN13LaplaceSolverC2EP4Grid
	.type	_ZN13LaplaceSolverC2EP4Grid, @function
_ZN13LaplaceSolverC2EP4Grid:
.LFB2333:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# grid, grid
# laplacev0.cpp:92: 	g = grid;
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# grid, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->g
# laplacev0.cpp:93: 	initialize();
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZN13LaplaceSolver10initializeEv	#
# laplacev0.cpp:94: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2333:
	.size	_ZN13LaplaceSolverC2EP4Grid, .-_ZN13LaplaceSolverC2EP4Grid
	.globl	_ZN13LaplaceSolverC1EP4Grid
	.set	_ZN13LaplaceSolverC1EP4Grid,_ZN13LaplaceSolverC2EP4Grid
	.align 2
	.globl	_ZN13LaplaceSolverD2Ev
	.type	_ZN13LaplaceSolverD2Ev, @function
_ZN13LaplaceSolverD2Ev:
.LFB2336:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# laplacev0.cpp:98: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2336:
	.size	_ZN13LaplaceSolverD2Ev, .-_ZN13LaplaceSolverD2Ev
	.globl	_ZN13LaplaceSolverD1Ev
	.set	_ZN13LaplaceSolverD1Ev,_ZN13LaplaceSolverD2Ev
	.align 2
	.globl	_ZN13LaplaceSolver10initializeEv
	.type	_ZN13LaplaceSolver10initializeEv, @function
_ZN13LaplaceSolver10initializeEv:
.LFB2338:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# laplacev0.cpp:102: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2338:
	.size	_ZN13LaplaceSolver10initializeEv, .-_ZN13LaplaceSolver10initializeEv
	.align 2
	.globl	_ZN13LaplaceSolver8timeStepEd
	.type	_ZN13LaplaceSolver8timeStepEd, @function
_ZN13LaplaceSolver8timeStepEd:
.LFB2339:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# this, this
	movsd	%xmm0, -96(%rbp)	# dt, dt
# laplacev0.cpp:105: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp209
	movq	%rax, -8(%rbp)	# tmp209, D.59809
	xorl	%eax, %eax	# tmp209
# laplacev0.cpp:107: 	Real dx2 = g->dx*g->dx;
	movq	-88(%rbp), %rax	# this, tmp165
	movq	(%rax), %rax	# this_88(D)->g, _1
# laplacev0.cpp:107: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm1	# _1->dx, _2
# laplacev0.cpp:107: 	Real dx2 = g->dx*g->dx;
	movq	-88(%rbp), %rax	# this, tmp166
	movq	(%rax), %rax	# this_88(D)->g, _3
# laplacev0.cpp:107: 	Real dx2 = g->dx*g->dx;
	movsd	(%rax), %xmm0	# _3->dx, _4
# laplacev0.cpp:107: 	Real dx2 = g->dx*g->dx;
	mulsd	%xmm1, %xmm0	# _2, tmp167
	movsd	%xmm0, -40(%rbp)	# tmp167, dx2
# laplacev0.cpp:108: 	Real dy2 = g->dy*g->dy;
	movq	-88(%rbp), %rax	# this, tmp168
	movq	(%rax), %rax	# this_88(D)->g, _5
# laplacev0.cpp:108: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm1	# _5->dy, _6
# laplacev0.cpp:108: 	Real dy2 = g->dy*g->dy;
	movq	-88(%rbp), %rax	# this, tmp169
	movq	(%rax), %rax	# this_88(D)->g, _7
# laplacev0.cpp:108: 	Real dy2 = g->dy*g->dy;
	movsd	8(%rax), %xmm0	# _7->dy, _8
# laplacev0.cpp:108: 	Real dy2 = g->dy*g->dy;
	mulsd	%xmm1, %xmm0	# _6, tmp170
	movsd	%xmm0, -32(%rbp)	# tmp170, dy2
# laplacev0.cpp:110: 	Real err = 0.0;
	pxor	%xmm0, %xmm0	# tmp171
	movsd	%xmm0, -48(%rbp)	# tmp171, err
# laplacev0.cpp:111: 	int nx = g->nx;
	movq	-88(%rbp), %rax	# this, tmp172
	movq	(%rax), %rax	# this_88(D)->g, _9
# laplacev0.cpp:111: 	int nx = g->nx;
	movl	16(%rax), %eax	# _9->nx, tmp173
	movl	%eax, -64(%rbp)	# tmp173, nx
# laplacev0.cpp:112: 	int ny = g->ny;
	movq	-88(%rbp), %rax	# this, tmp174
	movq	(%rax), %rax	# this_88(D)->g, _10
# laplacev0.cpp:112: 	int ny = g->ny;
	movl	20(%rax), %eax	# _10->ny, tmp175
	movl	%eax, -60(%rbp)	# tmp175, ny
# laplacev0.cpp:113: 	Real **u = g->u;
	movq	-88(%rbp), %rax	# this, tmp176
	movq	(%rax), %rax	# this_88(D)->g, _11
# laplacev0.cpp:113: 	Real **u = g->u;
	movq	24(%rax), %rax	# _11->u, tmp177
	movq	%rax, -24(%rbp)	# tmp177, u
# laplacev0.cpp:114: 	for (int i=1; i<nx-1; ++i) {
	movl	$1, -72(%rbp)	#, i
# laplacev0.cpp:114: 	for (int i=1; i<nx-1; ++i) {
	jmp	.L34	#
.L37:
# laplacev0.cpp:115: 		for (int j=1; j<ny-1; ++j) {
	movl	$1, -68(%rbp)	#, j
# laplacev0.cpp:115: 		for (int j=1; j<ny-1; ++j) {
	jmp	.L35	#
.L36:
# laplacev0.cpp:116: 			tmp = u[i][j];
	movl	-72(%rbp), %eax	# i, tmp178
	cltq
# laplacev0.cpp:116: 			tmp = u[i][j];
	leaq	0(,%rax,8), %rdx	#, _13
	movq	-24(%rbp), %rax	# u, tmp179
	addq	%rdx, %rax	# _13, _14
	movq	(%rax), %rdx	# *_14, _15
# laplacev0.cpp:116: 			tmp = u[i][j];
	movl	-68(%rbp), %eax	# j, tmp180
	cltq
# laplacev0.cpp:116: 			tmp = u[i][j];
	salq	$3, %rax	#, _17
	addq	%rdx, %rax	# _15, _18
# laplacev0.cpp:116: 			tmp = u[i][j];
	movsd	(%rax), %xmm0	# *_18, tmp181
	movsd	%xmm0, -16(%rbp)	# tmp181, tmp
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-72(%rbp), %eax	# i, tmp182
	cltq
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	salq	$3, %rax	#, _20
	leaq	-8(%rax), %rdx	#, _21
	movq	-24(%rbp), %rax	# u, tmp183
	addq	%rdx, %rax	# _21, _22
	movq	(%rax), %rdx	# *_22, _23
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-68(%rbp), %eax	# j, tmp184
	cltq
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	salq	$3, %rax	#, _25
	addq	%rdx, %rax	# _23, _26
	movsd	(%rax), %xmm1	# *_26, _27
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-72(%rbp), %eax	# i, tmp185
	cltq
	addq	$1, %rax	#, _29
	leaq	0(,%rax,8), %rdx	#, _30
	movq	-24(%rbp), %rax	# u, tmp186
	addq	%rdx, %rax	# _30, _31
	movq	(%rax), %rdx	# *_31, _32
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-68(%rbp), %eax	# j, tmp187
	cltq
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	salq	$3, %rax	#, _34
	addq	%rdx, %rax	# _32, _35
	movsd	(%rax), %xmm0	# *_35, _36
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	addsd	%xmm1, %xmm0	# _27, _37
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movapd	%xmm0, %xmm1	# _37, _37
	mulsd	-32(%rbp), %xmm1	# dy2, _37
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movl	-72(%rbp), %eax	# i, tmp188
	cltq
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	leaq	0(,%rax,8), %rdx	#, _40
	movq	-24(%rbp), %rax	# u, tmp189
	addq	%rdx, %rax	# _40, _41
	movq	(%rax), %rdx	# *_41, _42
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movl	-68(%rbp), %eax	# j, tmp190
	cltq
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	salq	$3, %rax	#, _44
	subq	$8, %rax	#, _45
	addq	%rdx, %rax	# _42, _46
	movsd	(%rax), %xmm2	# *_46, _47
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movl	-72(%rbp), %eax	# i, tmp191
	cltq
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-24(%rbp), %rax	# u, tmp192
	addq	%rdx, %rax	# _49, _50
	movq	(%rax), %rdx	# *_50, _51
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movl	-68(%rbp), %eax	# j, tmp193
	cltq
	addq	$1, %rax	#, _53
	salq	$3, %rax	#, _54
	addq	%rdx, %rax	# _51, _55
	movsd	(%rax), %xmm0	# *_55, _56
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	addsd	%xmm2, %xmm0	# _47, _57
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	mulsd	-40(%rbp), %xmm0	# dx2, _58
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	addsd	%xmm0, %xmm1	# _58, _59
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movsd	.LC3(%rip), %xmm0	#, tmp194
	mulsd	%xmm1, %xmm0	# _59, _60
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	movsd	-40(%rbp), %xmm1	# dx2, tmp195
	addsd	-32(%rbp), %xmm1	# dy2, _61
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-72(%rbp), %eax	# i, tmp196
	cltq
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	leaq	0(,%rax,8), %rdx	#, _63
	movq	-24(%rbp), %rax	# u, tmp197
	addq	%rdx, %rax	# _63, _64
	movq	(%rax), %rdx	# *_64, _65
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movl	-68(%rbp), %eax	# j, tmp198
	cltq
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	salq	$3, %rax	#, _67
	addq	%rdx, %rax	# _65, _68
# laplacev0.cpp:118: 					(u[i][j-1] + u[i][j+1])*dx2)*0.5/(dx2 + dy2);
	divsd	%xmm1, %xmm0	# _61, _69
# laplacev0.cpp:117: 			u[i][j] = ((u[i-1][j] + u[i+1][j])*dy2 +
	movsd	%xmm0, (%rax)	# _69, *_68
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	movl	-72(%rbp), %eax	# i, tmp199
	cltq
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	leaq	0(,%rax,8), %rdx	#, _71
	movq	-24(%rbp), %rax	# u, tmp200
	addq	%rdx, %rax	# _71, _72
	movq	(%rax), %rdx	# *_72, _73
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	movl	-68(%rbp), %eax	# j, tmp201
	cltq
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	salq	$3, %rax	#, _75
	addq	%rdx, %rax	# _73, _76
	movsd	(%rax), %xmm0	# *_76, _77
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	subsd	-16(%rbp), %xmm0	# tmp, _78
	movsd	%xmm0, -56(%rbp)	# _78, D.52226
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	leaq	-56(%rbp), %rax	#, tmp202
	movq	%rax, %rdi	# tmp202,
	call	_Z3SQRRKd	#
# laplacev0.cpp:119: 			err += SQR(u[i][j] - tmp);
	movsd	-48(%rbp), %xmm1	# err, tmp204
	addsd	%xmm1, %xmm0	# tmp204, tmp203
	movsd	%xmm0, -48(%rbp)	# tmp203, err
# laplacev0.cpp:115: 		for (int j=1; j<ny-1; ++j) {
	addl	$1, -68(%rbp)	#, j
.L35:
# laplacev0.cpp:115: 		for (int j=1; j<ny-1; ++j) {
	movl	-60(%rbp), %eax	# ny, tmp205
	subl	$1, %eax	#, _79
# laplacev0.cpp:115: 		for (int j=1; j<ny-1; ++j) {
	cmpl	%eax, -68(%rbp)	# _79, j
	jl	.L36	#,
# laplacev0.cpp:114: 	for (int i=1; i<nx-1; ++i) {
	addl	$1, -72(%rbp)	#, i
.L34:
# laplacev0.cpp:114: 	for (int i=1; i<nx-1; ++i) {
	movl	-64(%rbp), %eax	# nx, tmp206
	subl	$1, %eax	#, _80
# laplacev0.cpp:114: 	for (int i=1; i<nx-1; ++i) {
	cmpl	%eax, -72(%rbp)	# _80, i
	jl	.L37	#,
# laplacev0.cpp:122: 	return sqrt(err);
	movq	-48(%rbp), %rax	# err, tmp207
	movq	%rax, %xmm0	# tmp207,
	call	sqrt@PLT	#
	movq	%xmm0, %rax	#, _97
# laplacev0.cpp:123: }
	movq	-8(%rbp), %rdx	# D.59809, tmp210
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp210
	je	.L39	#,
	call	__stack_chk_fail@PLT	#
.L39:
	movq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2339:
	.size	_ZN13LaplaceSolver8timeStepEd, .-_ZN13LaplaceSolver8timeStepEd
	.align 2
	.globl	_ZN13LaplaceSolver5solveEid
	.type	_ZN13LaplaceSolver5solveEid, @function
_ZN13LaplaceSolver5solveEid:
.LFB2340:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movl	%esi, -28(%rbp)	# n_iter, n_iter
	movsd	%xmm0, -40(%rbp)	# eps, eps
# laplacev0.cpp:127: 	Real err = timeStep();
	movq	-24(%rbp), %rax	# this, tmp84
	movq	.LC2(%rip), %rdx	#, tmp85
	movq	%rdx, %xmm0	# tmp85,
	movq	%rax, %rdi	# tmp84,
	call	_ZN13LaplaceSolver8timeStepEd	#
	movq	%xmm0, %rax	#, tmp86
	movq	%rax, -8(%rbp)	# tmp86, err
# laplacev0.cpp:128: 	int count = 1;
	movl	$1, -12(%rbp)	#, count
# laplacev0.cpp:129: 	while (err > eps) {
	jmp	.L41	#
.L44:
# laplacev0.cpp:130: 		if (n_iter && (count >= n_iter)) {
	cmpl	$0, -28(%rbp)	#, n_iter
	je	.L42	#,
# laplacev0.cpp:130: 		if (n_iter && (count >= n_iter)) {
	movl	-12(%rbp), %eax	# count, tmp87
	cmpl	-28(%rbp), %eax	# n_iter, tmp87
	jl	.L42	#,
# laplacev0.cpp:131: 			return err;
	movsd	-8(%rbp), %xmm0	# err, _3
	jmp	.L43	#
.L42:
# laplacev0.cpp:133: 		err = timeStep();
	movq	-24(%rbp), %rax	# this, tmp88
	movq	.LC2(%rip), %rdx	#, tmp89
	movq	%rdx, %xmm0	# tmp89,
	movq	%rax, %rdi	# tmp88,
	call	_ZN13LaplaceSolver8timeStepEd	#
	movq	%xmm0, %rax	#, tmp90
	movq	%rax, -8(%rbp)	# tmp90, err
# laplacev0.cpp:134: 		++count;
	addl	$1, -12(%rbp)	#, count
.L41:
# laplacev0.cpp:129: 	while (err > eps) {
	movsd	-8(%rbp), %xmm0	# err, tmp91
	comisd	-40(%rbp), %xmm0	# eps, tmp91
	ja	.L44	#,
# laplacev0.cpp:136: 	return Real(count);
	pxor	%xmm0, %xmm0	# _3
	cvtsi2sdl	-12(%rbp), %xmm0	# count, _3
.L43:
# laplacev0.cpp:137: }
	movq	%xmm0, %rax	# _3, <retval>
	movq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2340:
	.size	_ZN13LaplaceSolver5solveEid, .-_ZN13LaplaceSolver5solveEid
	.section	.rodata
.LC4:
	.string	"Enter nx n_iter eps --> "
.LC5:
	.string	"nx = "
.LC6:
	.string	", ny = "
.LC7:
	.string	", n_iter = "
.LC8:
	.string	", eps = "
.LC9:
	.string	"Iterations took "
.LC10:
	.string	"seconds.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2341:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2341
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
# laplacev0.cpp:140: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	movq	%rax, -24(%rbp)	# tmp145, D.59813
	xorl	%eax, %eax	# tmp145
# laplacev0.cpp:144: 	std::cout << "Enter nx n_iter eps --> ";
	leaq	.LC4(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	_ZSt4cout(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev0.cpp:145: 	std::cin >> nx >> n_iter >> eps;
	leaq	-72(%rbp), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	_ZSt3cin(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _1
# laplacev0.cpp:145: 	std::cin >> nx >> n_iter >> eps;
	leaq	-68(%rbp), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	movq	%rdx, %rdi	# _1,
	call	_ZNSirsERi@PLT	#
	movq	%rax, %rdx	#, _2
# laplacev0.cpp:145: 	std::cin >> nx >> n_iter >> eps;
	leaq	-64(%rbp), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	movq	%rdx, %rdi	# _2,
	call	_ZNSirsERd@PLT	#
# laplacev0.cpp:146: 	Grid *g = new Grid(nx, nx);
	movl	$32, %edi	#,
	call	_Znwm@PLT	#
.LEHE0:
	movq	%rax, %rbx	# tmp116, _34
	movl	-72(%rbp), %edx	# nx, nx.6_3
	movl	-72(%rbp), %eax	# nx, nx.7_4
	movl	%eax, %esi	# nx.7_4,
	movq	%rbx, %rdi	# _34,
.LEHB1:
	call	_ZN4GridC1Eii	#
.LEHE1:
# laplacev0.cpp:146: 	Grid *g = new Grid(nx, nx);
	movq	%rbx, -48(%rbp)	# _34, g
# laplacev0.cpp:147: 	g->setBCFunc(BC);
	movq	-48(%rbp), %rax	# g, tmp117
	leaq	_Z2BCdd(%rip), %rdx	#, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
.LEHB2:
	call	_ZN4Grid9setBCFuncEPFdddE	#
.LEHE2:
# laplacev0.cpp:148: 	LaplaceSolver s = LaplaceSolver(g);
	movq	-48(%rbp), %rdx	# g, tmp119
	leaq	-56(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	_ZN13LaplaceSolverC1EP4Grid	#
# laplacev0.cpp:149: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	leaq	.LC5(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	_ZSt4cout(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# laplacev0.cpp:149: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	-48(%rbp), %rax	# g, tmp123
	movl	16(%rax), %eax	# g_37->nx, _6
	movl	%eax, %esi	# _6,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEi@PLT	#
# laplacev0.cpp:149: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _7
	leaq	.LC6(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _7,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev0.cpp:149: 	std::cout <<"nx = " << g->nx << ", ny = " << g->ny
	movq	%rax, %rdx	#, _8
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	-48(%rbp), %rax	# g, tmp125
	movl	20(%rax), %eax	# g_37->ny, _9
	movl	%eax, %esi	# _9,
	movq	%rdx, %rdi	# _8,
	call	_ZNSolsEi@PLT	#
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _10
	leaq	.LC7(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movq	%rdx, %rdi	# _10,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _11
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movl	-68(%rbp), %eax	# n_iter, n_iter.8_12
	movl	%eax, %esi	# n_iter.8_12,
	movq	%rdx, %rdi	# _11,
	call	_ZNSolsEi@PLT	#
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _13
	leaq	.LC8(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	movq	%rdx, %rdi	# _13,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %rdx	#, _14
# laplacev0.cpp:151: 		<<std::endl;
	movq	-64(%rbp), %rax	# eps, eps.9_15
# laplacev0.cpp:150: 		<< ", n_iter = " << n_iter << ", eps = "<<eps
	movq	%rax, %xmm0	# eps.9_15,
	movq	%rdx, %rdi	# _14,
	call	_ZNSolsEd@PLT	#
# laplacev0.cpp:151: 		<<std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# _16,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev0.cpp:152: 	t_start = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp130
	movq	%rax, -40(%rbp)	# tmp130, t_start
# laplacev0.cpp:153: 	std::cout << s.solve(n_iter, eps) << std::endl;
	movq	-64(%rbp), %rcx	# eps, eps.10_17
	movl	-68(%rbp), %edx	# n_iter, n_iter.11_18
	leaq	-56(%rbp), %rax	#, tmp131
	movq	%rcx, %xmm0	# eps.10_17,
	movl	%edx, %esi	# n_iter.11_18,
	movq	%rax, %rdi	# tmp131,
	call	_ZN13LaplaceSolver5solveEid	#
	movq	%xmm0, %rax	#, _19
	movq	%rax, %xmm0	# _19,
	leaq	_ZSt4cout(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	_ZNSolsEd@PLT	#
# laplacev0.cpp:153: 	std::cout << s.solve(n_iter, eps) << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# _20,
	call	_ZNSolsEPFRSoS_E@PLT	#
# laplacev0.cpp:154: 	t_end = seconds();
	call	_Z7secondsv	#
	movq	%xmm0, %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, t_end
# laplacev0.cpp:155: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC9(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	_ZSt4cout(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _21
# laplacev0.cpp:155: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movsd	-32(%rbp), %xmm0	# t_end, tmp138
	subsd	-40(%rbp), %xmm0	# t_start, tmp138
	movq	%xmm0, %rax	# tmp138, _22
	movq	%rax, %xmm0	# _22,
	movq	%rdx, %rdi	# _21,
	call	_ZNSolsEd@PLT	#
# laplacev0.cpp:155: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	movq	%rax, %rdx	#, _23
# laplacev0.cpp:155: 	std::cout << "Iterations took " << t_end - t_start << "seconds.\n";
	leaq	.LC10(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	movq	%rdx, %rdi	# _23,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
.LEHE3:
# laplacev0.cpp:156: 	return 0;
	movl	$0, %ebx	#, _70
# laplacev0.cpp:157: }
	leaq	-56(%rbp), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	_ZN13LaplaceSolverD1Ev	#
	movl	%ebx, %eax	# _70, <retval>
	movq	-24(%rbp), %rdx	# D.59813, tmp146
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	je	.L49	#,
	jmp	.L52	#
.L50:
# laplacev0.cpp:146: 	Grid *g = new Grid(nx, nx);
	movq	%rax, %r12	#, tmp142
	movl	$32, %esi	#,
	movq	%rbx, %rdi	# _34,
	call	_ZdlPvm@PLT	#
	movq	%r12, %rax	# tmp142, D.59811
	movq	%rax, %rdi	# D.59811,
.LEHB4:
	call	_Unwind_Resume@PLT	#
.L51:
# laplacev0.cpp:157: }
	movq	%rax, %rbx	#, tmp144
	leaq	-56(%rbp), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	_ZN13LaplaceSolverD1Ev	#
	movq	%rbx, %rax	# tmp144, D.59812
	movq	%rax, %rdi	# D.59812,
	call	_Unwind_Resume@PLT	#
.LEHE4:
.L52:
	call	__stack_chk_fail@PLT	#
.L49:
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2341:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2341:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2341-.LLSDACSB2341
.LLSDACSB2341:
	.uleb128 .LEHB0-.LFB2341
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2341
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L50-.LFB2341
	.uleb128 0
	.uleb128 .LEHB2-.LFB2341
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2341
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L51-.LFB2341
	.uleb128 0
	.uleb128 .LEHB4-.LFB2341
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2341:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2996:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# laplacev0.cpp:157: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L55	#,
# laplacev0.cpp:157: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L55	#,
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
.L55:
# laplacev0.cpp:157: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2996:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN4GridC2Eii, @function
_GLOBAL__sub_I__ZN4GridC2Eii:
.LFB2997:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# laplacev0.cpp:157: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2997:
	.size	_GLOBAL__sub_I__ZN4GridC2Eii, .-_GLOBAL__sub_I__ZN4GridC2Eii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN4GridC2Eii
	.section	.rodata
	.align 8
.LC0:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1071644672
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
