# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 20150";
# mark_description "407";
# mark_description "-c -o main.s -O2 -qopt-report2 -xCORE-AVX2 -std=c++11 -no-vec -S -fsource-asm";
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
..B1.63:                        # Preds ..B1.1
        vstmxcsr  (%rsp)                                        #15.1

###     int    *i_a = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %edi                              #16.29
        orl       $32832, (%rsp)                                #15.1
        vldmxcsr  (%rsp)                                        #15.1
        call      malloc                                        #16.29
                                # LOE rax
..B1.62:                        # Preds ..B1.63
        movq      %rax, %r12                                    #16.29
                                # LOE r12
..B1.2:                         # Preds ..B1.62

###     int    *i_b = (int    *)malloc(sizeof(int   ) * TIMES);

        movl      $400000000, %edi                              #17.29
        call      malloc                                        #17.29
                                # LOE rax r12
..B1.64:                        # Preds ..B1.2
        movq      %rax, %r13                                    #17.29
                                # LOE r12 r13
..B1.3:                         # Preds ..B1.64

###     float  *f_a = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %edi                              #18.29
        call      malloc                                        #18.29
                                # LOE rax r12 r13
..B1.65:                        # Preds ..B1.3
        movq      %rax, %rbx                                    #18.29
                                # LOE rbx r12 r13
..B1.4:                         # Preds ..B1.65

###     float  *f_b = (float  *)malloc(sizeof(float ) * TIMES);

        movl      $400000000, %edi                              #19.29
        call      malloc                                        #19.29
                                # LOE rax rbx r12 r13
..B1.66:                        # Preds ..B1.4
        movq      %rax, %r15                                    #19.29
                                # LOE rbx r12 r13 r15
..B1.5:                         # Preds ..B1.66

###     double *d_a = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %edi                              #20.29
        call      malloc                                        #20.29
                                # LOE rax rbx r12 r13 r15
..B1.67:                        # Preds ..B1.5
        movq      %rax, 128(%rsp)                               #20.29
                                # LOE rbx r12 r13 r15
..B1.6:                         # Preds ..B1.67

###     double *d_b = (double *)malloc(sizeof(double) * TIMES);

        movl      $800000000, %edi                              #21.29
        call      malloc                                        #21.29
                                # LOE rax rbx r12 r13 r15
..B1.68:                        # Preds ..B1.6
        movq      %rax, %r14                                    #21.29
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.68

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
        movq      %rax, %r15                                    #23.15
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.15 ..B1.8

###     {
###         i_a[i] = rand();

        call      rand                                          #25.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.10:                        # Preds ..B1.9
        movl      %eax, (%r12,%r15,4)                           #25.9

###         i_b[i] = rand();

        call      rand                                          #26.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.11:                        # Preds ..B1.10
        movl      %eax, (%r13,%r15,4)                           #26.9

###         f_a[i] = rand();

        call      rand                                          #27.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.12:                        # Preds ..B1.11
        vxorps    %xmm0, %xmm0, %xmm0                           #27.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #27.18
        vmovss    %xmm0, (%rbx,%r15,4)                          #27.9

###         f_b[i] = rand();

        call      rand                                          #28.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.13:                        # Preds ..B1.12
        vxorps    %xmm0, %xmm0, %xmm0                           #28.18
        vcvtsi2ss %eax, %xmm0, %xmm0                            #28.18
        movq      (%rsp), %rdx                                  #28.9
        vmovss    %xmm0, (%rdx,%r15,4)                          #28.9

###         d_a[i] = rand();

        call      rand                                          #29.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.14:                        # Preds ..B1.13
        vxorpd    %xmm0, %xmm0, %xmm0                           #29.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #29.18
        movq      128(%rsp), %rdx                               #29.9
        vmovsd    %xmm0, (%rdx,%r15,8)                          #29.9

###         d_b[i] = rand();

        call      rand                                          #30.18
                                # LOE rbx r12 r13 r14 r15 eax
..B1.15:                        # Preds ..B1.14
        vxorpd    %xmm0, %xmm0, %xmm0                           #30.18
        vcvtsi2sd %eax, %xmm0, %xmm0                            #30.18
        vmovsd    %xmm0, (%r14,%r15,8)                          #30.9
        incq      %r15                                          #23.31
        cmpq      $100000000, %r15                              #23.24
        jl        ..B1.9        # Prob 100%                     #23.24
                                # LOE rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15

###     }
###     cout << "done" << endl;

        movl      $.L_2__STRING.1, %esi                         #32.10
        movl      $_ZSt4cout, %edi                              #32.10
        movq      (%rsp), %r15                                  #
..___tag_value_main.13:                                         #32.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #32.10
..___tag_value_main.14:                                         #
                                # LOE rax rbx r12 r13 r14 r15 r15d r15b
..B1.17:                        # Preds ..B1.16
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #32.20
        movq      %rax, %rdi                                    #32.20
..___tag_value_main.15:                                         #32.20
        call      _ZNSolsEPFRSoS_E                              #32.20
..___tag_value_main.16:                                         #
                                # LOE rbx r12 r13 r14 r15 r15d r15b
..B1.18:                        # Preds ..B1.17
        xorl      %esi, %esi                                    #10.5
        lea       (%rsp), %rdi                                  #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15 r15d r15b
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

        xorl      %eax, %eax                                    #37.5
        vmovsd    %xmm1, 56(%rsp)                               #36.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.20:                        # Preds ..B1.20 ..B1.19

###     {
###         if(i_a[i] > i_b[i])

        lea       (%rax,%rax), %edx                             #39.12
        incl      %eax                                          #37.5
        movl      4(%r12,%rdx,4), %ecx                          #39.12
        movl      4(%r13,%rdx,4), %edx                          #39.21
        cmpl      $50000000, %eax                               #37.5
        jb        ..B1.20       # Prob 50%                      #37.5
                                # LOE rbx r12 r13 r14 r15 eax edx ecx
..B1.21:                        # Preds ..B1.20
        xorl      %esi, %esi                                    #10.5
        lea       16(%rsp), %rdi                                #10.5
        movl      %edx, 24(%rdi)                                #
        movl      %ecx, 16(%rdi)                                #
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 24(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 16(%rsp), %xmm1, %xmm1                       #11.25

###             c = 1;
###         else
###             c = 0;
###     }
###     toc = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #44.5

###     cout << "int compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.2, %esi                         #45.10
        vmovsd    %xmm1, 48(%rsp)                               #44.5
        movl      $_ZSt4cout, %edi                              #45.10
..___tag_value_main.17:                                         #45.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.10
..___tag_value_main.18:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
        vmovsd    48(%rsp), %xmm0                               #45.29
        movq      %rax, %rdi                                    #45.29
        vsubsd    56(%rsp), %xmm0, %xmm0                        #45.29
..___tag_value_main.19:                                         #45.29
        call      _ZNSolsEd                                     #45.29
..___tag_value_main.20:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
        movl      $.L_2__STRING.3, %esi                         #45.42
        movq      %rax, %rdi                                    #45.42
..___tag_value_main.21:                                         #45.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #45.42
..___tag_value_main.22:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24
        movq      %rax, %rdi                                    #45.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #45.50
..___tag_value_main.23:                                         #45.50
        call      _ZNSolsEPFRSoS_E                              #45.50
..___tag_value_main.24:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25

###     cout << "int result check: " << c << endl;

        movl      $.L_2__STRING.4, %esi                         #46.10
        movl      $_ZSt4cout, %edi                              #46.10
..___tag_value_main.25:                                         #46.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #46.10
..___tag_value_main.26:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.79:                        # Preds ..B1.26
        movq      %rax, %rdi                                    #46.10
                                # LOE rbx rdi r12 r13 r14 r15
..B1.27:                        # Preds ..B1.79
        movl      40(%rsp), %eax                                #46.34
        xorl      %esi, %esi                                    #46.34
        incl      %esi                                          #46.34
        xorl      %edx, %edx                                    #46.34
        cmpl      32(%rsp), %eax                                #46.34
        cmovge    %edx, %esi                                    #46.34
..___tag_value_main.27:                                         #46.34
        call      _ZNSolsEi                                     #46.34
..___tag_value_main.28:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.27
        movq      %rax, %rdi                                    #46.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #46.39
..___tag_value_main.29:                                         #46.39
        call      _ZNSolsEPFRSoS_E                              #46.39
..___tag_value_main.30:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28

### 
###     srand(1);

        xorl      %edi, %edi                                    #48.5
        incl      %edi                                          #48.5
        call      srand                                         #48.5
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
        xorl      %esi, %esi                                    #10.5
        lea       32(%rsp), %rdi                                #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 40(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 32(%rsp), %xmm1, %xmm1                       #11.25

###     int z;
###     tic = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #50.5

###     for (int i = 0; i < TIMES; i++)

        xorl      %eax, %eax                                    #51.5
        vmovsd    %xmm1, 88(%rsp)                               #50.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.32:                        # Preds ..B1.32 ..B1.31

###     {
###         if(f_a[i] > f_b[i])

        lea       (%rax,%rax), %edx                             #53.12
        incl      %eax                                          #51.5
        vmovss    4(%rbx,%rdx,4), %xmm1                         #53.12
        vmovss    4(%r15,%rdx,4), %xmm0                         #53.21
        cmpl      $50000000, %eax                               #51.5
        jb        ..B1.32       # Prob 50%                      #51.5
                                # LOE rbx r12 r13 r14 r15 eax xmm0 xmm1
..B1.33:                        # Preds ..B1.32
        xorl      %esi, %esi                                    #10.5
        lea       48(%rsp), %rdi                                #10.5
        vmovss    %xmm0, 24(%rdi)                               #
        vmovss    %xmm1, 16(%rdi)                               #
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 56(%rsp), %xmm0, %xmm0                       #11.41
        vcvtsi2sdq 48(%rsp), %xmm1, %xmm1                       #11.25

###             z = 1;
###         else
###             z = 0;
###     }
###     toc = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #58.5

###     cout << "flt compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.5, %esi                         #59.10
        vmovsd    %xmm1, 80(%rsp)                               #58.5
        movl      $_ZSt4cout, %edi                              #59.10
..___tag_value_main.31:                                         #59.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.10
..___tag_value_main.32:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
        vmovsd    80(%rsp), %xmm0                               #59.29
        movq      %rax, %rdi                                    #59.29
        vsubsd    88(%rsp), %xmm0, %xmm0                        #59.29
..___tag_value_main.33:                                         #59.29
        call      _ZNSolsEd                                     #59.29
..___tag_value_main.34:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35
        movq      %rax, %rdi                                    #59.42
        movl      $.L_2__STRING.3, %esi                         #59.42
..___tag_value_main.35:                                         #59.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #59.42
..___tag_value_main.36:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
        movq      %rax, %rdi                                    #59.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #59.50
..___tag_value_main.37:                                         #59.50
        call      _ZNSolsEPFRSoS_E                              #59.50
..___tag_value_main.38:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.37

###     cout << "flt result check: " << z << endl;

        movl      $.L_2__STRING.6, %esi                         #60.10
        movl      $_ZSt4cout, %edi                              #60.10
..___tag_value_main.39:                                         #60.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #60.10
..___tag_value_main.40:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.38
        vmovss    72(%rsp), %xmm0                               #60.34
        movq      %rax, %rdi                                    #60.34
        vcmpltss  64(%rsp), %xmm0, %xmm1                        #60.34
        vmovd     %xmm1, %esi                                   #60.34
        negl      %esi                                          #60.34
..___tag_value_main.41:                                         #60.34
        call      _ZNSolsEi                                     #60.34
..___tag_value_main.42:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
        movq      %rax, %rdi                                    #60.39
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #60.39
..___tag_value_main.43:                                         #60.39
        call      _ZNSolsEPFRSoS_E                              #60.39
..___tag_value_main.44:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.40

### 
###     srand(1);

        xorl      %edi, %edi                                    #62.5
        incl      %edi                                          #62.5
        call      srand                                         #62.5
                                # LOE rbx r12 r13 r14 r15
..B1.42:                        # Preds ..B1.41
        xorl      %esi, %esi                                    #10.5
        lea       96(%rsp), %rdi                                #10.5
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.43:                        # Preds ..B1.42
        vxorpd    %xmm0, %xmm0, %xmm0                           #11.41
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.25
        vcvtsi2sdq 104(%rsp), %xmm0, %xmm0                      #11.41
        vcvtsi2sdq 96(%rsp), %xmm1, %xmm1                       #11.25

###     int gamma;
###     tic = dtime();

        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm0, %xmm1    #64.5

###     for (int i = 0; i < TIMES; i++)

        xorl      %eax, %eax                                    #65.5
        vmovsd    %xmm1, 80(%rsp)                               #64.5
        movq      128(%rsp), %rcx                               #65.5
                                # LOE rcx rbx r12 r13 r14 r15 eax
..B1.44:                        # Preds ..B1.44 ..B1.43

###     {
###         if(d_a[i] > d_b[i])

        lea       (%rax,%rax), %edx                             #67.12
        incl      %eax                                          #65.5
        vmovsd    8(%rcx,%rdx,8), %xmm1                         #67.12
        vmovsd    8(%r14,%rdx,8), %xmm0                         #67.21
        cmpl      $50000000, %eax                               #65.5
        jb        ..B1.44       # Prob 50%                      #65.5
                                # LOE rcx rbx r12 r13 r14 r15 eax xmm0 xmm1
..B1.45:                        # Preds ..B1.44
        xorl      %esi, %esi                                    #10.5
        lea       112(%rsp), %rdi                               #10.5
        vmovsd    %xmm0, -40(%rdi)                              #
        vmovsd    %xmm1, -48(%rdi)                              #
        call      gettimeofday                                  #10.5
                                # LOE rbx r12 r13 r14 r15
..B1.46:                        # Preds ..B1.45
        vxorpd    %xmm1, %xmm1, %xmm1                           #11.41
        vxorpd    %xmm2, %xmm2, %xmm2                           #11.25
        vcvtsi2sdq 120(%rsp), %xmm1, %xmm1                      #11.41
        vcvtsi2sdq 112(%rsp), %xmm2, %xmm2                      #11.25

###             gamma = 1;
###         else
###             gamma = 0;
###     }
###     toc = dtime();

        vmovsd    .L_2il0floatpacket.1(%rip), %xmm0             #72.5

###     cout << "dbl compare: " << toc - tic << " s" << endl;

        movl      $.L_2__STRING.7, %esi                         #73.10
        vfmadd213sd %xmm2, %xmm1, %xmm0                         #72.5
        movl      $_ZSt4cout, %edi                              #73.10
        vmovsd    %xmm0, 88(%rsp)                               #72.5
..___tag_value_main.45:                                         #73.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.10
..___tag_value_main.46:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.47:                        # Preds ..B1.46
        vmovsd    88(%rsp), %xmm0                               #73.29
        movq      %rax, %rdi                                    #73.29
        vsubsd    80(%rsp), %xmm0, %xmm0                        #73.29
..___tag_value_main.47:                                         #73.29
        call      _ZNSolsEd                                     #73.29
..___tag_value_main.48:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.48:                        # Preds ..B1.47
        movq      %rax, %rdi                                    #73.42
        movl      $.L_2__STRING.3, %esi                         #73.42
..___tag_value_main.49:                                         #73.42
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #73.42
..___tag_value_main.50:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.49:                        # Preds ..B1.48
        movq      %rax, %rdi                                    #73.50
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #73.50
..___tag_value_main.51:                                         #73.50
        call      _ZNSolsEPFRSoS_E                              #73.50
..___tag_value_main.52:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.50:                        # Preds ..B1.49

###     cout << "dbl result check: " << gamma << endl;

        movl      $.L_2__STRING.8, %esi                         #74.10
        movl      $_ZSt4cout, %edi                              #74.10
..___tag_value_main.53:                                         #74.10
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #74.10
..___tag_value_main.54:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.51:                        # Preds ..B1.50
        vmovsd    72(%rsp), %xmm0                               #74.34
        movq      %rax, %rdi                                    #74.34
        vcmpltsd  64(%rsp), %xmm0, %xmm1                        #74.34
        vmovd     %xmm1, %esi                                   #74.34
        negl      %esi                                          #74.34
..___tag_value_main.55:                                         #74.34
        call      _ZNSolsEi                                     #74.34
..___tag_value_main.56:                                         #
                                # LOE rax rbx r12 r13 r14 r15
..B1.52:                        # Preds ..B1.51
        movq      %rax, %rdi                                    #74.43
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #74.43
..___tag_value_main.57:                                         #74.43
        call      _ZNSolsEPFRSoS_E                              #74.43
..___tag_value_main.58:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.53:                        # Preds ..B1.52

### 
###     free(i_a);

        movq      %r12, %rdi                                    #76.5
        call      free                                          #76.5
                                # LOE rbx r13 r14 r15
..B1.54:                        # Preds ..B1.53

###     free(i_b);

        movq      %r13, %rdi                                    #77.5
        call      free                                          #77.5
                                # LOE rbx r14 r15
..B1.55:                        # Preds ..B1.54

###     free(f_a);

        movq      %rbx, %rdi                                    #78.5
        call      free                                          #78.5
                                # LOE r14 r15
..B1.56:                        # Preds ..B1.55

###     free(f_b);

        movq      %r15, %rdi                                    #79.5
        call      free                                          #79.5
                                # LOE r14
..B1.57:                        # Preds ..B1.56

###     free(d_a);

        movq      128(%rsp), %rdi                               #80.5
        call      free                                          #80.5
                                # LOE r14
..B1.58:                        # Preds ..B1.57

###     free(d_b);

        movq      %r14, %rdi                                    #81.5
        call      free                                          #81.5
                                # LOE
..B1.59:                        # Preds ..B1.58

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
        .align    16,0x90
..___tag_value_main.66:                                         #
                                # LOE
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

..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.67:             #259.7
..L68:
                                                         #259.7
        pushq     %rsi                                          #259.7
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.69:             #
        movq      %rdi, %rdx                                    #259.16
        movq      %rdx, %rcx                                    #259.16
        andq      $-16, %rdx                                    #259.16
        vpxor     %xmm0, %xmm0, %xmm0                           #259.16
        vpcmpeqb  (%rdx), %xmm0, %xmm0                          #259.16
        vpmovmskb %xmm0, %eax                                   #259.16
        andl      $15, %ecx                                     #259.16
        shrl      %cl, %eax                                     #259.16
        bsf       %eax, %eax                                    #259.16
        jne       ..L70         # Prob 60%                      #259.16
        movq      %rdx, %rax                                    #259.16
        addq      %rcx, %rdx                                    #259.16
        call      __intel_sse4_strlen                           #259.16
..L70:                                                          #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
        popq      %rcx                                          #259.16
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.71:             #
        ret                                                     #259.16
        .align    16,0x90
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.72:             #
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

..___tag_value__Z5dtimev.73:                                    #7.1
..L74:
                                                         #7.1
        subq      $24, %rsp                                     #7.1
..___tag_value__Z5dtimev.75:                                    #

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
..___tag_value__Z5dtimev.76:                                    #
        ret                                                     #12.12
        .align    16,0x90
..___tag_value__Z5dtimev.77:                                    #
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
..___tag_value___sti__$E.78:                                    #
..L79:
                                                         #
        pushq     %rsi                                          #
..___tag_value___sti__$E.80:                                    #

###   static ios_base::Init __ioinit;

        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %edi #74.25
..___tag_value___sti__$E.81:                                    #74.25
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.82:                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
        movl      $_ZN29_INTERNAL_8_main_cpp_9fe95c7eSt8__ioinitE, %esi #74.25
        movl      $__dso_handle, %edx                           #74.25
        addq      $8, %rsp                                      #74.25
..___tag_value___sti__$E.83:                                    #
        jmp       __cxa_atexit                                  #74.25
        .align    16,0x90
..___tag_value___sti__$E.84:                                    #
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
	.align 8
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
	.4byte 0x000000ac
	.4byte 0x00000024
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.66-..___tag_value_main.1
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
	.8byte 0x00000000c608070c
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x000000d4
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.67
	.8byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.72-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.67
	.2byte 0x0400
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.69-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.67
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.71-..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.69
	.2byte 0x080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x000000fc
	.8byte ..___tag_value__Z5dtimev.73
	.8byte ..___tag_value__Z5dtimev.77-..___tag_value__Z5dtimev.73
	.2byte 0x0400
	.4byte ..___tag_value__Z5dtimev.75-..___tag_value__Z5dtimev.73
	.2byte 0x200e
	.byte 0x04
	.4byte ..___tag_value__Z5dtimev.76-..___tag_value__Z5dtimev.75
	.2byte 0x080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x00000124
	.8byte ..___tag_value___sti__$E.78
	.8byte ..___tag_value___sti__$E.84-..___tag_value___sti__$E.78
	.2byte 0x0400
	.4byte ..___tag_value___sti__$E.80-..___tag_value___sti__$E.78
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.83-..___tag_value___sti__$E.80
	.2byte 0x080e
	.byte 0x00
# End
