# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 20150";
# mark_description "407";
# mark_description "-c -o main.s -O0 -qopt-report2 -xCORE-AVX2 -std=c++11 -S -fsource-asm";
	.file "main.cpp"
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST0:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    2,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B1.1:                         # Preds ..B1.0

###       { return __builtin_strlen(__s); }

..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.1:              #259.7
..L2:
                                                          #259.7
        pushq     %rbp                                          #259.7
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.3:              #
        movq      %rsp, %rbp                                    #259.7
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.4:              #
        subq      $16, %rsp                                     #259.7
        movq      %rdi, -16(%rbp)                               #259.7
        movq      -16(%rbp), %rax                               #259.16
        movq      %rax, %rcx                                    #259.16
        xorl      %eax, %eax                                    #259.16
..L7:                                                           #
        movzbl    (%rcx,%rax), %edx                             #259.16
        testl     %edx, %edx                                    #259.16
        je        ..L6          # Prob 50%                      #259.16
        movzbl    1(%rcx,%rax), %edx                            #259.16
        addq      $2, %rax                                      #259.16
        testl     %edx, %edx                                    #259.16
        jne       ..L7          # Prob 50%                      #259.16
        decq      %rax                                          #259.16
..L6:                                                           #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B1.4:                         # Preds ..B1.1
        movq      %rax, -8(%rbp)                                #259.16
        movq      -8(%rbp), %rax                                #259.16
        leave                                                   #259.16
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.8:              #
        ret                                                     #259.16
        .align    2,0x90
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.9:              #
                                # LOE
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNKSt5ctypeIcE5widenEc, "xaG",@progbits,_ZNKSt5ctypeIcE5widenEc,comdat
..TXTST1:
# -- Begin  _ZNKSt5ctypeIcE5widenEc
	.section .text._ZNKSt5ctypeIcE5widenEc, "xaG",@progbits,_ZNKSt5ctypeIcE5widenEc,comdat
# mark_begin;
       .align    2,0x90
	.weak _ZNKSt5ctypeIcE5widenEc
_ZNKSt5ctypeIcE5widenEc:
# parameter 1: %rdi
# parameter 2: %esi
..B2.1:                         # Preds ..B2.0

###       {

..___tag_value__ZNKSt5ctypeIcE5widenEc.10:                      #866.7
..L11:
                                                         #866.7
        pushq     %rbp                                          #866.7
..___tag_value__ZNKSt5ctypeIcE5widenEc.12:                      #
        movq      %rsp, %rbp                                    #866.7
..___tag_value__ZNKSt5ctypeIcE5widenEc.13:                      #
        subq      $32, %rsp                                     #866.7
        movq      %rdi, -24(%rbp)                               #866.7
        movb      %sil, -16(%rbp)                               #866.7

### 	if (_M_widen_ok)

        movq      -24(%rbp), %rax                               #867.6
        movsbl    56(%rax), %eax                                #867.6
        movsbq    %al, %rax                                     #867.6
        testl     %eax, %eax                                    #867.6
        je        ..B2.3        # Prob 50%                      #867.6
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.2:                         # Preds ..B2.1

### 	  return _M_widen[static_cast<unsigned char>(__c)];

        movsbl    -16(%rbp), %eax                               #868.47
        movsbq    %al, %rax                                     #868.47
        movzbl    %al, %eax                                     #868.11
        addq      -24(%rbp), %rax                               #868.11
        addq      $57, %rax                                     #868.11
        movsbl    (%rax), %eax                                  #868.11
        leave                                                   #868.11
..___tag_value__ZNKSt5ctypeIcE5widenEc.15:                      #
        ret                                                     #868.11
..___tag_value__ZNKSt5ctypeIcE5widenEc.16:                      #
                                # LOE
..B2.3:                         # Preds ..B2.1

### 	this->_M_widen_init();

        movq      -24(%rbp), %rax                               #869.8
        movq      %rax, %rdi                                    #869.8
..___tag_value__ZNKSt5ctypeIcE5widenEc.17:                      #869.8
        call      _ZNKSt5ctypeIcE13_M_widen_initEv              #869.8
..___tag_value__ZNKSt5ctypeIcE5widenEc.18:                      #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.4:                         # Preds ..B2.3

### 	return this->do_widen(__c);

        movq      -24(%rbp), %rax                               #870.24
        movl      $6, %edx                                      #870.24
        movslq    %edx, %rdx                                    #870.24
        imulq     $8, %rdx, %rdx                                #870.24
        addq      (%rax), %rdx                                  #870.24
        movq      (%rdx), %rax                                  #870.24
        movq      -24(%rbp), %rdx                               #870.24
        movsbl    -16(%rbp), %ecx                               #870.24
        movq      %rdx, %rdi                                    #870.24
        movl      %ecx, %esi                                    #870.24
..___tag_value__ZNKSt5ctypeIcE5widenEc.19:                      #870.24
        call      *%rax                                         #870.24
..___tag_value__ZNKSt5ctypeIcE5widenEc.20:                      #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B2.8:                         # Preds ..B2.4
        movb      %al, -32(%rbp)                                #870.24
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.5:                         # Preds ..B2.8
        movsbl    -32(%rbp), %eax                               #870.24
        leave                                                   #870.24
..___tag_value__ZNKSt5ctypeIcE5widenEc.21:                      #
        ret                                                     #870.24
        .align    2,0x90
..___tag_value__ZNKSt5ctypeIcE5widenEc.22:                      #
                                # LOE
# mark_end;
	.type	_ZNKSt5ctypeIcE5widenEc,@function
	.size	_ZNKSt5ctypeIcE5widenEc,.-_ZNKSt5ctypeIcE5widenEc
	.data
# -- End  _ZNKSt5ctypeIcE5widenEc
	.section .text._ZStorSt12_Ios_IostateS_, "xaG",@progbits,_ZStorSt12_Ios_IostateS_,comdat
..TXTST2:
# -- Begin  _ZStorSt12_Ios_IostateS_
	.section .text._ZStorSt12_Ios_IostateS_, "xaG",@progbits,_ZStorSt12_Ios_IostateS_,comdat
# mark_begin;

	.weak _ZStorSt12_Ios_IostateS_
_ZStorSt12_Ios_IostateS_:
# parameter 1: %edi
# parameter 2: %esi
..B3.1:                         # Preds ..B3.0

###   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }

..___tag_value__ZStorSt12_Ios_IostateS_.23:                     #158.3
..L24:
                                                         #158.3
        pushq     %rbp                                          #158.3
..___tag_value__ZStorSt12_Ios_IostateS_.25:                     #
        movq      %rsp, %rbp                                    #158.3
..___tag_value__ZStorSt12_Ios_IostateS_.26:                     #
        subq      $16, %rsp                                     #158.3
        movl      %edi, -16(%rbp)                               #158.3
        movl      %esi, -8(%rbp)                                #158.3
        movl      -8(%rbp), %eax                                #158.66
        orl       -16(%rbp), %eax                               #158.66
        leave                                                   #158.66
..___tag_value__ZStorSt12_Ios_IostateS_.28:                     #
        ret                                                     #158.66
..___tag_value__ZStorSt12_Ios_IostateS_.29:                     #
                                # LOE
# mark_end;
	.type	_ZStorSt12_Ios_IostateS_,@function
	.size	_ZStorSt12_Ios_IostateS_,.-_ZStorSt12_Ios_IostateS_
	.data
# -- End  _ZStorSt12_Ios_IostateS_
	.section .text._ZSt13__check_facetISt5ctypeIcEERKT_PS3_, "xaG",@progbits,_ZSt13__check_facetISt5ctypeIcEERKT_PS3_,comdat
..TXTST3:
# -- Begin  _ZSt13__check_facetISt5ctypeIcEERKT_PS3_
	.section .text._ZSt13__check_facetISt5ctypeIcEERKT_PS3_, "xaG",@progbits,_ZSt13__check_facetISt5ctypeIcEERKT_PS3_,comdat
# mark_begin;

	.weak _ZSt13__check_facetISt5ctypeIcEERKT_PS3_
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0

###     {

..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.30:     #47.5
..L31:
                                                         #47.5
        pushq     %rbp                                          #47.5
..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.32:     #
        movq      %rsp, %rbp                                    #47.5
..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.33:     #
        subq      $16, %rsp                                     #47.5
        movq      %rdi, -16(%rbp)                               #47.5

###       if (!__f)

        movq      -16(%rbp), %rax                               #48.12
        testq     %rax, %rax                                    #48.12
        jne       ..B4.3        # Prob 50%                      #48.12
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.2:                         # Preds ..B4.1

### 	__throw_bad_cast();

..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.35:     #49.2
        call      _ZSt16__throw_bad_castv                       #49.2
..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.36:     #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B4.3:                         # Preds ..B4.1

###       return *__f;

        movq      -16(%rbp), %rax                               #50.15
        leave                                                   #50.15
..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.37:     #
        ret                                                     #50.15
..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.38:     #
                                # LOE
# mark_end;
	.type	_ZSt13__check_facetISt5ctypeIcEERKT_PS3_,@function
	.size	_ZSt13__check_facetISt5ctypeIcEERKT_PS3_,.-_ZSt13__check_facetISt5ctypeIcEERKT_PS3_
	.data
# -- End  _ZSt13__check_facetISt5ctypeIcEERKT_PS3_
	.text
..TXTST4:
# -- Begin  _Z5dtimev
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.1:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.text
# mark_begin;

	.globl _Z5dtimev
_Z5dtimev:
..B5.1:                         # Preds ..B5.0

### {

..___tag_value__Z5dtimev.39:                                    #7.1
..L40:
                                                         #7.1
        pushq     %rbp                                          #7.1
..___tag_value__Z5dtimev.41:                                    #
        movq      %rsp, %rbp                                    #7.1
..___tag_value__Z5dtimev.42:                                    #
        subq      $32, %rsp                                     #7.1

###     double tseconds = 0.0;

        vxorpd    %xmm0, %xmm0, %xmm0                           #8.21
        vmovsd    %xmm0, -24(%rbp)                              #8.21

###     struct timeval mytime;
###     gettimeofday(&mytime, (struct timezone*)0);

        lea       -16(%rbp), %rax                               #10.5
        movl      $0, %edx                                      #10.5
        movq      %rax, %rdi                                    #10.5
        movq      %rdx, %rsi                                    #10.5
..___tag_value__Z5dtimev.44:                                    #10.5
        call      gettimeofday                                  #10.5
..___tag_value__Z5dtimev.45:                                    #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B5.5:                         # Preds ..B5.1
        movl      %eax, -32(%rbp)                               #10.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B5.2:                         # Preds ..B5.5

###     tseconds = (double)(mytime.tv_sec + mytime.tv_usec*1.0e-6);

        movq      -16(%rbp), %rax                               #11.25
        vcvtsi2sdq %rax, %xmm0, %xmm0                           #11.25
        movq      -8(%rbp), %rax                                #11.41
        vcvtsi2sdq %rax, %xmm1, %xmm1                           #11.41
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm2             #11.56
        vmulsd    %xmm2, %xmm1, %xmm1                           #11.56
        vaddsd    %xmm1, %xmm0, %xmm0                           #11.56
        vmovsd    %xmm0, -24(%rbp)                              #11.5

###     return (tseconds);

        vmovsd    -24(%rbp), %xmm0                              #12.12
        leave                                                   #12.12
..___tag_value__Z5dtimev.46:                                    #
        ret                                                     #12.12
..___tag_value__Z5dtimev.47:                                    #
                                # LOE
# mark_end;
	.type	_Z5dtimev,@function
	.size	_Z5dtimev,.-_Z5dtimev
	.data
# -- End  _Z5dtimev
	.text
# -- Begin  main
	.section .rodata, "a"
	.align 4
.L_2__STRING.0:
	.long	1953066601
	.long	774778400
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,10
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1701736292
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	544501353
	.long	1886220131
	.long	979726945
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.word	29472
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,3
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	544501353
	.long	1970496882
	.long	1663071340
	.long	1801676136
	.word	8250
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	544500838
	.long	1886220131
	.long	979726945
	.word	32
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	544500838
	.long	1970496882
	.long	1663071340
	.long	1801676136
	.word	8250
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	543973988
	.long	1886220131
	.long	979726945
	.word	32
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	543973988
	.long	1970496882
	.long	1663071340
	.long	1801676136
	.word	8250
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,19
	.text
# mark_begin;

	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B6.1:                         # Preds ..B6.0

### {

..___tag_value_main.48:                                         #15.1
..L49:
                                                         #15.1
        pushq     %rbp                                          #15.1
..___tag_value_main.50:                                         #
        movq      %rsp, %rbp                                    #15.1
..___tag_value_main.51:                                         #
        subq      $432, %rsp                                    #15.1
        movl      %edi, -376(%rbp)                              #15.1
        movq      %rsi, -368(%rbp)                              #15.1

###     int    *i_a = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %eax                              #16.29
        movq      %rax, %rdi                                    #16.29
..___tag_value_main.53:                                         #16.29
        call      malloc                                        #16.29
..___tag_value_main.54:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.75:                        # Preds ..B6.1
        movq      %rax, -360(%rbp)                              #16.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.2:                         # Preds ..B6.75
        movq      -360(%rbp), %rax                              #16.29
        movq      %rax, -352(%rbp)                              #16.17

###     int    *i_b = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %eax                              #17.29
        movq      %rax, %rdi                                    #17.29
..___tag_value_main.55:                                         #17.29
        call      malloc                                        #17.29
..___tag_value_main.56:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.76:                        # Preds ..B6.2
        movq      %rax, -344(%rbp)                              #17.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.3:                         # Preds ..B6.76
        movq      -344(%rbp), %rax                              #17.29
        movq      %rax, -336(%rbp)                              #17.17

###     float  *f_a = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %eax                              #18.29
        movq      %rax, %rdi                                    #18.29
..___tag_value_main.57:                                         #18.29
        call      malloc                                        #18.29
..___tag_value_main.58:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.77:                        # Preds ..B6.3
        movq      %rax, -328(%rbp)                              #18.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.4:                         # Preds ..B6.77
        movq      -328(%rbp), %rax                              #18.29
        movq      %rax, -320(%rbp)                              #18.17

###     float  *f_b = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %eax                              #19.29
        movq      %rax, %rdi                                    #19.29
..___tag_value_main.59:                                         #19.29
        call      malloc                                        #19.29
..___tag_value_main.60:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.78:                        # Preds ..B6.4
        movq      %rax, -312(%rbp)                              #19.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.5:                         # Preds ..B6.78
        movq      -312(%rbp), %rax                              #19.29
        movq      %rax, -304(%rbp)                              #19.17

###     double *d_a = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %eax                              #20.29
        movq      %rax, %rdi                                    #20.29
..___tag_value_main.61:                                         #20.29
        call      malloc                                        #20.29
..___tag_value_main.62:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.79:                        # Preds ..B6.5
        movq      %rax, -296(%rbp)                              #20.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.6:                         # Preds ..B6.79
        movq      -296(%rbp), %rax                              #20.29
        movq      %rax, -288(%rbp)                              #20.17

###     double *d_b = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %eax                              #21.29
        movq      %rax, %rdi                                    #21.29
..___tag_value_main.63:                                         #21.29
        call      malloc                                        #21.29
..___tag_value_main.64:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.80:                        # Preds ..B6.6
        movq      %rax, -280(%rbp)                              #21.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.7:                         # Preds ..B6.80
        movq      -280(%rbp), %rax                              #21.29
        movq      %rax, -272(%rbp)                              #21.17

###     cout << "init ... " ;

        movl      $_ZSt4cout, %eax                              #22.10
        movl      $.L_2__STRING.0, %edx                         #22.10
        movq      %rax, %rdi                                    #22.10
        movq      %rdx, %rsi                                    #22.10
..___tag_value_main.65:                                         #22.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #22.10
..___tag_value_main.66:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.81:                        # Preds ..B6.7
        movq      %rax, -264(%rbp)                              #22.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.8:                         # Preds ..B6.81

###     for(int i = 0; i < TIMES; i++)

        movl      $0, -432(%rbp)                                #23.15
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.9:                         # Preds ..B6.16 ..B6.8
        movl      -432(%rbp), %eax                              #23.20
        cmpl      $100000000, %eax                              #23.24
        jge       ..B6.17       # Prob 50%                      #23.24
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.10:                        # Preds ..B6.9

###     {
###         i_a[i] = rand();

..___tag_value_main.67:                                         #25.18
        call      rand                                          #25.18
..___tag_value_main.68:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.82:                        # Preds ..B6.10
        movl      %eax, -428(%rbp)                              #25.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.11:                        # Preds ..B6.82
        movl      -432(%rbp), %eax                              #25.13
        movslq    %eax, %rax                                    #25.9
        imulq     $4, %rax, %rax                                #25.9
        addq      -352(%rbp), %rax                              #25.9
        movl      -428(%rbp), %edx                              #25.18
        movl      %edx, (%rax)                                  #25.9

###         i_b[i] = rand();

..___tag_value_main.69:                                         #26.18
        call      rand                                          #26.18
..___tag_value_main.70:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.83:                        # Preds ..B6.11
        movl      %eax, -424(%rbp)                              #26.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.12:                        # Preds ..B6.83
        movl      -432(%rbp), %eax                              #26.13
        movslq    %eax, %rax                                    #26.9
        imulq     $4, %rax, %rax                                #26.9
        addq      -336(%rbp), %rax                              #26.9
        movl      -424(%rbp), %edx                              #26.18
        movl      %edx, (%rax)                                  #26.9

###         f_a[i] = rand();

..___tag_value_main.71:                                         #27.18
        call      rand                                          #27.18
..___tag_value_main.72:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.84:                        # Preds ..B6.12
        movl      %eax, -420(%rbp)                              #27.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.13:                        # Preds ..B6.84
        movl      -420(%rbp), %eax                              #27.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #27.18
        movl      -432(%rbp), %eax                              #27.13
        movslq    %eax, %rax                                    #27.9
        imulq     $4, %rax, %rax                                #27.9
        addq      -320(%rbp), %rax                              #27.9
        vmovss    %xmm0, (%rax)                                 #27.9

###         f_b[i] = rand();

..___tag_value_main.73:                                         #28.18
        call      rand                                          #28.18
..___tag_value_main.74:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.85:                        # Preds ..B6.13
        movl      %eax, -416(%rbp)                              #28.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.14:                        # Preds ..B6.85
        movl      -416(%rbp), %eax                              #28.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #28.18
        movl      -432(%rbp), %eax                              #28.13
        movslq    %eax, %rax                                    #28.9
        imulq     $4, %rax, %rax                                #28.9
        addq      -304(%rbp), %rax                              #28.9
        vmovss    %xmm0, (%rax)                                 #28.9

###         d_a[i] = rand();

..___tag_value_main.75:                                         #29.18
        call      rand                                          #29.18
..___tag_value_main.76:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.86:                        # Preds ..B6.14
        movl      %eax, -408(%rbp)                              #29.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.15:                        # Preds ..B6.86
        movl      -408(%rbp), %eax                              #29.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #29.18
        movl      -432(%rbp), %eax                              #29.13
        movslq    %eax, %rax                                    #29.9
        imulq     $8, %rax, %rax                                #29.9
        addq      -288(%rbp), %rax                              #29.9
        vmovsd    %xmm0, (%rax)                                 #29.9

###         d_b[i] = rand();

..___tag_value_main.77:                                         #30.18
        call      rand                                          #30.18
..___tag_value_main.78:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B6.87:                        # Preds ..B6.15
        movl      %eax, -404(%rbp)                              #30.18
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.16:                        # Preds ..B6.87
        movl      -404(%rbp), %eax                              #30.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #30.18
        movl      -432(%rbp), %eax                              #30.13
        movslq    %eax, %rax                                    #30.9
        imulq     $8, %rax, %rax                                #30.9
        addq      -272(%rbp), %rax                              #30.9
        vmovsd    %xmm0, (%rax)                                 #30.9
        movl      $1, %eax                                      #23.31
        addl      -432(%rbp), %eax                              #23.31
        movl      %eax, -432(%rbp)                              #23.31
        jmp       ..B6.9        # Prob 100%                     #23.31
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.17:                        # Preds ..B6.9

###     }
###     cout << "done" << endl;

        movl      $_ZSt4cout, %eax                              #32.10
        movl      $.L_2__STRING.1, %edx                         #32.10
        movq      %rax, %rdi                                    #32.10
        movq      %rdx, %rsi                                    #32.10
..___tag_value_main.79:                                         #32.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #32.10
..___tag_value_main.80:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.88:                        # Preds ..B6.17
        movq      %rax, -256(%rbp)                              #32.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.18:                        # Preds ..B6.88
        movq      -256(%rbp), %rax                              #32.20
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #32.20
        movq      %rax, %rdi                                    #32.20
        movq      %rdx, %rsi                                    #32.20
..___tag_value_main.81:                                         #32.20
        call      _ZNSolsEPFRSoS_E                              #32.20
..___tag_value_main.82:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.89:                        # Preds ..B6.18
        movq      %rax, -248(%rbp)                              #32.20
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.19:                        # Preds ..B6.89

### 
###     int c;
###     double tic, toc;
###     tic = dtime();

..___tag_value_main.83:                                         #36.11
        call      _Z5dtimev                                     #36.11
..___tag_value_main.84:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.90:                        # Preds ..B6.19
        vmovsd    %xmm0, -240(%rbp)                             #36.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.20:                        # Preds ..B6.90
        vmovsd    -240(%rbp), %xmm0                             #36.11
        vmovsd    %xmm0, -232(%rbp)                             #36.5

###     for (int i = 0; i < TIMES; i++)

        movl      $0, -412(%rbp)                                #37.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.21:                        # Preds ..B6.22 ..B6.20
        movl      -412(%rbp), %eax                              #37.21
        cmpl      $100000000, %eax                              #37.25
        jl        ..B6.23       # Prob 50%                      #37.25
        jmp       ..B6.26       # Prob 100%                     #37.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.22:                        # Preds ..B6.24 ..B6.25
        movl      $1, %eax                                      #37.32
        addl      -412(%rbp), %eax                              #37.32
        movl      %eax, -412(%rbp)                              #37.32
        jmp       ..B6.21       # Prob 100%                     #37.32
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.23:                        # Preds ..B6.21

###     {
###         if(i_a[i] > i_b[i])

        movl      -412(%rbp), %eax                              #39.16
        movslq    %eax, %rax                                    #39.12
        imulq     $4, %rax, %rax                                #39.12
        addq      -352(%rbp), %rax                              #39.12
        movl      (%rax), %eax                                  #39.12
        movl      -412(%rbp), %edx                              #39.25
        movslq    %edx, %rdx                                    #39.21
        imulq     $4, %rdx, %rdx                                #39.21
        addq      -336(%rbp), %rdx                              #39.21
        movl      (%rdx), %edx                                  #39.21
        cmpl      %edx, %eax                                    #39.21
        jle       ..B6.25       # Prob 50%                      #39.21
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.24:                        # Preds ..B6.23

###             c = 1;

        movl      $1, -400(%rbp)                                #40.13
        jmp       ..B6.22       # Prob 100%                     #40.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.25:                        # Preds ..B6.23

###         else
###             c = 0;

        movl      $0, -400(%rbp)                                #42.13
        jmp       ..B6.22       # Prob 100%                     #42.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.26:                        # Preds ..B6.21

###     }
###     toc = dtime();

..___tag_value_main.85:                                         #44.11
        call      _Z5dtimev                                     #44.11
..___tag_value_main.86:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.91:                        # Preds ..B6.26
        vmovsd    %xmm0, -224(%rbp)                             #44.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.27:                        # Preds ..B6.91
        vmovsd    -224(%rbp), %xmm0                             #44.11
        vmovsd    %xmm0, -216(%rbp)                             #44.5

###     cout << "int compare: " << toc - tic << " s" << endl;

        movl      $_ZSt4cout, %eax                              #45.10
        movl      $.L_2__STRING.2, %edx                         #45.10
        movq      %rax, %rdi                                    #45.10
        movq      %rdx, %rsi                                    #45.10
..___tag_value_main.87:                                         #45.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.10
..___tag_value_main.88:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.92:                        # Preds ..B6.27
        movq      %rax, -208(%rbp)                              #45.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.28:                        # Preds ..B6.92
        movq      -208(%rbp), %rax                              #45.29
        vmovsd    -216(%rbp), %xmm0                             #45.29
        vmovsd    -232(%rbp), %xmm1                             #45.29
        vsubsd    %xmm1, %xmm0, %xmm0                           #45.29
        movq      %rax, %rdi                                    #45.29
..___tag_value_main.89:                                         #45.29
        call      _ZNSolsEd                                     #45.29
..___tag_value_main.90:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.93:                        # Preds ..B6.28
        movq      %rax, -200(%rbp)                              #45.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.29:                        # Preds ..B6.93
        movq      -200(%rbp), %rax                              #45.42
        movl      $.L_2__STRING.3, %edx                         #45.42
        movq      %rax, %rdi                                    #45.42
        movq      %rdx, %rsi                                    #45.42
..___tag_value_main.91:                                         #45.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.42
..___tag_value_main.92:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.94:                        # Preds ..B6.29
        movq      %rax, -192(%rbp)                              #45.42
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.30:                        # Preds ..B6.94
        movq      -192(%rbp), %rax                              #45.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #45.50
        movq      %rax, %rdi                                    #45.50
        movq      %rdx, %rsi                                    #45.50
..___tag_value_main.93:                                         #45.50
        call      _ZNSolsEPFRSoS_E                              #45.50
..___tag_value_main.94:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.95:                        # Preds ..B6.30
        movq      %rax, -184(%rbp)                              #45.50
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.31:                        # Preds ..B6.95

###     cout << "int result check: " << c << endl;

        movl      $_ZSt4cout, %eax                              #46.10
        movl      $.L_2__STRING.4, %edx                         #46.10
        movq      %rax, %rdi                                    #46.10
        movq      %rdx, %rsi                                    #46.10
..___tag_value_main.95:                                         #46.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #46.10
..___tag_value_main.96:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.96:                        # Preds ..B6.31
        movq      %rax, -176(%rbp)                              #46.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.32:                        # Preds ..B6.96
        movq      -176(%rbp), %rax                              #46.34
        movl      -400(%rbp), %edx                              #46.34
        movq      %rax, %rdi                                    #46.34
        movl      %edx, %esi                                    #46.34
..___tag_value_main.97:                                         #46.34
        call      _ZNSolsEi                                     #46.34
..___tag_value_main.98:                                         #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.97:                        # Preds ..B6.32
        movq      %rax, -168(%rbp)                              #46.34
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.33:                        # Preds ..B6.97
        movq      -168(%rbp), %rax                              #46.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #46.39
        movq      %rax, %rdi                                    #46.39
        movq      %rdx, %rsi                                    #46.39
..___tag_value_main.99:                                         #46.39
        call      _ZNSolsEPFRSoS_E                              #46.39
..___tag_value_main.100:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.98:                        # Preds ..B6.33
        movq      %rax, -160(%rbp)                              #46.39
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.34:                        # Preds ..B6.98

### 
###     srand(1);

        movl      $1, %eax                                      #48.5
        movl      %eax, %edi                                    #48.5
..___tag_value_main.101:                                        #48.5
        call      srand                                         #48.5
..___tag_value_main.102:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.35:                        # Preds ..B6.34

###     int z;
###     tic = dtime();

..___tag_value_main.103:                                        #50.11
        call      _Z5dtimev                                     #50.11
..___tag_value_main.104:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.99:                        # Preds ..B6.35
        vmovsd    %xmm0, -152(%rbp)                             #50.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.36:                        # Preds ..B6.99
        vmovsd    -152(%rbp), %xmm0                             #50.11
        vmovsd    %xmm0, -232(%rbp)                             #50.5

###     for (int i = 0; i < TIMES; i++)

        movl      $0, -396(%rbp)                                #51.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.37:                        # Preds ..B6.38 ..B6.36
        movl      -396(%rbp), %eax                              #51.21
        cmpl      $100000000, %eax                              #51.25
        jl        ..B6.39       # Prob 50%                      #51.25
        jmp       ..B6.42       # Prob 100%                     #51.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.38:                        # Preds ..B6.40 ..B6.41
        movl      $1, %eax                                      #51.32
        addl      -396(%rbp), %eax                              #51.32
        movl      %eax, -396(%rbp)                              #51.32
        jmp       ..B6.37       # Prob 100%                     #51.32
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.39:                        # Preds ..B6.37

###     {
###         if(f_a[i] > f_b[i])

        movl      -396(%rbp), %eax                              #53.16
        movslq    %eax, %rax                                    #53.12
        imulq     $4, %rax, %rax                                #53.12
        addq      -320(%rbp), %rax                              #53.12
        vmovss    (%rax), %xmm0                                 #53.12
        movl      -396(%rbp), %eax                              #53.25
        movslq    %eax, %rax                                    #53.21
        imulq     $4, %rax, %rax                                #53.21
        addq      -304(%rbp), %rax                              #53.21
        vmovss    (%rax), %xmm1                                 #53.21
        vcomiss   %xmm1, %xmm0                                  #53.21
        jbe       ..B6.41       # Prob 50%                      #53.21
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.40:                        # Preds ..B6.39

###             z = 1;

        movl      $1, -392(%rbp)                                #54.13
        jmp       ..B6.38       # Prob 100%                     #54.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.41:                        # Preds ..B6.39

###         else
###             z = 0;

        movl      $0, -392(%rbp)                                #56.13
        jmp       ..B6.38       # Prob 100%                     #56.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.42:                        # Preds ..B6.37

###     }
###     toc = dtime();

..___tag_value_main.105:                                        #58.11
        call      _Z5dtimev                                     #58.11
..___tag_value_main.106:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.100:                       # Preds ..B6.42
        vmovsd    %xmm0, -144(%rbp)                             #58.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.43:                        # Preds ..B6.100
        vmovsd    -144(%rbp), %xmm0                             #58.11
        vmovsd    %xmm0, -216(%rbp)                             #58.5

###     cout << "flt compare: " << toc - tic << " s" << endl;

        movl      $_ZSt4cout, %eax                              #59.10
        movl      $.L_2__STRING.5, %edx                         #59.10
        movq      %rax, %rdi                                    #59.10
        movq      %rdx, %rsi                                    #59.10
..___tag_value_main.107:                                        #59.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.10
..___tag_value_main.108:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.101:                       # Preds ..B6.43
        movq      %rax, -136(%rbp)                              #59.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.44:                        # Preds ..B6.101
        movq      -136(%rbp), %rax                              #59.29
        vmovsd    -216(%rbp), %xmm0                             #59.29
        vmovsd    -232(%rbp), %xmm1                             #59.29
        vsubsd    %xmm1, %xmm0, %xmm0                           #59.29
        movq      %rax, %rdi                                    #59.29
..___tag_value_main.109:                                        #59.29
        call      _ZNSolsEd                                     #59.29
..___tag_value_main.110:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.102:                       # Preds ..B6.44
        movq      %rax, -128(%rbp)                              #59.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.45:                        # Preds ..B6.102
        movq      -128(%rbp), %rax                              #59.42
        movl      $.L_2__STRING.3, %edx                         #59.42
        movq      %rax, %rdi                                    #59.42
        movq      %rdx, %rsi                                    #59.42
..___tag_value_main.111:                                        #59.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.42
..___tag_value_main.112:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.103:                       # Preds ..B6.45
        movq      %rax, -120(%rbp)                              #59.42
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.46:                        # Preds ..B6.103
        movq      -120(%rbp), %rax                              #59.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #59.50
        movq      %rax, %rdi                                    #59.50
        movq      %rdx, %rsi                                    #59.50
..___tag_value_main.113:                                        #59.50
        call      _ZNSolsEPFRSoS_E                              #59.50
..___tag_value_main.114:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.104:                       # Preds ..B6.46
        movq      %rax, -112(%rbp)                              #59.50
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.47:                        # Preds ..B6.104

###     cout << "flt result check: " << z << endl;

        movl      $_ZSt4cout, %eax                              #60.10
        movl      $.L_2__STRING.6, %edx                         #60.10
        movq      %rax, %rdi                                    #60.10
        movq      %rdx, %rsi                                    #60.10
..___tag_value_main.115:                                        #60.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #60.10
..___tag_value_main.116:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.105:                       # Preds ..B6.47
        movq      %rax, -104(%rbp)                              #60.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.48:                        # Preds ..B6.105
        movq      -104(%rbp), %rax                              #60.34
        movl      -392(%rbp), %edx                              #60.34
        movq      %rax, %rdi                                    #60.34
        movl      %edx, %esi                                    #60.34
..___tag_value_main.117:                                        #60.34
        call      _ZNSolsEi                                     #60.34
..___tag_value_main.118:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.106:                       # Preds ..B6.48
        movq      %rax, -96(%rbp)                               #60.34
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.49:                        # Preds ..B6.106
        movq      -96(%rbp), %rax                               #60.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #60.39
        movq      %rax, %rdi                                    #60.39
        movq      %rdx, %rsi                                    #60.39
..___tag_value_main.119:                                        #60.39
        call      _ZNSolsEPFRSoS_E                              #60.39
..___tag_value_main.120:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.107:                       # Preds ..B6.49
        movq      %rax, -88(%rbp)                               #60.39
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.50:                        # Preds ..B6.107

### 
###     srand(1);

        movl      $1, %eax                                      #62.5
        movl      %eax, %edi                                    #62.5
..___tag_value_main.121:                                        #62.5
        call      srand                                         #62.5
..___tag_value_main.122:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.51:                        # Preds ..B6.50

###     int gamma;
###     tic = dtime();

..___tag_value_main.123:                                        #64.11
        call      _Z5dtimev                                     #64.11
..___tag_value_main.124:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.108:                       # Preds ..B6.51
        vmovsd    %xmm0, -80(%rbp)                              #64.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.52:                        # Preds ..B6.108
        vmovsd    -80(%rbp), %xmm0                              #64.11
        vmovsd    %xmm0, -232(%rbp)                             #64.5

###     for (int i = 0; i < TIMES; i++)

        movl      $0, -388(%rbp)                                #65.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.53:                        # Preds ..B6.54 ..B6.52
        movl      -388(%rbp), %eax                              #65.21
        cmpl      $100000000, %eax                              #65.25
        jl        ..B6.55       # Prob 50%                      #65.25
        jmp       ..B6.58       # Prob 100%                     #65.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.54:                        # Preds ..B6.56 ..B6.57
        movl      $1, %eax                                      #65.32
        addl      -388(%rbp), %eax                              #65.32
        movl      %eax, -388(%rbp)                              #65.32
        jmp       ..B6.53       # Prob 100%                     #65.32
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.55:                        # Preds ..B6.53

###     {
###         if(d_a[i] > d_b[i])

        movl      -388(%rbp), %eax                              #67.16
        movslq    %eax, %rax                                    #67.12
        imulq     $8, %rax, %rax                                #67.12
        addq      -288(%rbp), %rax                              #67.12
        vmovsd    (%rax), %xmm0                                 #67.12
        movl      -388(%rbp), %eax                              #67.25
        movslq    %eax, %rax                                    #67.21
        imulq     $8, %rax, %rax                                #67.21
        addq      -272(%rbp), %rax                              #67.21
        vmovsd    (%rax), %xmm1                                 #67.21
        vcomisd   %xmm1, %xmm0                                  #67.21
        jbe       ..B6.57       # Prob 50%                      #67.21
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.56:                        # Preds ..B6.55

###             gamma = 1;

        movl      $1, -384(%rbp)                                #68.13
        jmp       ..B6.54       # Prob 100%                     #68.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.57:                        # Preds ..B6.55

###         else
###             gamma = 0;

        movl      $0, -384(%rbp)                                #70.13
        jmp       ..B6.54       # Prob 100%                     #70.13
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.58:                        # Preds ..B6.53

###     }
###     toc = dtime();

..___tag_value_main.125:                                        #72.11
        call      _Z5dtimev                                     #72.11
..___tag_value_main.126:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B6.109:                       # Preds ..B6.58
        vmovsd    %xmm0, -72(%rbp)                              #72.11
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.59:                        # Preds ..B6.109
        vmovsd    -72(%rbp), %xmm0                              #72.11
        vmovsd    %xmm0, -216(%rbp)                             #72.5

###     cout << "dbl compare: " << toc - tic << " s" << endl;

        movl      $_ZSt4cout, %eax                              #73.10
        movl      $.L_2__STRING.7, %edx                         #73.10
        movq      %rax, %rdi                                    #73.10
        movq      %rdx, %rsi                                    #73.10
..___tag_value_main.127:                                        #73.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.10
..___tag_value_main.128:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.110:                       # Preds ..B6.59
        movq      %rax, -64(%rbp)                               #73.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.60:                        # Preds ..B6.110
        movq      -64(%rbp), %rax                               #73.29
        vmovsd    -216(%rbp), %xmm0                             #73.29
        vmovsd    -232(%rbp), %xmm1                             #73.29
        vsubsd    %xmm1, %xmm0, %xmm0                           #73.29
        movq      %rax, %rdi                                    #73.29
..___tag_value_main.129:                                        #73.29
        call      _ZNSolsEd                                     #73.29
..___tag_value_main.130:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.111:                       # Preds ..B6.60
        movq      %rax, -56(%rbp)                               #73.29
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.61:                        # Preds ..B6.111
        movq      -56(%rbp), %rax                               #73.42
        movl      $.L_2__STRING.3, %edx                         #73.42
        movq      %rax, %rdi                                    #73.42
        movq      %rdx, %rsi                                    #73.42
..___tag_value_main.131:                                        #73.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.42
..___tag_value_main.132:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.112:                       # Preds ..B6.61
        movq      %rax, -48(%rbp)                               #73.42
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.62:                        # Preds ..B6.112
        movq      -48(%rbp), %rax                               #73.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #73.50
        movq      %rax, %rdi                                    #73.50
        movq      %rdx, %rsi                                    #73.50
..___tag_value_main.133:                                        #73.50
        call      _ZNSolsEPFRSoS_E                              #73.50
..___tag_value_main.134:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.113:                       # Preds ..B6.62
        movq      %rax, -40(%rbp)                               #73.50
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.63:                        # Preds ..B6.113

###     cout << "dbl result check: " << gamma << endl;

        movl      $_ZSt4cout, %eax                              #74.10
        movl      $.L_2__STRING.8, %edx                         #74.10
        movq      %rax, %rdi                                    #74.10
        movq      %rdx, %rsi                                    #74.10
..___tag_value_main.135:                                        #74.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #74.10
..___tag_value_main.136:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.114:                       # Preds ..B6.63
        movq      %rax, -32(%rbp)                               #74.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.64:                        # Preds ..B6.114
        movq      -32(%rbp), %rax                               #74.34
        movl      -384(%rbp), %edx                              #74.34
        movq      %rax, %rdi                                    #74.34
        movl      %edx, %esi                                    #74.34
..___tag_value_main.137:                                        #74.34
        call      _ZNSolsEi                                     #74.34
..___tag_value_main.138:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.115:                       # Preds ..B6.64
        movq      %rax, -24(%rbp)                               #74.34
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.65:                        # Preds ..B6.115
        movq      -24(%rbp), %rax                               #74.43
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %edx #74.43
        movq      %rax, %rdi                                    #74.43
        movq      %rdx, %rsi                                    #74.43
..___tag_value_main.139:                                        #74.43
        call      _ZNSolsEPFRSoS_E                              #74.43
..___tag_value_main.140:                                        #
                                # LOE rax rbx rbp rsp r12 r13 r14 r15 rip
..B6.116:                       # Preds ..B6.65
        movq      %rax, -16(%rbp)                               #74.43
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.66:                        # Preds ..B6.116

### 
###     free(i_a);

        movq      -352(%rbp), %rax                              #76.5
        movq      %rax, %rdi                                    #76.5
..___tag_value_main.141:                                        #76.5
        call      free                                          #76.5
..___tag_value_main.142:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.67:                        # Preds ..B6.66

###     free(i_b);

        movq      -336(%rbp), %rax                              #77.5
        movq      %rax, %rdi                                    #77.5
..___tag_value_main.143:                                        #77.5
        call      free                                          #77.5
..___tag_value_main.144:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.68:                        # Preds ..B6.67

###     free(f_a);

        movq      -320(%rbp), %rax                              #78.5
        movq      %rax, %rdi                                    #78.5
..___tag_value_main.145:                                        #78.5
        call      free                                          #78.5
..___tag_value_main.146:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.69:                        # Preds ..B6.68

###     free(f_b);

        movq      -304(%rbp), %rax                              #79.5
        movq      %rax, %rdi                                    #79.5
..___tag_value_main.147:                                        #79.5
        call      free                                          #79.5
..___tag_value_main.148:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.70:                        # Preds ..B6.69

###     free(d_a);

        movq      -288(%rbp), %rax                              #80.5
        movq      %rax, %rdi                                    #80.5
..___tag_value_main.149:                                        #80.5
        call      free                                          #80.5
..___tag_value_main.150:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.71:                        # Preds ..B6.70

###     free(d_b);

        movq      -272(%rbp), %rax                              #81.5
        movq      %rax, %rdi                                    #81.5
..___tag_value_main.151:                                        #81.5
        call      free                                          #81.5
..___tag_value_main.152:                                        #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B6.72:                        # Preds ..B6.71

### }

        movl      $0, %eax                                      #82.1
        leave                                                   #82.1
..___tag_value_main.153:                                        #
        ret                                                     #82.1
..___tag_value_main.154:                                        #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  __sti__$E
	.bss
	.align 4
	.align 1
_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE:
	.type	_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE,@object
	.size	_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE,1
	.space 1	# pad
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.text
# mark_begin;

__sti__$E:
..B7.1:                         # Preds ..B7.0
..___tag_value___sti__$E.155:                                   #
..L156:
                                                        #
        pushq     %rbp                                          #
..___tag_value___sti__$E.157:                                   #
        movq      %rsp, %rbp                                    #
..___tag_value___sti__$E.158:                                   #
        subq      $16, %rsp                                     #

###   static ios_base::Init __ioinit;

        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %eax #74.25
        movq      %rax, %rdi                                    #74.25
..___tag_value___sti__$E.160:                                   #74.25
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.161:                                   #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.2:                         # Preds ..B7.1
        movl      $_ZNSt8ios_base4InitD1Ev, %eax                #74.25
        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %edx #74.25
        movl      $__dso_handle, %ecx                           #74.25
        movq      %rax, %rdi                                    #74.25
        movq      %rdx, %rsi                                    #74.25
        movq      %rcx, %rdx                                    #74.25
..___tag_value___sti__$E.162:                                   #74.25
        call      __cxa_atexit                                  #74.25
..___tag_value___sti__$E.163:                                   #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B7.6:                         # Preds ..B7.2
        movl      %eax, -16(%rbp)                               #74.25
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B7.3:                         # Preds ..B7.6
        leave                                                   #74.25
..___tag_value___sti__$E.164:                                   #
        ret                                                     #74.25
..___tag_value___sti__$E.165:                                   #
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x0000001c
	.8byte 0x00507a0100000000
	.4byte 0x09107801
	.byte 0x00
	.8byte __gxx_personality_v0
	.4byte 0x9008070c
	.2byte 0x0001
	.byte 0x00
	.4byte 0x0000002c
	.4byte 0x00000024
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.1
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.9-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.1
	.2byte 0x0400
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.3-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.4-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.8-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.4
	.byte 0xc6
	.4byte 0x0000003c
	.4byte 0x00000054
	.8byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.10
	.8byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.22-..___tag_value__ZNKSt5ctypeIcE5widenEc.10
	.2byte 0x0400
	.4byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.12-..___tag_value__ZNKSt5ctypeIcE5widenEc.10
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.13-..___tag_value__ZNKSt5ctypeIcE5widenEc.12
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.15-..___tag_value__ZNKSt5ctypeIcE5widenEc.13
	.2byte 0x04c6
	.4byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.16-..___tag_value__ZNKSt5ctypeIcE5widenEc.15
	.2byte 0x0286
	.byte 0x04
	.4byte ..___tag_value__ZNKSt5ctypeIcE5widenEc.21-..___tag_value__ZNKSt5ctypeIcE5widenEc.16
	.4byte 0x000000c6
	.4byte 0x0000002c
	.4byte 0x00000094
	.8byte ..___tag_value__ZStorSt12_Ios_IostateS_.23
	.8byte ..___tag_value__ZStorSt12_Ios_IostateS_.29-..___tag_value__ZStorSt12_Ios_IostateS_.23
	.2byte 0x0400
	.4byte ..___tag_value__ZStorSt12_Ios_IostateS_.25-..___tag_value__ZStorSt12_Ios_IostateS_.23
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZStorSt12_Ios_IostateS_.26-..___tag_value__ZStorSt12_Ios_IostateS_.25
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZStorSt12_Ios_IostateS_.28-..___tag_value__ZStorSt12_Ios_IostateS_.26
	.byte 0xc6
	.4byte 0x0000002c
	.4byte 0x000000c4
	.8byte ..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.30
	.8byte ..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.38-..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.30
	.2byte 0x0400
	.4byte ..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.32-..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.30
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.33-..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.32
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.37-..___tag_value__ZSt13__check_facetISt5ctypeIcEERKT_PS3_.33
	.byte 0xc6
	.4byte 0x0000002c
	.4byte 0x000000f4
	.8byte ..___tag_value__Z5dtimev.39
	.8byte ..___tag_value__Z5dtimev.47-..___tag_value__Z5dtimev.39
	.2byte 0x0400
	.4byte ..___tag_value__Z5dtimev.41-..___tag_value__Z5dtimev.39
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z5dtimev.42-..___tag_value__Z5dtimev.41
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z5dtimev.46-..___tag_value__Z5dtimev.42
	.byte 0xc6
	.4byte 0x0000002c
	.4byte 0x00000124
	.8byte ..___tag_value_main.48
	.8byte ..___tag_value_main.154-..___tag_value_main.48
	.2byte 0x0400
	.4byte ..___tag_value_main.50-..___tag_value_main.48
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.51-..___tag_value_main.50
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.153-..___tag_value_main.51
	.byte 0xc6
	.4byte 0x0000002c
	.4byte 0x00000154
	.8byte ..___tag_value___sti__$E.155
	.8byte ..___tag_value___sti__$E.165-..___tag_value___sti__$E.155
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.157-..___tag_value___sti__$E.155
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.158-..___tag_value___sti__$E.157
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value___sti__$E.164-..___tag_value___sti__$E.158
	.byte 0xc6
# End
