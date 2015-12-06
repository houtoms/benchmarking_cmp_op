# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 20150";
# mark_description "407";
# mark_description "-c -o main.s -O2 -qopt-report2 -xCORE-AVX2 -std=c++11 -S -fsource-asm";
	.file "main.cpp"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0

### {

..___tag_value_main.1:                                          #15.1
..L2:
                                                          #15.1
        pushq     %rbp                                          #15.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #15.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #15.1
        pushq     %r12                                          #15.1
        pushq     %r13                                          #15.1
        pushq     %r14                                          #15.1
        pushq     %r15                                          #15.1
        pushq     %rbx                                          #15.1
        subq      $216, %rsp                                    #15.1
        movl      $10330110, %esi                               #15.1
        movl      $3, %edi                                      #15.1
        call      __intel_new_feature_proc_init                 #15.1
..___tag_value_main.6:                                          #
                                # LOE
..B1.108:                       # Preds ..B1.1
        vstmxcsr  (%rsp)                                        #15.1

###     int    *i_a = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %edi                              #16.29
        orl       $32832, (%rsp)                                #15.1
        vldmxcsr  (%rsp)                                        #15.1
        call      malloc                                        #16.29
                                # LOE rax
..B1.107:                       # Preds ..B1.108
        movq      %rax, %r14                                    #16.29
                                # LOE r14
..B1.2:                         # Preds ..B1.107

###     int    *i_b = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %edi                              #17.29
        call      malloc                                        #17.29
                                # LOE rax r14
..B1.109:                       # Preds ..B1.2
        movq      %rax, %r13                                    #17.29
                                # LOE r13 r14
..B1.3:                         # Preds ..B1.109

###     float  *f_a = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %edi                              #18.29
        call      malloc                                        #18.29
                                # LOE rax r13 r14
..B1.110:                       # Preds ..B1.3
        movq      %rax, %rbx                                    #18.29
                                # LOE rbx r13 r14
..B1.4:                         # Preds ..B1.110

###     float  *f_b = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %edi                              #19.29
        call      malloc                                        #19.29
                                # LOE rax rbx r13 r14
..B1.111:                       # Preds ..B1.4
        movq      %rax, %r12                                    #19.29
                                # LOE rbx r12 r13 r14
..B1.5:                         # Preds ..B1.111

###     double *d_a = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %edi                              #20.29
        call      malloc                                        #20.29
                                # LOE rax rbx r12 r13 r14
..B1.112:                       # Preds ..B1.5
        movq      %rax, %r15                                    #20.29
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.112

###     double *d_b = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %edi                              #21.29
        call      malloc                                        #21.29
                                # LOE rax rbx r12 r13 r14 r15
..B1.113:                       # Preds ..B1.6
        movq      %rax, 120(%rsp)                               #21.29
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.113

###     cout << "init ... " ;

        movl      $_ZSt4cout, %edi                              #22.10
        movl      $.L_2__STRING.0, %esi                         #22.10
..___tag_value_main.11:                                         #22.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #22.10
..___tag_value_main.12:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7

###     for(int i = 0; i < TIMES; i++)

        xorl      %eax, %eax                                    #23.15
        movq      %r15, (%rsp)                                  #23.15
        movq      %r12, 8(%rsp)                                 #23.15
        movq      %rax, %r12                                    #23.15
        movq      120(%rsp), %r15                               #23.15
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.15 ..B1.8

###     {
###         i_a[i] = rand();

        call      rand                                          #25.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.10:                        # Preds ..B1.9
        movl      %eax, (%r14,%r12,4)                           #25.9

###         i_b[i] = rand();

        call      rand                                          #26.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.11:                        # Preds ..B1.10
        movl      %eax, (%r13,%r12,4)                           #26.9

###         f_a[i] = rand();

        call      rand                                          #27.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.12:                        # Preds ..B1.11
        vxorps    %xmm0, %xmm0, %xmm0                           #27.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #27.18
        vmovss    %xmm0, (%rbx,%r12,4)                          #27.9

###         f_b[i] = rand();

        call      rand                                          #28.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.13:                        # Preds ..B1.12
        vxorps    %xmm0, %xmm0, %xmm0                           #28.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #28.18
        movq      8(%rsp), %rdx                                 #28.9
        vmovss    %xmm0, (%rdx,%r12,4)                          #28.9

###         d_a[i] = rand();

        call      rand                                          #29.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.14:                        # Preds ..B1.13
        vxorpd    %xmm0, %xmm0, %xmm0                           #29.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #29.18
        movq      (%rsp), %rdx                                  #29.9
        vmovsd    %xmm0, (%rdx,%r12,8)                          #29.9

###         d_b[i] = rand();

        call      rand                                          #30.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.15:                        # Preds ..B1.14
        vxorpd    %xmm0, %xmm0, %xmm0                           #30.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #30.18
        vmovsd    %xmm0, (%r15,%r12,8)                          #30.9
        incq      %r12                                          #23.31
        cmpq      $100000000, %r12                              #23.24
        jl        ..B1.9        # Prob 100%                     #23.24
                                # LOE rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15

###     }
###     cout << "done" << endl;

        movl      $.L_2__STRING.1, %esi                         #32.10
        movl      $_ZSt4cout, %edi                              #32.10
        movq      (%rsp), %r15                                  #
        movq      8(%rsp), %r12                                 #
..___tag_value_main.13:                                         #32.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #32.10
..___tag_value_main.14:                                         #
                                # LOE rax rbx r12 r13 r14 r15 r12d r15d r12b r15b
..B1.17:                        # Preds ..B1.16
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #32.20
        movq      %rax, %rdi                                    #32.20
..___tag_value_main.15:                                         #32.20
        call      _ZNSolsEPFRSoS_E                              #32.20
..___tag_value_main.16:                                         #
                                # LOE rbx r12 r13 r14 r15 r12d r15d r12b r15b
..B1.18:                        # Preds ..B1.17
        xorl      %esi, %esi                                    #10.5
        lea       (%rsp), %rdi                                  #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15 r12d r15d r12b r15b
..B1.19:                        # Preds ..B1.18
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 8(%rsp), %xmm0, %xmm0                        #11.41
        vcvtsi2sdq (%rsp), %xmm1, %xmm1                         #11.25

### 
###     int c;
###     double tic, toc;
###     tic = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #36.5

###     for (int i = 0; i < TIMES; i++)

        movq      %r13, %rdx                                    #37.5
        vmovsd    %xmm1, 48(%rsp)                               #36.5
        andq      $31, %rdx                                     #37.5
        testl     %edx, %edx                                    #37.5
        je        ..B1.22       # Prob 50%                      #37.5
                                # LOE rbx r12 r13 r14 r15 edx r12d r15d r12b r15b
..B1.20:                        # Preds ..B1.19
        testb     $3, %dl                                       #37.5
        jne       ..B1.90       # Prob 10%                      #37.5
                                # LOE rbx r12 r13 r14 r15 edx r12d r15d r12b r15b
..B1.21:                        # Preds ..B1.20
        negl      %edx                                          #37.5
        addl      $32, %edx                                     #37.5
        shrl      $2, %edx                                      #37.5
                                # LOE rbx r12 r13 r14 r15 edx r12d r15d r12b r15b
..B1.22:                        # Preds ..B1.21 ..B1.19
        movl      %edx, %esi                                    #37.5
        negl      %esi                                          #37.5
        andl      $31, %esi                                     #37.5
        negl      %esi                                          #37.5
        addl      $100000000, %esi                              #37.5
        movl      %edx, %edx                                    #37.5
        movl      %esi, %eax                                    #37.5
                                # LOE rax rdx rbx r12 r13 r14 r15 esi
..B1.23:                        # Preds ..B1.23 ..B1.22

###     {
###         if(i_a[i] > i_b[i])

        vmovdqu   96(%r14,%rdx,4), %ymm1                        #39.12
        vmovdqu   96(%r13,%rdx,4), %ymm0                        #39.21
        addq      $32, %rdx                                     #37.5
        cmpq      %rax, %rdx                                    #37.5
        jb        ..B1.23       # Prob 50%                      #37.5
                                # LOE rax rdx rbx r12 r13 r14 r15 esi ymm0 ymm1
..B1.24:                        # Preds ..B1.23
        vpcmpgtd  %ymm0, %ymm1, %ymm1                           #39.21

###             c = 1;

        vpxor     %ymm0, %ymm0, %ymm0                           #40.17
        vpsubd    %ymm1, %ymm0, %ymm2                           #40.17
        vextracti128 $1, %ymm2, %xmm3                           #34.5
        vpsrldq   $12, %xmm3, %xmm4                             #34.5
        vmovd     %xmm4, 40(%rsp)                               #34.5
                                # LOE rbx r12 r13 r14 r15 esi
..B1.25:                        # Preds ..B1.24 ..B1.90
        lea       1(%rsi), %eax                                 #37.5
        cmpl      $100000000, %eax                              #37.5
        ja        ..B1.31       # Prob 50%                      #37.5
                                # LOE rbx r12 r13 r14 r15 esi
..B1.26:                        # Preds ..B1.25
        movl      %esi, %ecx                                    #37.5
        negl      %ecx                                          #37.5
        addl      $100000000, %ecx                              #37.5
        cmpl      $8, %ecx                                      #37.5
        jb        ..B1.104      # Prob 10%                      #37.5
                                # LOE rbx r12 r13 r14 r15 ecx esi
..B1.27:                        # Preds ..B1.26
        movl      %ecx, %eax                                    #37.5
        xorl      %r8d, %r8d                                    #37.5
        andl      $-8, %eax                                     #37.5
        xorl      %edx, %edx                                    #37.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi r8d
..B1.28:                        # Preds ..B1.28 ..B1.27
        lea       (%rsi,%r8), %r9d                              #39.12
        addl      $8, %r8d                                      #37.5
        movslq    %r9d, %r9                                     #39.12
        vmovdqu   (%r14,%r9,4), %ymm1                           #39.12
        vmovdqu   (%r13,%r9,4), %ymm0                           #39.21
        cmpl      %eax, %r8d                                    #37.5
        jb        ..B1.28       # Prob 50%                      #37.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi r8d ymm0 ymm1
..B1.29:                        # Preds ..B1.28
        vpcmpgtd  %ymm0, %ymm1, %ymm1                           #39.21
        vpxor     %ymm0, %ymm0, %ymm0                           #40.17
        vpsubd    %ymm1, %ymm0, %ymm2                           #40.17
        vextracti128 $1, %ymm2, %xmm3                           #34.5
        vpsrldq   $12, %xmm3, %xmm4                             #34.5
        vmovd     %xmm4, 40(%rsp)                               #34.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi
..B1.30:                        # Preds ..B1.29 ..B1.104
        cmpl      %ecx, %eax                                    #37.5
        jb        ..B1.101      # Prob 0%                       #37.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi
..B1.31:                        # Preds ..B1.103 ..B1.30 ..B1.25
        xorl      %esi, %esi                                    #10.5
        lea       16(%rsp), %rdi                                #10.5
        vzeroupper                                              #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.31
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 24(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 16(%rsp), %xmm1, %xmm1                       #11.25

###         else
###             c = 0;
###     }
###     toc = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #44.5

###     cout << "int compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.2, %esi                         #45.10
        vmovsd    %xmm1, 32(%rsp)                               #44.5
        movl      $_ZSt4cout, %edi                              #45.10
..___tag_value_main.17:                                         #45.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.10
..___tag_value_main.18:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32
        vmovsd    32(%rsp), %xmm0                               #45.29
        movq      %rax, %rdi                                    #45.29
        vsubsd    48(%rsp), %xmm0, %xmm0                        #45.29
..___tag_value_main.19:                                         #45.29
        call      _ZNSolsEd                                     #45.29
..___tag_value_main.20:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
        movl      $.L_2__STRING.3, %esi                         #45.42
        movq      %rax, %rdi                                    #45.42
..___tag_value_main.21:                                         #45.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.42
..___tag_value_main.22:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
        movq      %rax, %rdi                                    #45.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #45.50
..___tag_value_main.23:                                         #45.50
        call      _ZNSolsEPFRSoS_E                              #45.50
..___tag_value_main.24:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35

###     cout << "int result check: " << c << endl;

        movl      $.L_2__STRING.4, %esi                         #46.10
        movl      $_ZSt4cout, %edi                              #46.10
..___tag_value_main.25:                                         #46.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #46.10
..___tag_value_main.26:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
        movq      %rax, %rdi                                    #46.34
        movl      40(%rsp), %esi                                #46.34
..___tag_value_main.27:                                         #46.34
        call      _ZNSolsEi                                     #46.34
..___tag_value_main.28:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.37
        movq      %rax, %rdi                                    #46.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #46.39
..___tag_value_main.29:                                         #46.39
        call      _ZNSolsEPFRSoS_E                              #46.39
..___tag_value_main.30:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.38

### 
###     srand(1);

        xorl      %edi, %edi                                    #48.5
        incl      %edi                                          #48.5
        call      srand                                         #48.5
                                # LOE rbx r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
        xorl      %esi, %esi                                    #10.5
        lea       32(%rsp), %rdi                                #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.40
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 40(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 32(%rsp), %xmm1, %xmm1                       #11.25

###     int z;
###     tic = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #50.5

###     for (int i = 0; i < TIMES; i++)

        movq      %r12, %rcx                                    #51.5
        vmovsd    %xmm1, 80(%rsp)                               #50.5
        andq      $31, %rcx                                     #51.5
        testl     %ecx, %ecx                                    #51.5
        je        ..B1.44       # Prob 50%                      #51.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.42:                        # Preds ..B1.41
        testb     $3, %cl                                       #51.5
        jne       ..B1.91       # Prob 10%                      #51.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.43:                        # Preds ..B1.42
        negl      %ecx                                          #51.5
        addl      $32, %ecx                                     #51.5
        shrl      $2, %ecx                                      #51.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.44:                        # Preds ..B1.43 ..B1.41
        movl      %ecx, %eax                                    #51.5
        negl      %eax                                          #51.5
        andl      $31, %eax                                     #51.5
        negl      %eax                                          #51.5
        addl      $100000000, %eax                              #51.5
        movl      %ecx, %ecx                                    #51.5
        movl      %eax, %edx                                    #51.5
                                # LOE rdx rcx rbx r12 r13 r14 r15 eax
..B1.45:                        # Preds ..B1.45 ..B1.44

###     {
###         if(f_a[i] > f_b[i])

        vmovups   96(%rbx,%rcx,4), %ymm0                        #53.12
        vcmpgtps  96(%r12,%rcx,4), %ymm0, %ymm0                 #53.21
        addq      $32, %rcx                                     #51.5
        cmpq      %rdx, %rcx                                    #51.5
        jb        ..B1.45       # Prob 50%                      #51.5
                                # LOE rdx rcx rbx r12 r13 r14 r15 eax ymm0
..B1.46:                        # Preds ..B1.45

###             z = 1;

        vpxor     %ymm1, %ymm1, %ymm1                           #54.17
        vpsubd    %ymm0, %ymm1, %ymm0                           #54.17
        vextracti128 $1, %ymm0, %xmm2                           #49.5
        vpsrldq   $12, %xmm2, %xmm3                             #49.5
        vmovd     %xmm3, 64(%rsp)                               #49.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.47:                        # Preds ..B1.46 ..B1.91
        lea       1(%rax), %edx                                 #51.5
        cmpl      $100000000, %edx                              #51.5
        ja        ..B1.53       # Prob 50%                      #51.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.48:                        # Preds ..B1.47
        movl      %eax, %esi                                    #51.5
        negl      %esi                                          #51.5
        addl      $100000000, %esi                              #51.5
        cmpl      $8, %esi                                      #51.5
        jb        ..B1.100      # Prob 10%                      #51.5
                                # LOE rbx r12 r13 r14 r15 eax esi
..B1.49:                        # Preds ..B1.48
        movl      %esi, %ecx                                    #51.5
        xorl      %edx, %edx                                    #51.5
        andl      $-8, %ecx                                     #51.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi
..B1.50:                        # Preds ..B1.50 ..B1.49
        lea       (%rax,%rdx), %r8d                             #53.12
        addl      $8, %edx                                      #51.5
        movslq    %r8d, %r8                                     #53.12
        vmovups   (%rbx,%r8,4), %ymm0                           #53.12
        vcmpgtps  (%r12,%r8,4), %ymm0, %ymm0                    #53.21
        cmpl      %ecx, %edx                                    #51.5
        jb        ..B1.50       # Prob 50%                      #51.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi ymm0
..B1.51:                        # Preds ..B1.50
        vpxor     %ymm1, %ymm1, %ymm1                           #54.17
        vpsubd    %ymm0, %ymm1, %ymm0                           #54.17
        vextracti128 $1, %ymm0, %xmm2                           #49.5
        vpsrldq   $12, %xmm2, %xmm3                             #49.5
        vmovd     %xmm3, 64(%rsp)                               #49.5
                                # LOE rbx r12 r13 r14 r15 eax ecx esi
..B1.52:                        # Preds ..B1.51 ..B1.100
        cmpl      %esi, %ecx                                    #51.5
        jb        ..B1.98       # Prob 0%                       #51.5
                                # LOE rbx r12 r13 r14 r15 eax ecx esi
..B1.53:                        # Preds ..B1.99 ..B1.52 ..B1.47
        xorl      %esi, %esi                                    #10.5
        lea       48(%rsp), %rdi                                #10.5
        vzeroupper                                              #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.54:                        # Preds ..B1.53
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 56(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 48(%rsp), %xmm1, %xmm1                       #11.25

###         else
###             z = 0;
###     }
###     toc = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #58.5

###     cout << "flt compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.5, %esi                         #59.10
        vmovsd    %xmm1, 72(%rsp)                               #58.5
        movl      $_ZSt4cout, %edi                              #59.10
..___tag_value_main.31:                                         #59.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.10
..___tag_value_main.32:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.55:                        # Preds ..B1.54
        vmovsd    72(%rsp), %xmm0                               #59.29
        movq      %rax, %rdi                                    #59.29
        vsubsd    80(%rsp), %xmm0, %xmm0                        #59.29
..___tag_value_main.33:                                         #59.29
        call      _ZNSolsEd                                     #59.29
..___tag_value_main.34:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.56:                        # Preds ..B1.55
        movq      %rax, %rdi                                    #59.42
        movl      $.L_2__STRING.3, %esi                         #59.42
..___tag_value_main.35:                                         #59.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.42
..___tag_value_main.36:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.57:                        # Preds ..B1.56
        movq      %rax, %rdi                                    #59.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #59.50
..___tag_value_main.37:                                         #59.50
        call      _ZNSolsEPFRSoS_E                              #59.50
..___tag_value_main.38:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.58:                        # Preds ..B1.57

###     cout << "flt result check: " << z << endl;

        movl      $.L_2__STRING.6, %esi                         #60.10
        movl      $_ZSt4cout, %edi                              #60.10
..___tag_value_main.39:                                         #60.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #60.10
..___tag_value_main.40:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.59:                        # Preds ..B1.58
        movq      %rax, %rdi                                    #60.34
        movl      64(%rsp), %esi                                #60.34
..___tag_value_main.41:                                         #60.34
        call      _ZNSolsEi                                     #60.34
..___tag_value_main.42:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.60:                        # Preds ..B1.59
        movq      %rax, %rdi                                    #60.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #60.39
..___tag_value_main.43:                                         #60.39
        call      _ZNSolsEPFRSoS_E                              #60.39
..___tag_value_main.44:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.61:                        # Preds ..B1.60

### 
###     srand(1);

        xorl      %edi, %edi                                    #62.5
        incl      %edi                                          #62.5
        call      srand                                         #62.5
                                # LOE rbx r12 r13 r14 r15
..B1.62:                        # Preds ..B1.61
        xorl      %esi, %esi                                    #10.5
        lea       88(%rsp), %rdi                                #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.63:                        # Preds ..B1.62
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 96(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 88(%rsp), %xmm1, %xmm1                       #11.25

###     int gamma;
###     tic = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #64.5
        vmovsd    %xmm1, 64(%rsp)                               #64.5

###     for (int i = 0; i < TIMES; i++)

        movq      120(%rsp), %rdx                               #65.5
        andq      $31, %rdx                                     #65.5
        testl     %edx, %edx                                    #65.5
        je        ..B1.66       # Prob 50%                      #65.5
                                # LOE rbx r12 r13 r14 r15 edx
..B1.64:                        # Preds ..B1.63
        testb     $7, %dl                                       #65.5
        jne       ..B1.92       # Prob 10%                      #65.5
                                # LOE rbx r12 r13 r14 r15 edx
..B1.65:                        # Preds ..B1.64
        negl      %edx                                          #65.5
        addl      $32, %edx                                     #65.5
        shrl      $3, %edx                                      #65.5
                                # LOE rbx r12 r13 r14 r15 edx
..B1.66:                        # Preds ..B1.65 ..B1.63
        movl      %edx, %ecx                                    #65.5
        negl      %ecx                                          #65.5
        andl      $15, %ecx                                     #65.5
        negl      %ecx                                          #65.5
        addl      $100000000, %ecx                              #65.5
        movl      %edx, %edx                                    #65.5

###     {
###         if(d_a[i] > d_b[i])

        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm2             #67.21
        movl      %ecx, %eax                                    #65.5
        movq      120(%rsp), %rsi                               #65.5
                                # LOE rax rdx rbx rsi r12 r13 r14 r15 ecx ymm2
..B1.67:                        # Preds ..B1.67 ..B1.66
        vmovupd   64(%r15,%rdx,8), %ymm1                        #67.12
        vmovupd   96(%r15,%rdx,8), %ymm0                        #67.12
        vcmpgtpd  64(%rsi,%rdx,8), %ymm1, %ymm1                 #67.21
        vcmpgtpd  96(%rsi,%rdx,8), %ymm0, %ymm0                 #67.21
        addq      $16, %rdx                                     #65.5
        cmpq      %rax, %rdx                                    #65.5
        jb        ..B1.67       # Prob 50%                      #65.5
                                # LOE rax rdx rbx rsi r12 r13 r14 r15 ecx ymm0 ymm1 ymm2
..B1.68:                        # Preds ..B1.67
        vpermd    %ymm1, %ymm2, %ymm1                           #67.21
        vpermd    %ymm0, %ymm2, %ymm0                           #67.21

###             gamma = 1;

        vpxor     %ymm2, %ymm2, %ymm2                           #68.21
        vinserti128 $1, %xmm0, %ymm1, %ymm3                     #67.21
        vpsubd    %ymm3, %ymm2, %ymm4                           #68.21
        vextracti128 $1, %ymm4, %xmm5                           #63.5
        vpsrldq   $12, %xmm5, %xmm6                             #63.5
        vmovd     %xmm6, 72(%rsp)                               #63.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.69:                        # Preds ..B1.68 ..B1.92
        lea       1(%rcx), %eax                                 #65.5
        cmpl      $100000000, %eax                              #65.5
        ja        ..B1.75       # Prob 50%                      #65.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.70:                        # Preds ..B1.69
        movl      %ecx, %eax                                    #65.5
        negl      %eax                                          #65.5
        addl      $100000000, %eax                              #65.5
        cmpl      $4, %eax                                      #65.5
        jb        ..B1.96       # Prob 10%                      #65.5
                                # LOE rbx r12 r13 r14 r15 eax ecx
..B1.71:                        # Preds ..B1.70
        movl      %eax, %edx                                    #65.5
        xorl      %esi, %esi                                    #65.5
        movq      120(%rsp), %r9                                #65.5
        andl      $-4, %edx                                     #65.5
                                # LOE rbx r9 r12 r13 r14 r15 eax edx ecx esi
..B1.72:                        # Preds ..B1.72 ..B1.71
        lea       (%rcx,%rsi), %r8d                             #67.12
        addl      $4, %esi                                      #65.5
        movslq    %r8d, %r8                                     #67.12
        vmovupd   (%r15,%r8,8), %ymm0                           #67.12
        vcmpgtpd  (%r9,%r8,8), %ymm0, %ymm0                     #67.21
        cmpl      %edx, %esi                                    #65.5
        jb        ..B1.72       # Prob 50%                      #65.5
                                # LOE rbx r9 r12 r13 r14 r15 eax edx ecx esi ymm0
..B1.73:                        # Preds ..B1.72
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm1             #67.21
        vpxor     %xmm2, %xmm2, %xmm2                           #68.21
        vpermd    %ymm0, %ymm1, %ymm0                           #67.21
        vpsubd    %xmm0, %xmm2, %xmm3                           #68.21
        vpsrldq   $12, %xmm3, %xmm4                             #63.5
        vmovd     %xmm4, 72(%rsp)                               #63.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx
..B1.74:                        # Preds ..B1.73 ..B1.96
        cmpl      %eax, %edx                                    #65.5
        jb        ..B1.93       # Prob 0%                       #65.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx
..B1.75:                        # Preds ..B1.95 ..B1.74 ..B1.69
        xorl      %esi, %esi                                    #10.5
        lea       104(%rsp), %rdi                               #10.5
        vzeroupper                                              #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.76:                        # Preds ..B1.75
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.41
        vxorpd    %xmm2, %xmm2, %xmm2                           #11.25
        vcvtsi2sdq 112(%rsp), %xmm1, %xmm1                      #11.41
        vcvtsi2sdq 104(%rsp), %xmm2, %xmm2                      #11.25

###         else
###             gamma = 0;
###     }
###     toc = dtime();

        vmovsd    .L_2il0floatpacket.1(%rip), %xmm0             #72.5

###     cout << "dbl compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.7, %esi                         #73.10
        vfmadd213sd %xmm2, %xmm1, %xmm0                         #72.5
        movl      $_ZSt4cout, %edi                              #73.10
        vmovsd    %xmm0, 80(%rsp)                               #72.5
..___tag_value_main.45:                                         #73.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.10
..___tag_value_main.46:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.77:                        # Preds ..B1.76
        vmovsd    80(%rsp), %xmm0                               #73.29
        movq      %rax, %rdi                                    #73.29
        vsubsd    64(%rsp), %xmm0, %xmm0                        #73.29
..___tag_value_main.47:                                         #73.29
        call      _ZNSolsEd                                     #73.29
..___tag_value_main.48:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.78:                        # Preds ..B1.77
        movq      %rax, %rdi                                    #73.42
        movl      $.L_2__STRING.3, %esi                         #73.42
..___tag_value_main.49:                                         #73.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.42
..___tag_value_main.50:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.79:                        # Preds ..B1.78
        movq      %rax, %rdi                                    #73.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #73.50
..___tag_value_main.51:                                         #73.50
        call      _ZNSolsEPFRSoS_E                              #73.50
..___tag_value_main.52:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.80:                        # Preds ..B1.79

###     cout << "dbl result check: " << gamma << endl;

        movl      $.L_2__STRING.8, %esi                         #74.10
        movl      $_ZSt4cout, %edi                              #74.10
..___tag_value_main.53:                                         #74.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #74.10
..___tag_value_main.54:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.81:                        # Preds ..B1.80
        movq      %rax, %rdi                                    #74.34
        movl      72(%rsp), %esi                                #74.34
..___tag_value_main.55:                                         #74.34
        call      _ZNSolsEi                                     #74.34
..___tag_value_main.56:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.82:                        # Preds ..B1.81
        movq      %rax, %rdi                                    #74.43
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #74.43
..___tag_value_main.57:                                         #74.43
        call      _ZNSolsEPFRSoS_E                              #74.43
..___tag_value_main.58:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.83:                        # Preds ..B1.82

### 
###     free(i_a);

        movq      %r14, %rdi                                    #76.5
        call      free                                          #76.5
                                # LOE rbx r12 r13 r15
..B1.84:                        # Preds ..B1.83

###     free(i_b);

        movq      %r13, %rdi                                    #77.5
        call      free                                          #77.5
                                # LOE rbx r12 r15
..B1.85:                        # Preds ..B1.84

###     free(f_a);

        movq      %rbx, %rdi                                    #78.5
        call      free                                          #78.5
                                # LOE r12 r15
..B1.86:                        # Preds ..B1.85

###     free(f_b);

        movq      %r12, %rdi                                    #79.5
        call      free                                          #79.5
                                # LOE r15
..B1.87:                        # Preds ..B1.86

###     free(d_a);

        movq      %r15, %rdi                                    #80.5
        call      free                                          #80.5
                                # LOE
..B1.88:                        # Preds ..B1.87

###     free(d_b);

        movq      120(%rsp), %rdi                               #81.5
        call      free                                          #81.5
                                # LOE
..B1.89:                        # Preds ..B1.88

### }

        xorl      %eax, %eax                                    #82.1
        addq      $216, %rsp                                    #82.1
..___tag_value_main.59:                                         #82.1
        popq      %rbx                                          #82.1
..___tag_value_main.60:                                         #82.1
        popq      %r15                                          #82.1
..___tag_value_main.61:                                         #82.1
        popq      %r14                                          #82.1
..___tag_value_main.62:                                         #82.1
        popq      %r13                                          #82.1
..___tag_value_main.63:                                         #82.1
        popq      %r12                                          #82.1
        movq      %rbp, %rsp                                    #82.1
        popq      %rbp                                          #82.1
..___tag_value_main.64:                                         #
        ret                                                     #82.1
..___tag_value_main.66:                                         #
                                # LOE
..B1.90:                        # Preds ..B1.20                 # Infreq
        movl      %eax, 40(%rsp)                                #37.5
        xorl      %esi, %esi                                    #37.5
        jmp       ..B1.25       # Prob 100%                     #37.5
                                # LOE rbx r12 r13 r14 r15 esi
..B1.91:                        # Preds ..B1.42                 # Infreq
        movl      %edx, 64(%rsp)                                #51.5
        xorl      %eax, %eax                                    #51.5
        jmp       ..B1.47       # Prob 100%                     #51.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.92:                        # Preds ..B1.64                 # Infreq
        movl      %eax, 72(%rsp)                                #65.5
        xorl      %ecx, %ecx                                    #65.5
        jmp       ..B1.69       # Prob 100%                     #65.5
                                # LOE rbx r12 r13 r14 r15 ecx
..B1.93:                        # Preds ..B1.74                 # Infreq
        movq      120(%rsp), %r8                                #
                                # LOE rbx r8 r12 r13 r14 r15 eax edx ecx
..B1.94:                        # Preds ..B1.94 ..B1.93         # Infreq
        lea       (%rcx,%rdx), %esi                             #67.12
        incl      %edx                                          #65.5
        movslq    %esi, %rsi                                    #67.21
        vmovsd    (%r15,%rsi,8), %xmm0                          #67.12
        vcmpgtsd  (%r8,%rsi,8), %xmm0, %xmm1                    #70.13
        vmovd     %xmm1, %esi                                   #70.13
        negl      %esi                                          #70.13
        cmpl      %eax, %edx                                    #65.5
        jb        ..B1.94       # Prob 50%                      #65.5
                                # LOE rbx r8 r12 r13 r14 r15 eax edx ecx esi
..B1.95:                        # Preds ..B1.94                 # Infreq
        movl      %esi, 72(%rsp)                                #
        jmp       ..B1.75       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15
..B1.96:                        # Preds ..B1.70                 # Infreq
        xorl      %edx, %edx                                    #65.5
        jmp       ..B1.74       # Prob 100%                     #65.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx
..B1.98:                        # Preds ..B1.52 ..B1.98         # Infreq
        lea       (%rax,%rcx), %edx                             #53.12
        incl      %ecx                                          #51.5
        movslq    %edx, %rdx                                    #53.21
        vmovss    (%rbx,%rdx,4), %xmm0                          #53.12
        vcmpgtss  (%r12,%rdx,4), %xmm0, %xmm1                   #56.13
        vmovd     %xmm1, %edx                                   #56.13
        negl      %edx                                          #56.13
        cmpl      %esi, %ecx                                    #51.5
        jb        ..B1.98       # Prob 50%                      #51.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi
..B1.99:                        # Preds ..B1.98                 # Infreq
        movl      %edx, 64(%rsp)                                #
        jmp       ..B1.53       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15
..B1.100:                       # Preds ..B1.48                 # Infreq
        xorl      %ecx, %ecx                                    #51.5
        jmp       ..B1.52       # Prob 100%                     #51.5
                                # LOE rbx r12 r13 r14 r15 eax ecx esi
..B1.101:                       # Preds ..B1.30                 # Infreq
        xorl      %r8d, %r8d                                    #42.13
        incl      %r8d                                          #42.13
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi r8d
..B1.102:                       # Preds ..B1.102 ..B1.101       # Infreq
        lea       (%rsi,%rax), %r9d                             #39.12
        incl      %eax                                          #37.5
        movslq    %r9d, %r9                                     #39.21
        movl      (%r14,%r9,4), %r10d                           #39.12
        cmpl      (%r13,%r9,4), %r10d                           #42.13
        movl      %edx, %r9d                                    #42.13
        cmovg     %r8d, %r9d                                    #42.13
        cmpl      %ecx, %eax                                    #37.5
        jb        ..B1.102      # Prob 50%                      #37.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi r8d r9d
..B1.103:                       # Preds ..B1.102                # Infreq
        movl      %r9d, 40(%rsp)                                #
        jmp       ..B1.31       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15
..B1.104:                       # Preds ..B1.26                 # Infreq
        xorl      %eax, %eax                                    #37.5
        xorl      %edx, %edx                                    #37.5
        jmp       ..B1.30       # Prob 100%                     #37.5
        .align    16,0x90
..___tag_value_main.73:                                         #
                                # LOE rbx r12 r13 r14 r15 eax edx ecx esi
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0

###       { return __builtin_strlen(__s); }

..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.74:             #259.7
..L75:
                                                         #259.7
        pushq     %rsi                                          #259.7
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.76:             #
        movq      %rdi, %rdx                                    #259.16
        movq      %rdx, %rcx                                    #259.16
        andq      $-16, %rdx                                    #259.16
        vpxor     %xmm0, %xmm0, %xmm0                           #259.16
        vpcmpeqb  (%rdx), %xmm0, %xmm0                          #259.16
        vpmovmskb %xmm0, %eax                                   #259.16
        andl      $15, %ecx                                     #259.16
        shrl      %cl, %eax                                     #259.16
        bsf       %eax, %eax                                    #259.16
        jne       ..L77         # Prob 60%                      #259.16
        movq      %rdx, %rax                                    #259.16
        addq      %rcx, %rdx                                    #259.16
        call      __intel_sse4_strlen                           #259.16
..L77:                                                          #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
        popq      %rcx                                          #259.16
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.78:             #
        ret                                                     #259.16
        .align    16,0x90
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.79:             #
                                # LOE
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.text
# -- Begin  _Z5dtimev
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z5dtimev
_Z5dtimev:
..B3.1:                         # Preds ..B3.0

### {

..___tag_value__Z5dtimev.80:                                    #7.1
..L81:
                                                         #7.1
        subq      $24, %rsp                                     #7.1
..___tag_value__Z5dtimev.82:                                    #

###     double tseconds = 0.0;
###     struct timeval mytime;
###     gettimeofday(&mytime, (struct timezone*)0);

        xorl      %esi, %esi                                    #10.5
        lea       (%rsp), %rdi                                  #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1

###     tseconds = (double)(mytime.tv_sec + mytime.tv_usec*1.0e-6);

        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 8(%rsp), %xmm0, %xmm0                        #11.41
        vcvtsi2sdq (%rsp), %xmm1, %xmm1                         #11.25

###     return (tseconds);

        vfmadd132sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #12.12
        addq      $24, %rsp                                     #12.12
..___tag_value__Z5dtimev.83:                                    #
        ret                                                     #12.12
        .align    16,0x90
..___tag_value__Z5dtimev.84:                                    #
                                # LOE
# mark_end;
	.type	_Z5dtimev,@function
	.size	_Z5dtimev,.-_Z5dtimev
	.data
# -- End  _Z5dtimev
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
__sti__$E:
..B4.1:                         # Preds ..B4.0
..___tag_value___sti__$E.85:                                    #
..L86:
                                                         #
        pushq     %rsi                                          #
..___tag_value___sti__$E.87:                                    #

###   static ios_base::Init __ioinit;

        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %edi #74.25
..___tag_value___sti__$E.88:                                    #74.25
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.89:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %esi #74.25
        movl      $__dso_handle, %edx                           #74.25
        addq      $8, %rsp                                      #74.25
..___tag_value___sti__$E.90:                                    #
        jmp       __cxa_atexit                                  #74.25
        .align    16,0x90
..___tag_value___sti__$E.91:                                    #
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE:
	.type	_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE,@object
	.size	_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.2:
	.long	0x00000000,0x00000002,0x00000004,0x00000006,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,32
	.align 8
.L_2il0floatpacket.1:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
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
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
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
	.4byte 0x0000010c
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.73-..___tag_value_main.1
	.2byte 0x0400
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffd80d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xfffff80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xfff00d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xe80d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffffe0
	.2byte 0x0422
	.4byte ..___tag_value_main.59-..___tag_value_main.6
	.2byte 0x04c3
	.4byte ..___tag_value_main.60-..___tag_value_main.59
	.2byte 0x04cf
	.4byte ..___tag_value_main.61-..___tag_value_main.60
	.2byte 0x04ce
	.4byte ..___tag_value_main.62-..___tag_value_main.61
	.2byte 0x04cd
	.4byte ..___tag_value_main.63-..___tag_value_main.62
	.2byte 0x04cc
	.4byte ..___tag_value_main.64-..___tag_value_main.63
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.66-..___tag_value_main.64
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.8byte 0x00000000000022ff
	.4byte 0x00000024
	.4byte 0x00000134
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.74
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.79-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.74
	.2byte 0x0400
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.76-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.74
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.78-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.76
	.2byte 0x080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x0000015c
	.8byte ..___tag_value__Z5dtimev.80
	.8byte ..___tag_value__Z5dtimev.84-..___tag_value__Z5dtimev.80
	.2byte 0x0400
	.4byte ..___tag_value__Z5dtimev.82-..___tag_value__Z5dtimev.80
	.2byte 0x200e
	.byte 0x04
	.4byte ..___tag_value__Z5dtimev.83-..___tag_value__Z5dtimev.82
	.2byte 0x080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x00000184
	.8byte ..___tag_value___sti__$E.85
	.8byte ..___tag_value___sti__$E.91-..___tag_value___sti__$E.85
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.87-..___tag_value___sti__$E.85
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.90-..___tag_value___sti__$E.87
	.2byte 0x080e
	.byte 0x00
# End
