
bomb:     file format elf64-x86-64


Disassembly of section .init:

00000000000017a0 <_init>:
    17a0:	48 83 ec 08          	sub    $0x8,%rsp
    17a4:	48 8b 05 3d 38 20 00 	mov    0x20383d(%rip),%rax        # 204fe8 <__gmon_start__>
    17ab:	48 85 c0             	test   %rax,%rax
    17ae:	74 02                	je     17b2 <_init+0x12>
    17b0:	ff d0                	callq  *%rax
    17b2:	48 83 c4 08          	add    $0x8,%rsp
    17b6:	c3                   	retq   

Disassembly of section .plt:

00000000000017c0 <.plt>:
    17c0:	ff 35 22 37 20 00    	pushq  0x203722(%rip)        # 204ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    17c6:	ff 25 24 37 20 00    	jmpq   *0x203724(%rip)        # 204ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    17cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017d0 <__strcat_chk@plt>:
    17d0:	ff 25 22 37 20 00    	jmpq   *0x203722(%rip)        # 204ef8 <__strcat_chk@GLIBC_2.3.4>
    17d6:	68 00 00 00 00       	pushq  $0x0
    17db:	e9 e0 ff ff ff       	jmpq   17c0 <.plt>

00000000000017e0 <getenv@plt>:
    17e0:	ff 25 1a 37 20 00    	jmpq   *0x20371a(%rip)        # 204f00 <getenv@GLIBC_2.2.5>
    17e6:	68 01 00 00 00       	pushq  $0x1
    17eb:	e9 d0 ff ff ff       	jmpq   17c0 <.plt>

00000000000017f0 <strcasecmp@plt>:
    17f0:	ff 25 12 37 20 00    	jmpq   *0x203712(%rip)        # 204f08 <strcasecmp@GLIBC_2.2.5>
    17f6:	68 02 00 00 00       	pushq  $0x2
    17fb:	e9 c0 ff ff ff       	jmpq   17c0 <.plt>

0000000000001800 <__errno_location@plt>:
    1800:	ff 25 0a 37 20 00    	jmpq   *0x20370a(%rip)        # 204f10 <__errno_location@GLIBC_2.2.5>
    1806:	68 03 00 00 00       	pushq  $0x3
    180b:	e9 b0 ff ff ff       	jmpq   17c0 <.plt>

0000000000001810 <strcpy@plt>:
    1810:	ff 25 02 37 20 00    	jmpq   *0x203702(%rip)        # 204f18 <strcpy@GLIBC_2.2.5>
    1816:	68 04 00 00 00       	pushq  $0x4
    181b:	e9 a0 ff ff ff       	jmpq   17c0 <.plt>

0000000000001820 <puts@plt>:
    1820:	ff 25 fa 36 20 00    	jmpq   *0x2036fa(%rip)        # 204f20 <puts@GLIBC_2.2.5>
    1826:	68 05 00 00 00       	pushq  $0x5
    182b:	e9 90 ff ff ff       	jmpq   17c0 <.plt>

0000000000001830 <write@plt>:
    1830:	ff 25 f2 36 20 00    	jmpq   *0x2036f2(%rip)        # 204f28 <write@GLIBC_2.2.5>
    1836:	68 06 00 00 00       	pushq  $0x6
    183b:	e9 80 ff ff ff       	jmpq   17c0 <.plt>

0000000000001840 <__stack_chk_fail@plt>:
    1840:	ff 25 ea 36 20 00    	jmpq   *0x2036ea(%rip)        # 204f30 <__stack_chk_fail@GLIBC_2.4>
    1846:	68 07 00 00 00       	pushq  $0x7
    184b:	e9 70 ff ff ff       	jmpq   17c0 <.plt>

0000000000001850 <alarm@plt>:
    1850:	ff 25 e2 36 20 00    	jmpq   *0x2036e2(%rip)        # 204f38 <alarm@GLIBC_2.2.5>
    1856:	68 08 00 00 00       	pushq  $0x8
    185b:	e9 60 ff ff ff       	jmpq   17c0 <.plt>

0000000000001860 <close@plt>:
    1860:	ff 25 da 36 20 00    	jmpq   *0x2036da(%rip)        # 204f40 <close@GLIBC_2.2.5>
    1866:	68 09 00 00 00       	pushq  $0x9
    186b:	e9 50 ff ff ff       	jmpq   17c0 <.plt>

0000000000001870 <read@plt>:
    1870:	ff 25 d2 36 20 00    	jmpq   *0x2036d2(%rip)        # 204f48 <read@GLIBC_2.2.5>
    1876:	68 0a 00 00 00       	pushq  $0xa
    187b:	e9 40 ff ff ff       	jmpq   17c0 <.plt>

0000000000001880 <fgets@plt>:
    1880:	ff 25 ca 36 20 00    	jmpq   *0x2036ca(%rip)        # 204f50 <fgets@GLIBC_2.2.5>
    1886:	68 0b 00 00 00       	pushq  $0xb
    188b:	e9 30 ff ff ff       	jmpq   17c0 <.plt>

0000000000001890 <signal@plt>:
    1890:	ff 25 c2 36 20 00    	jmpq   *0x2036c2(%rip)        # 204f58 <signal@GLIBC_2.2.5>
    1896:	68 0c 00 00 00       	pushq  $0xc
    189b:	e9 20 ff ff ff       	jmpq   17c0 <.plt>

00000000000018a0 <gethostbyname@plt>:
    18a0:	ff 25 ba 36 20 00    	jmpq   *0x2036ba(%rip)        # 204f60 <gethostbyname@GLIBC_2.2.5>
    18a6:	68 0d 00 00 00       	pushq  $0xd
    18ab:	e9 10 ff ff ff       	jmpq   17c0 <.plt>

00000000000018b0 <__memmove_chk@plt>:
    18b0:	ff 25 b2 36 20 00    	jmpq   *0x2036b2(%rip)        # 204f68 <__memmove_chk@GLIBC_2.3.4>
    18b6:	68 0e 00 00 00       	pushq  $0xe
    18bb:	e9 00 ff ff ff       	jmpq   17c0 <.plt>

00000000000018c0 <strtol@plt>:
    18c0:	ff 25 aa 36 20 00    	jmpq   *0x2036aa(%rip)        # 204f70 <strtol@GLIBC_2.2.5>
    18c6:	68 0f 00 00 00       	pushq  $0xf
    18cb:	e9 f0 fe ff ff       	jmpq   17c0 <.plt>

00000000000018d0 <fflush@plt>:
    18d0:	ff 25 a2 36 20 00    	jmpq   *0x2036a2(%rip)        # 204f78 <fflush@GLIBC_2.2.5>
    18d6:	68 10 00 00 00       	pushq  $0x10
    18db:	e9 e0 fe ff ff       	jmpq   17c0 <.plt>

00000000000018e0 <__isoc99_sscanf@plt>:
    18e0:	ff 25 9a 36 20 00    	jmpq   *0x20369a(%rip)        # 204f80 <__isoc99_sscanf@GLIBC_2.7>
    18e6:	68 11 00 00 00       	pushq  $0x11
    18eb:	e9 d0 fe ff ff       	jmpq   17c0 <.plt>

00000000000018f0 <__printf_chk@plt>:
    18f0:	ff 25 92 36 20 00    	jmpq   *0x203692(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
    18f6:	68 12 00 00 00       	pushq  $0x12
    18fb:	e9 c0 fe ff ff       	jmpq   17c0 <.plt>

0000000000001900 <fopen@plt>:
    1900:	ff 25 8a 36 20 00    	jmpq   *0x20368a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
    1906:	68 13 00 00 00       	pushq  $0x13
    190b:	e9 b0 fe ff ff       	jmpq   17c0 <.plt>

0000000000001910 <gethostname@plt>:
    1910:	ff 25 82 36 20 00    	jmpq   *0x203682(%rip)        # 204f98 <gethostname@GLIBC_2.2.5>
    1916:	68 14 00 00 00       	pushq  $0x14
    191b:	e9 a0 fe ff ff       	jmpq   17c0 <.plt>

0000000000001920 <exit@plt>:
    1920:	ff 25 7a 36 20 00    	jmpq   *0x20367a(%rip)        # 204fa0 <exit@GLIBC_2.2.5>
    1926:	68 15 00 00 00       	pushq  $0x15
    192b:	e9 90 fe ff ff       	jmpq   17c0 <.plt>

0000000000001930 <connect@plt>:
    1930:	ff 25 72 36 20 00    	jmpq   *0x203672(%rip)        # 204fa8 <connect@GLIBC_2.2.5>
    1936:	68 16 00 00 00       	pushq  $0x16
    193b:	e9 80 fe ff ff       	jmpq   17c0 <.plt>

0000000000001940 <__fprintf_chk@plt>:
    1940:	ff 25 6a 36 20 00    	jmpq   *0x20366a(%rip)        # 204fb0 <__fprintf_chk@GLIBC_2.3.4>
    1946:	68 17 00 00 00       	pushq  $0x17
    194b:	e9 70 fe ff ff       	jmpq   17c0 <.plt>

0000000000001950 <sleep@plt>:
    1950:	ff 25 62 36 20 00    	jmpq   *0x203662(%rip)        # 204fb8 <sleep@GLIBC_2.2.5>
    1956:	68 18 00 00 00       	pushq  $0x18
    195b:	e9 60 fe ff ff       	jmpq   17c0 <.plt>

0000000000001960 <__ctype_b_loc@plt>:
    1960:	ff 25 5a 36 20 00    	jmpq   *0x20365a(%rip)        # 204fc0 <__ctype_b_loc@GLIBC_2.3>
    1966:	68 19 00 00 00       	pushq  $0x19
    196b:	e9 50 fe ff ff       	jmpq   17c0 <.plt>

0000000000001970 <__sprintf_chk@plt>:
    1970:	ff 25 52 36 20 00    	jmpq   *0x203652(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
    1976:	68 1a 00 00 00       	pushq  $0x1a
    197b:	e9 40 fe ff ff       	jmpq   17c0 <.plt>

0000000000001980 <socket@plt>:
    1980:	ff 25 4a 36 20 00    	jmpq   *0x20364a(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
    1986:	68 1b 00 00 00       	pushq  $0x1b
    198b:	e9 30 fe ff ff       	jmpq   17c0 <.plt>

Disassembly of section .plt.got:

0000000000001990 <__cxa_finalize@plt>:
    1990:	ff 25 62 36 20 00    	jmpq   *0x203662(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1996:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000019a0 <_start>:
    19a0:	31 ed                	xor    %ebp,%ebp
    19a2:	49 89 d1             	mov    %rdx,%r9
    19a5:	5e                   	pop    %rsi
    19a6:	48 89 e2             	mov    %rsp,%rdx
    19a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    19ad:	50                   	push   %rax
    19ae:	54                   	push   %rsp
    19af:	4c 8d 05 8a 1a 00 00 	lea    0x1a8a(%rip),%r8        # 3440 <__libc_csu_fini>
    19b6:	48 8d 0d 13 1a 00 00 	lea    0x1a13(%rip),%rcx        # 33d0 <__libc_csu_init>
    19bd:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 1aaa <main>
    19c4:	ff 15 16 36 20 00    	callq  *0x203616(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    19ca:	f4                   	hlt    
    19cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000019d0 <deregister_tm_clones>:
    19d0:	48 8d 3d a9 3c 20 00 	lea    0x203ca9(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    19d7:	55                   	push   %rbp
    19d8:	48 8d 05 a1 3c 20 00 	lea    0x203ca1(%rip),%rax        # 205680 <stdout@@GLIBC_2.2.5>
    19df:	48 39 f8             	cmp    %rdi,%rax
    19e2:	48 89 e5             	mov    %rsp,%rbp
    19e5:	74 19                	je     1a00 <deregister_tm_clones+0x30>
    19e7:	48 8b 05 ea 35 20 00 	mov    0x2035ea(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    19ee:	48 85 c0             	test   %rax,%rax
    19f1:	74 0d                	je     1a00 <deregister_tm_clones+0x30>
    19f3:	5d                   	pop    %rbp
    19f4:	ff e0                	jmpq   *%rax
    19f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19fd:	00 00 00 
    1a00:	5d                   	pop    %rbp
    1a01:	c3                   	retq   
    1a02:	0f 1f 40 00          	nopl   0x0(%rax)
    1a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a0d:	00 00 00 

0000000000001a10 <register_tm_clones>:
    1a10:	48 8d 3d 69 3c 20 00 	lea    0x203c69(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    1a17:	48 8d 35 62 3c 20 00 	lea    0x203c62(%rip),%rsi        # 205680 <stdout@@GLIBC_2.2.5>
    1a1e:	55                   	push   %rbp
    1a1f:	48 29 fe             	sub    %rdi,%rsi
    1a22:	48 89 e5             	mov    %rsp,%rbp
    1a25:	48 c1 fe 03          	sar    $0x3,%rsi
    1a29:	48 89 f0             	mov    %rsi,%rax
    1a2c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1a30:	48 01 c6             	add    %rax,%rsi
    1a33:	48 d1 fe             	sar    %rsi
    1a36:	74 18                	je     1a50 <register_tm_clones+0x40>
    1a38:	48 8b 05 b1 35 20 00 	mov    0x2035b1(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    1a3f:	48 85 c0             	test   %rax,%rax
    1a42:	74 0c                	je     1a50 <register_tm_clones+0x40>
    1a44:	5d                   	pop    %rbp
    1a45:	ff e0                	jmpq   *%rax
    1a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a4e:	00 00 
    1a50:	5d                   	pop    %rbp
    1a51:	c3                   	retq   
    1a52:	0f 1f 40 00          	nopl   0x0(%rax)
    1a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a5d:	00 00 00 

0000000000001a60 <__do_global_dtors_aux>:
    1a60:	80 3d 41 3c 20 00 00 	cmpb   $0x0,0x203c41(%rip)        # 2056a8 <completed.7698>
    1a67:	75 2f                	jne    1a98 <__do_global_dtors_aux+0x38>
    1a69:	48 83 3d 87 35 20 00 	cmpq   $0x0,0x203587(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1a70:	00 
    1a71:	55                   	push   %rbp
    1a72:	48 89 e5             	mov    %rsp,%rbp
    1a75:	74 0c                	je     1a83 <__do_global_dtors_aux+0x23>
    1a77:	48 8b 3d 8a 35 20 00 	mov    0x20358a(%rip),%rdi        # 205008 <__dso_handle>
    1a7e:	e8 0d ff ff ff       	callq  1990 <__cxa_finalize@plt>
    1a83:	e8 48 ff ff ff       	callq  19d0 <deregister_tm_clones>
    1a88:	c6 05 19 3c 20 00 01 	movb   $0x1,0x203c19(%rip)        # 2056a8 <completed.7698>
    1a8f:	5d                   	pop    %rbp
    1a90:	c3                   	retq   
    1a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a98:	f3 c3                	repz retq 
    1a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001aa0 <frame_dummy>:
    1aa0:	55                   	push   %rbp
    1aa1:	48 89 e5             	mov    %rsp,%rbp
    1aa4:	5d                   	pop    %rbp
    1aa5:	e9 66 ff ff ff       	jmpq   1a10 <register_tm_clones>

0000000000001aaa <main>:
    1aaa:	53                   	push   %rbx
    1aab:	83 ff 01             	cmp    $0x1,%edi
    1aae:	0f 84 f8 00 00 00    	je     1bac <main+0x102>
    1ab4:	48 89 f3             	mov    %rsi,%rbx
    1ab7:	83 ff 02             	cmp    $0x2,%edi
    1aba:	0f 85 21 01 00 00    	jne    1be1 <main+0x137>
    1ac0:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1ac4:	48 8d 35 89 19 00 00 	lea    0x1989(%rip),%rsi        # 3454 <_IO_stdin_used+0x4>
    1acb:	e8 30 fe ff ff       	callq  1900 <fopen@plt>
    1ad0:	48 89 05 d9 3b 20 00 	mov    %rax,0x203bd9(%rip)        # 2056b0 <infile>
    1ad7:	48 85 c0             	test   %rax,%rax
    1ada:	0f 84 df 00 00 00    	je     1bbf <main+0x115>
    1ae0:	e8 f3 07 00 00       	callq  22d8 <initialize_bomb>
    1ae5:	48 8d 3d ec 19 00 00 	lea    0x19ec(%rip),%rdi        # 34d8 <_IO_stdin_used+0x88>
    1aec:	e8 2f fd ff ff       	callq  1820 <puts@plt>
    1af1:	48 8d 3d 20 1a 00 00 	lea    0x1a20(%rip),%rdi        # 3518 <_IO_stdin_used+0xc8>
    1af8:	e8 23 fd ff ff       	callq  1820 <puts@plt>
    1afd:	e8 f0 0a 00 00       	callq  25f2 <read_line>
    1b02:	48 89 c7             	mov    %rax,%rdi
    1b05:	e8 fa 00 00 00       	callq  1c04 <phase_1>
    1b0a:	e8 27 0c 00 00       	callq  2736 <phase_defused>
    1b0f:	48 8d 3d 32 1a 00 00 	lea    0x1a32(%rip),%rdi        # 3548 <_IO_stdin_used+0xf8>
    1b16:	e8 05 fd ff ff       	callq  1820 <puts@plt>
    1b1b:	e8 d2 0a 00 00       	callq  25f2 <read_line>
    1b20:	48 89 c7             	mov    %rax,%rdi
    1b23:	e8 9e 01 00 00       	callq  1cc6 <phase_2>
    1b28:	e8 09 0c 00 00       	callq  2736 <phase_defused>
    1b2d:	48 8d 3d 59 19 00 00 	lea    0x1959(%rip),%rdi        # 348d <_IO_stdin_used+0x3d>
    1b34:	e8 e7 fc ff ff       	callq  1820 <puts@plt>
    1b39:	e8 b4 0a 00 00       	callq  25f2 <read_line>
    1b3e:	48 89 c7             	mov    %rax,%rdi
    1b41:	e8 fd 01 00 00       	callq  1d43 <phase_3>
    1b46:	e8 eb 0b 00 00       	callq  2736 <phase_defused>
    1b4b:	48 8d 3d 59 19 00 00 	lea    0x1959(%rip),%rdi        # 34ab <_IO_stdin_used+0x5b>
    1b52:	e8 c9 fc ff ff       	callq  1820 <puts@plt>
    1b57:	e8 96 0a 00 00       	callq  25f2 <read_line>
    1b5c:	48 89 c7             	mov    %rax,%rdi
    1b5f:	e8 ce 02 00 00       	callq  1e32 <phase_4>
    1b64:	e8 cd 0b 00 00       	callq  2736 <phase_defused>
    1b69:	48 8d 3d 08 1a 00 00 	lea    0x1a08(%rip),%rdi        # 3578 <_IO_stdin_used+0x128>
    1b70:	e8 ab fc ff ff       	callq  1820 <puts@plt>
    1b75:	e8 78 0a 00 00       	callq  25f2 <read_line>
    1b7a:	48 89 c7             	mov    %rax,%rdi
    1b7d:	e8 47 03 00 00       	callq  1ec9 <phase_5>
    1b82:	e8 af 0b 00 00       	callq  2736 <phase_defused>
    1b87:	48 8d 3d 2c 19 00 00 	lea    0x192c(%rip),%rdi        # 34ba <_IO_stdin_used+0x6a>
    1b8e:	e8 8d fc ff ff       	callq  1820 <puts@plt>
    1b93:	e8 5a 0a 00 00       	callq  25f2 <read_line>
    1b98:	48 89 c7             	mov    %rax,%rdi
    1b9b:	e8 c0 03 00 00       	callq  1f60 <phase_6>
    1ba0:	e8 91 0b 00 00       	callq  2736 <phase_defused>
    1ba5:	b8 00 00 00 00       	mov    $0x0,%eax
    1baa:	5b                   	pop    %rbx
    1bab:	c3                   	retq   
    1bac:	48 8b 05 dd 3a 20 00 	mov    0x203add(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    1bb3:	48 89 05 f6 3a 20 00 	mov    %rax,0x203af6(%rip)        # 2056b0 <infile>
    1bba:	e9 21 ff ff ff       	jmpq   1ae0 <main+0x36>
    1bbf:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1bc3:	48 8b 13             	mov    (%rbx),%rdx
    1bc6:	48 8d 35 89 18 00 00 	lea    0x1889(%rip),%rsi        # 3456 <_IO_stdin_used+0x6>
    1bcd:	bf 01 00 00 00       	mov    $0x1,%edi
    1bd2:	e8 19 fd ff ff       	callq  18f0 <__printf_chk@plt>
    1bd7:	bf 08 00 00 00       	mov    $0x8,%edi
    1bdc:	e8 3f fd ff ff       	callq  1920 <exit@plt>
    1be1:	48 8b 16             	mov    (%rsi),%rdx
    1be4:	48 8d 35 88 18 00 00 	lea    0x1888(%rip),%rsi        # 3473 <_IO_stdin_used+0x23>
    1beb:	bf 01 00 00 00       	mov    $0x1,%edi
    1bf0:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf5:	e8 f6 fc ff ff       	callq  18f0 <__printf_chk@plt>
    1bfa:	bf 08 00 00 00       	mov    $0x8,%edi
    1bff:	e8 1c fd ff ff       	callq  1920 <exit@plt>

0000000000001c04 <phase_1>:
    1c04:	55                   	push   %rbp
    1c05:	53                   	push   %rbx
    1c06:	48 83 ec 68          	sub    $0x68,%rsp
    1c0a:	48 89 fd             	mov    %rdi,%rbp
    1c0d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c14:	00 00 
    1c16:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1c1b:	31 c0                	xor    %eax,%eax
    1c1d:	48 b8 54 68 65 20 74 	movabs $0x7478657420656854,%rax
    1c24:	65 78 74 
    1c27:	ba 20 69 73 20       	mov    $0x20736920,%edx
    1c2c:	48 89 04 24          	mov    %rax,(%rsp)
    1c30:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1c35:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    1c3c:	00 00 
    1c3e:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    1c45:	00 00 
    1c47:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    1c4e:	00 00 
    1c50:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    1c57:	00 00 
    1c59:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    1c60:	00 00 
    1c62:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    1c69:	00 00 
    1c6b:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    1c72:	00 00 
    1c74:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1c7b:	00 00 
    1c7d:	48 89 e3             	mov    %rsp,%rbx
    1c80:	ba 50 00 00 00       	mov    $0x50,%edx
    1c85:	48 8d 35 14 19 00 00 	lea    0x1914(%rip),%rsi        # 35a0 <_IO_stdin_used+0x150>
    1c8c:	48 89 df             	mov    %rbx,%rdi
    1c8f:	e8 3c fb ff ff       	callq  17d0 <__strcat_chk@plt>
    1c94:	48 89 de             	mov    %rbx,%rsi
    1c97:	48 89 ef             	mov    %rbp,%rdi
    1c9a:	e8 b6 05 00 00       	callq  2255 <strings_not_equal>
    1c9f:	85 c0                	test   %eax,%eax
    1ca1:	75 17                	jne    1cba <phase_1+0xb6>
    1ca3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1ca8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1caf:	00 00 
    1cb1:	75 0e                	jne    1cc1 <phase_1+0xbd>
    1cb3:	48 83 c4 68          	add    $0x68,%rsp
    1cb7:	5b                   	pop    %rbx
    1cb8:	5d                   	pop    %rbp
    1cb9:	c3                   	retq   
    1cba:	e8 b6 08 00 00       	callq  2575 <explode_bomb>
    1cbf:	eb e2                	jmp    1ca3 <phase_1+0x9f>
    1cc1:	e8 7a fb ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000001cc6 <phase_2>:
    1cc6:	55                   	push   %rbp
    1cc7:	53                   	push   %rbx
    1cc8:	48 83 ec 28          	sub    $0x28,%rsp
    1ccc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1cd3:	00 00 
    1cd5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1cda:	31 c0                	xor    %eax,%eax
    1cdc:	48 89 e6             	mov    %rsp,%rsi
    1cdf:	e8 cd 08 00 00       	callq  25b1 <read_six_numbers>
    1ce4:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1ce8:	78 11                	js     1cfb <phase_2+0x35>
    1cea:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
    1cef:	78 11                	js     1d02 <phase_2+0x3c>
    1cf1:	bb 02 00 00 00       	mov    $0x2,%ebx
    1cf6:	48 89 e5             	mov    %rsp,%rbp
    1cf9:	eb 18                	jmp    1d13 <phase_2+0x4d>
    1cfb:	e8 75 08 00 00       	callq  2575 <explode_bomb>
    1d00:	eb e8                	jmp    1cea <phase_2+0x24>
    1d02:	e8 6e 08 00 00       	callq  2575 <explode_bomb>
    1d07:	eb e8                	jmp    1cf1 <phase_2+0x2b>
    1d09:	48 83 c3 01          	add    $0x1,%rbx
    1d0d:	48 83 fb 06          	cmp    $0x6,%rbx
    1d11:	74 14                	je     1d27 <phase_2+0x61>
    1d13:	89 d8                	mov    %ebx,%eax
    1d15:	0f af 44 9d f8       	imul   -0x8(%rbp,%rbx,4),%eax
    1d1a:	39 44 9d 00          	cmp    %eax,0x0(%rbp,%rbx,4)
    1d1e:	74 e9                	je     1d09 <phase_2+0x43>
    1d20:	e8 50 08 00 00       	callq  2575 <explode_bomb>
    1d25:	eb e2                	jmp    1d09 <phase_2+0x43>
    1d27:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1d2c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d33:	00 00 
    1d35:	75 07                	jne    1d3e <phase_2+0x78>
    1d37:	48 83 c4 28          	add    $0x28,%rsp
    1d3b:	5b                   	pop    %rbx
    1d3c:	5d                   	pop    %rbp
    1d3d:	c3                   	retq   
    1d3e:	e8 fd fa ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000001d43 <phase_3>:
    1d43:	48 83 ec 28          	sub    $0x28,%rsp
    1d47:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d4e:	00 00 
    1d50:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1d55:	31 c0                	xor    %eax,%eax
    1d57:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1d5c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1d61:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1d66:	48 8d 35 1d 1b 00 00 	lea    0x1b1d(%rip),%rsi        # 388a <array.3438+0x25a>
    1d6d:	e8 6e fb ff ff       	callq  18e0 <__isoc99_sscanf@plt>
    1d72:	83 f8 02             	cmp    $0x2,%eax
    1d75:	7e 1b                	jle    1d92 <phase_3+0x4f>
    1d77:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1d7c:	77 4c                	ja     1dca <phase_3+0x87>
    1d7e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1d82:	48 8d 15 87 18 00 00 	lea    0x1887(%rip),%rdx        # 3610 <_IO_stdin_used+0x1c0>
    1d89:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1d8d:	48 01 d0             	add    %rdx,%rax
    1d90:	ff e0                	jmpq   *%rax
    1d92:	e8 de 07 00 00       	callq  2575 <explode_bomb>
    1d97:	eb de                	jmp    1d77 <phase_3+0x34>
    1d99:	be f4 02 00 00       	mov    $0x2f4,%esi
    1d9e:	eb 3b                	jmp    1ddb <phase_3+0x98>
    1da0:	be ce 02 00 00       	mov    $0x2ce,%esi
    1da5:	eb 34                	jmp    1ddb <phase_3+0x98>
    1da7:	be 06 02 00 00       	mov    $0x206,%esi
    1dac:	eb 2d                	jmp    1ddb <phase_3+0x98>
    1dae:	be 84 02 00 00       	mov    $0x284,%esi
    1db3:	eb 26                	jmp    1ddb <phase_3+0x98>
    1db5:	be 90 03 00 00       	mov    $0x390,%esi
    1dba:	eb 1f                	jmp    1ddb <phase_3+0x98>
    1dbc:	be bf 00 00 00       	mov    $0xbf,%esi
    1dc1:	eb 18                	jmp    1ddb <phase_3+0x98>
    1dc3:	be 6a 01 00 00       	mov    $0x16a,%esi
    1dc8:	eb 11                	jmp    1ddb <phase_3+0x98>
    1dca:	e8 a6 07 00 00       	callq  2575 <explode_bomb>
    1dcf:	be 00 00 00 00       	mov    $0x0,%esi
    1dd4:	eb 05                	jmp    1ddb <phase_3+0x98>
    1dd6:	be 8b 00 00 00       	mov    $0x8b,%esi
    1ddb:	8b 54 24 14          	mov    0x14(%rsp),%edx
    1ddf:	8b 7c 24 10          	mov    0x10(%rsp),%edi
    1de3:	e8 fa 03 00 00       	callq  21e2 <check_multiplication_equal>
    1de8:	85 c0                	test   %eax,%eax
    1dea:	74 15                	je     1e01 <phase_3+0xbe>
    1dec:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1df1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1df8:	00 00 
    1dfa:	75 0c                	jne    1e08 <phase_3+0xc5>
    1dfc:	48 83 c4 28          	add    $0x28,%rsp
    1e00:	c3                   	retq   
    1e01:	e8 6f 07 00 00       	callq  2575 <explode_bomb>
    1e06:	eb e4                	jmp    1dec <phase_3+0xa9>
    1e08:	e8 33 fa ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000001e0d <func4>:
    1e0d:	89 f0                	mov    %esi,%eax
    1e0f:	39 f7                	cmp    %esi,%edi
    1e11:	74 1d                	je     1e30 <func4+0x23>
    1e13:	48 83 ec 08          	sub    $0x8,%rsp
    1e17:	39 f7                	cmp    %esi,%edi
    1e19:	7f 0c                	jg     1e27 <func4+0x1a>
    1e1b:	29 fe                	sub    %edi,%esi
    1e1d:	e8 eb ff ff ff       	callq  1e0d <func4>
    1e22:	48 83 c4 08          	add    $0x8,%rsp
    1e26:	c3                   	retq   
    1e27:	29 f7                	sub    %esi,%edi
    1e29:	e8 df ff ff ff       	callq  1e0d <func4>
    1e2e:	eb f2                	jmp    1e22 <func4+0x15>
    1e30:	f3 c3                	repz retq 

0000000000001e32 <phase_4>:
    1e32:	53                   	push   %rbx
    1e33:	48 83 ec 10          	sub    $0x10,%rsp
    1e37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e3e:	00 00 
    1e40:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1e45:	31 c0                	xor    %eax,%eax
    1e47:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1e4c:	48 89 e2             	mov    %rsp,%rdx
    1e4f:	48 8d 35 37 1a 00 00 	lea    0x1a37(%rip),%rsi        # 388d <array.3438+0x25d>
    1e56:	e8 85 fa ff ff       	callq  18e0 <__isoc99_sscanf@plt>
    1e5b:	83 f8 02             	cmp    $0x2,%eax
    1e5e:	75 0d                	jne    1e6d <phase_4+0x3b>
    1e60:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    1e64:	7e 07                	jle    1e6d <phase_4+0x3b>
    1e66:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1e6b:	7f 05                	jg     1e72 <phase_4+0x40>
    1e6d:	e8 03 07 00 00       	callq  2575 <explode_bomb>
    1e72:	81 3c 24 7b 3e 00 00 	cmpl   $0x3e7b,(%rsp)
    1e79:	7f 0a                	jg     1e85 <phase_4+0x53>
    1e7b:	81 7c 24 04 7b 3e 00 	cmpl   $0x3e7b,0x4(%rsp)
    1e82:	00 
    1e83:	7e 05                	jle    1e8a <phase_4+0x58>
    1e85:	e8 eb 06 00 00       	callq  2575 <explode_bomb>
    1e8a:	8b 3c 24             	mov    (%rsp),%edi
    1e8d:	8b 74 24 04          	mov    0x4(%rsp),%esi
    1e91:	89 fb                	mov    %edi,%ebx
    1e93:	0f af de             	imul   %esi,%ebx
    1e96:	e8 72 ff ff ff       	callq  1e0d <func4>
    1e9b:	89 c1                	mov    %eax,%ecx
    1e9d:	89 d8                	mov    %ebx,%eax
    1e9f:	99                   	cltd   
    1ea0:	f7 f9                	idiv   %ecx
    1ea2:	3d 7c 3e 00 00       	cmp    $0x3e7c,%eax
    1ea7:	74 05                	je     1eae <phase_4+0x7c>
    1ea9:	e8 c7 06 00 00       	callq  2575 <explode_bomb>
    1eae:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1eb3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1eba:	00 00 
    1ebc:	75 06                	jne    1ec4 <phase_4+0x92>
    1ebe:	48 83 c4 10          	add    $0x10,%rsp
    1ec2:	5b                   	pop    %rbx
    1ec3:	c3                   	retq   
    1ec4:	e8 77 f9 ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000001ec9 <phase_5>:
    1ec9:	41 54                	push   %r12
    1ecb:	55                   	push   %rbp
    1ecc:	53                   	push   %rbx
    1ecd:	48 83 ec 10          	sub    $0x10,%rsp
    1ed1:	48 89 fd             	mov    %rdi,%rbp
    1ed4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1edb:	00 00 
    1edd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1ee2:	31 c0                	xor    %eax,%eax
    1ee4:	e8 cc 02 00 00       	callq  21b5 <string_length>
    1ee9:	83 f8 06             	cmp    $0x6,%eax
    1eec:	75 5f                	jne    1f4d <phase_5+0x84>
    1eee:	bb 00 00 00 00       	mov    $0x0,%ebx
    1ef3:	4c 8d 25 36 17 00 00 	lea    0x1736(%rip),%r12        # 3630 <array.3438>
    1efa:	0f be 7c 1d 00       	movsbl 0x0(%rbp,%rbx,1),%edi
    1eff:	e8 b8 03 00 00       	callq  22bc <from_char_to_int>
    1f04:	83 e0 0f             	and    $0xf,%eax
    1f07:	41 0f b6 04 04       	movzbl (%r12,%rax,1),%eax
    1f0c:	88 44 1c 01          	mov    %al,0x1(%rsp,%rbx,1)
    1f10:	48 83 c3 01          	add    $0x1,%rbx
    1f14:	48 83 fb 06          	cmp    $0x6,%rbx
    1f18:	75 e0                	jne    1efa <phase_5+0x31>
    1f1a:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    1f1f:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1f24:	48 8d 35 d3 16 00 00 	lea    0x16d3(%rip),%rsi        # 35fe <_IO_stdin_used+0x1ae>
    1f2b:	e8 25 03 00 00       	callq  2255 <strings_not_equal>
    1f30:	85 c0                	test   %eax,%eax
    1f32:	75 20                	jne    1f54 <phase_5+0x8b>
    1f34:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1f39:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1f40:	00 00 
    1f42:	75 17                	jne    1f5b <phase_5+0x92>
    1f44:	48 83 c4 10          	add    $0x10,%rsp
    1f48:	5b                   	pop    %rbx
    1f49:	5d                   	pop    %rbp
    1f4a:	41 5c                	pop    %r12
    1f4c:	c3                   	retq   
    1f4d:	e8 23 06 00 00       	callq  2575 <explode_bomb>
    1f52:	eb 9a                	jmp    1eee <phase_5+0x25>
    1f54:	e8 1c 06 00 00       	callq  2575 <explode_bomb>
    1f59:	eb d9                	jmp    1f34 <phase_5+0x6b>
    1f5b:	e8 e0 f8 ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000001f60 <phase_6>:
    1f60:	41 55                	push   %r13
    1f62:	41 54                	push   %r12
    1f64:	55                   	push   %rbp
    1f65:	53                   	push   %rbx
    1f66:	48 83 ec 68          	sub    $0x68,%rsp
    1f6a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f71:	00 00 
    1f73:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1f78:	31 c0                	xor    %eax,%eax
    1f7a:	49 89 e4             	mov    %rsp,%r12
    1f7d:	4c 89 e6             	mov    %r12,%rsi
    1f80:	e8 2c 06 00 00       	callq  25b1 <read_six_numbers>
    1f85:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1f8b:	eb 25                	jmp    1fb2 <phase_6+0x52>
    1f8d:	e8 e3 05 00 00       	callq  2575 <explode_bomb>
    1f92:	eb 2d                	jmp    1fc1 <phase_6+0x61>
    1f94:	83 c3 01             	add    $0x1,%ebx
    1f97:	83 fb 05             	cmp    $0x5,%ebx
    1f9a:	7f 12                	jg     1fae <phase_6+0x4e>
    1f9c:	48 63 c3             	movslq %ebx,%rax
    1f9f:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1fa2:	39 45 00             	cmp    %eax,0x0(%rbp)
    1fa5:	75 ed                	jne    1f94 <phase_6+0x34>
    1fa7:	e8 c9 05 00 00       	callq  2575 <explode_bomb>
    1fac:	eb e6                	jmp    1f94 <phase_6+0x34>
    1fae:	49 83 c4 04          	add    $0x4,%r12
    1fb2:	4c 89 e5             	mov    %r12,%rbp
    1fb5:	41 8b 04 24          	mov    (%r12),%eax
    1fb9:	83 e8 01             	sub    $0x1,%eax
    1fbc:	83 f8 05             	cmp    $0x5,%eax
    1fbf:	77 cc                	ja     1f8d <phase_6+0x2d>
    1fc1:	41 83 c5 01          	add    $0x1,%r13d
    1fc5:	41 83 fd 06          	cmp    $0x6,%r13d
    1fc9:	74 35                	je     2000 <phase_6+0xa0>
    1fcb:	44 89 eb             	mov    %r13d,%ebx
    1fce:	eb cc                	jmp    1f9c <phase_6+0x3c>
    1fd0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1fd4:	83 c0 01             	add    $0x1,%eax
    1fd7:	39 c8                	cmp    %ecx,%eax
    1fd9:	75 f5                	jne    1fd0 <phase_6+0x70>
    1fdb:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1fe0:	48 83 c6 01          	add    $0x1,%rsi
    1fe4:	48 83 fe 06          	cmp    $0x6,%rsi
    1fe8:	74 1d                	je     2007 <phase_6+0xa7>
    1fea:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1fed:	b8 01 00 00 00       	mov    $0x1,%eax
    1ff2:	48 8d 15 37 32 20 00 	lea    0x203237(%rip),%rdx        # 205230 <node1>
    1ff9:	83 f9 01             	cmp    $0x1,%ecx
    1ffc:	7f d2                	jg     1fd0 <phase_6+0x70>
    1ffe:	eb db                	jmp    1fdb <phase_6+0x7b>
    2000:	be 00 00 00 00       	mov    $0x0,%esi
    2005:	eb e3                	jmp    1fea <phase_6+0x8a>
    2007:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    200c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    2011:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2015:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    201a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    201e:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    2023:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2027:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    202c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    2030:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    2035:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2039:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    2040:	00 
    2041:	bd 00 00 00 00       	mov    $0x0,%ebp
    2046:	eb 16                	jmp    205e <phase_6+0xfe>
    2048:	48 8b 43 08          	mov    0x8(%rbx),%rax
    204c:	8b 00                	mov    (%rax),%eax
    204e:	39 03                	cmp    %eax,(%rbx)
    2050:	7f 23                	jg     2075 <phase_6+0x115>
    2052:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2056:	83 c5 01             	add    $0x1,%ebp
    2059:	83 fd 05             	cmp    $0x5,%ebp
    205c:	74 1e                	je     207c <phase_6+0x11c>
    205e:	40 f6 c5 01          	test   $0x1,%bpl
    2062:	75 e4                	jne    2048 <phase_6+0xe8>
    2064:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2068:	8b 00                	mov    (%rax),%eax
    206a:	39 03                	cmp    %eax,(%rbx)
    206c:	7d e4                	jge    2052 <phase_6+0xf2>
    206e:	e8 02 05 00 00       	callq  2575 <explode_bomb>
    2073:	eb dd                	jmp    2052 <phase_6+0xf2>
    2075:	e8 fb 04 00 00       	callq  2575 <explode_bomb>
    207a:	eb d6                	jmp    2052 <phase_6+0xf2>
    207c:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    2081:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2088:	00 00 
    208a:	75 0b                	jne    2097 <phase_6+0x137>
    208c:	48 83 c4 68          	add    $0x68,%rsp
    2090:	5b                   	pop    %rbx
    2091:	5d                   	pop    %rbp
    2092:	41 5c                	pop    %r12
    2094:	41 5d                	pop    %r13
    2096:	c3                   	retq   
    2097:	e8 a4 f7 ff ff       	callq  1840 <__stack_chk_fail@plt>

000000000000209c <fun7>:
    209c:	48 85 ff             	test   %rdi,%rdi
    209f:	74 34                	je     20d5 <fun7+0x39>
    20a1:	48 83 ec 08          	sub    $0x8,%rsp
    20a5:	8b 17                	mov    (%rdi),%edx
    20a7:	39 f2                	cmp    %esi,%edx
    20a9:	7f 0e                	jg     20b9 <fun7+0x1d>
    20ab:	b8 00 00 00 00       	mov    $0x0,%eax
    20b0:	39 f2                	cmp    %esi,%edx
    20b2:	75 12                	jne    20c6 <fun7+0x2a>
    20b4:	48 83 c4 08          	add    $0x8,%rsp
    20b8:	c3                   	retq   
    20b9:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    20bd:	e8 da ff ff ff       	callq  209c <fun7>
    20c2:	01 c0                	add    %eax,%eax
    20c4:	eb ee                	jmp    20b4 <fun7+0x18>
    20c6:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    20ca:	e8 cd ff ff ff       	callq  209c <fun7>
    20cf:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    20d3:	eb df                	jmp    20b4 <fun7+0x18>
    20d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20da:	c3                   	retq   

00000000000020db <secret_phase>:
    20db:	53                   	push   %rbx
    20dc:	e8 11 05 00 00       	callq  25f2 <read_line>
    20e1:	ba 0a 00 00 00       	mov    $0xa,%edx
    20e6:	be 00 00 00 00       	mov    $0x0,%esi
    20eb:	48 89 c7             	mov    %rax,%rdi
    20ee:	e8 cd f7 ff ff       	callq  18c0 <strtol@plt>
    20f3:	48 89 c3             	mov    %rax,%rbx
    20f6:	8d 40 ff             	lea    -0x1(%rax),%eax
    20f9:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    20fe:	77 2b                	ja     212b <secret_phase+0x50>
    2100:	89 de                	mov    %ebx,%esi
    2102:	48 8d 3d 47 30 20 00 	lea    0x203047(%rip),%rdi        # 205150 <n1>
    2109:	e8 8e ff ff ff       	callq  209c <fun7>
    210e:	83 f8 06             	cmp    $0x6,%eax
    2111:	74 05                	je     2118 <secret_phase+0x3d>
    2113:	e8 5d 04 00 00       	callq  2575 <explode_bomb>
    2118:	48 8d 3d b9 14 00 00 	lea    0x14b9(%rip),%rdi        # 35d8 <_IO_stdin_used+0x188>
    211f:	e8 fc f6 ff ff       	callq  1820 <puts@plt>
    2124:	e8 0d 06 00 00       	callq  2736 <phase_defused>
    2129:	5b                   	pop    %rbx
    212a:	c3                   	retq   
    212b:	e8 45 04 00 00       	callq  2575 <explode_bomb>
    2130:	eb ce                	jmp    2100 <secret_phase+0x25>

0000000000002132 <sig_handler>:
    2132:	48 83 ec 08          	sub    $0x8,%rsp
    2136:	48 8d 3d 03 15 00 00 	lea    0x1503(%rip),%rdi        # 3640 <array.3438+0x10>
    213d:	e8 de f6 ff ff       	callq  1820 <puts@plt>
    2142:	bf 03 00 00 00       	mov    $0x3,%edi
    2147:	e8 04 f8 ff ff       	callq  1950 <sleep@plt>
    214c:	48 8d 35 b6 16 00 00 	lea    0x16b6(%rip),%rsi        # 3809 <array.3438+0x1d9>
    2153:	bf 01 00 00 00       	mov    $0x1,%edi
    2158:	b8 00 00 00 00       	mov    $0x0,%eax
    215d:	e8 8e f7 ff ff       	callq  18f0 <__printf_chk@plt>
    2162:	48 8b 3d 17 35 20 00 	mov    0x203517(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    2169:	e8 62 f7 ff ff       	callq  18d0 <fflush@plt>
    216e:	bf 01 00 00 00       	mov    $0x1,%edi
    2173:	e8 d8 f7 ff ff       	callq  1950 <sleep@plt>
    2178:	48 8d 3d 92 16 00 00 	lea    0x1692(%rip),%rdi        # 3811 <array.3438+0x1e1>
    217f:	e8 9c f6 ff ff       	callq  1820 <puts@plt>
    2184:	bf 10 00 00 00       	mov    $0x10,%edi
    2189:	e8 92 f7 ff ff       	callq  1920 <exit@plt>

000000000000218e <invalid_phase>:
    218e:	48 83 ec 08          	sub    $0x8,%rsp
    2192:	48 89 fa             	mov    %rdi,%rdx
    2195:	48 8d 35 7d 16 00 00 	lea    0x167d(%rip),%rsi        # 3819 <array.3438+0x1e9>
    219c:	bf 01 00 00 00       	mov    $0x1,%edi
    21a1:	b8 00 00 00 00       	mov    $0x0,%eax
    21a6:	e8 45 f7 ff ff       	callq  18f0 <__printf_chk@plt>
    21ab:	bf 08 00 00 00       	mov    $0x8,%edi
    21b0:	e8 6b f7 ff ff       	callq  1920 <exit@plt>

00000000000021b5 <string_length>:
    21b5:	80 3f 00             	cmpb   $0x0,(%rdi)
    21b8:	74 12                	je     21cc <string_length+0x17>
    21ba:	48 89 fa             	mov    %rdi,%rdx
    21bd:	48 83 c2 01          	add    $0x1,%rdx
    21c1:	89 d0                	mov    %edx,%eax
    21c3:	29 f8                	sub    %edi,%eax
    21c5:	80 3a 00             	cmpb   $0x0,(%rdx)
    21c8:	75 f3                	jne    21bd <string_length+0x8>
    21ca:	f3 c3                	repz retq 
    21cc:	b8 00 00 00 00       	mov    $0x0,%eax
    21d1:	c3                   	retq   

00000000000021d2 <check_division_equal>:
    21d2:	89 f8                	mov    %edi,%eax
    21d4:	89 d1                	mov    %edx,%ecx
    21d6:	99                   	cltd   
    21d7:	f7 fe                	idiv   %esi
    21d9:	39 c8                	cmp    %ecx,%eax
    21db:	0f 94 c0             	sete   %al
    21de:	0f b6 c0             	movzbl %al,%eax
    21e1:	c3                   	retq   

00000000000021e2 <check_multiplication_equal>:
    21e2:	0f af fe             	imul   %esi,%edi
    21e5:	39 d7                	cmp    %edx,%edi
    21e7:	0f 94 c0             	sete   %al
    21ea:	0f b6 c0             	movzbl %al,%eax
    21ed:	c3                   	retq   

00000000000021ee <check_substraction_equal>:
    21ee:	29 f7                	sub    %esi,%edi
    21f0:	39 d7                	cmp    %edx,%edi
    21f2:	0f 94 c0             	sete   %al
    21f5:	0f b6 c0             	movzbl %al,%eax
    21f8:	c3                   	retq   

00000000000021f9 <check_modulus_equal>:
    21f9:	89 f8                	mov    %edi,%eax
    21fb:	89 d1                	mov    %edx,%ecx
    21fd:	99                   	cltd   
    21fe:	f7 fe                	idiv   %esi
    2200:	39 ca                	cmp    %ecx,%edx
    2202:	0f 94 c0             	sete   %al
    2205:	0f b6 c0             	movzbl %al,%eax
    2208:	c3                   	retq   

0000000000002209 <reverse_string>:
    2209:	48 89 fe             	mov    %rdi,%rsi
    220c:	48 85 ff             	test   %rdi,%rdi
    220f:	74 40                	je     2251 <reverse_string+0x48>
    2211:	80 3f 00             	cmpb   $0x0,(%rdi)
    2214:	74 3b                	je     2251 <reverse_string+0x48>
    2216:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    221d:	b8 00 00 00 00       	mov    $0x0,%eax
    2222:	f2 ae                	repnz scas %es:(%rdi),%al
    2224:	48 89 ca             	mov    %rcx,%rdx
    2227:	48 f7 d2             	not    %rdx
    222a:	48 8d 4c 16 fe       	lea    -0x2(%rsi,%rdx,1),%rcx
    222f:	48 39 ce             	cmp    %rcx,%rsi
    2232:	73 1d                	jae    2251 <reverse_string+0x48>
    2234:	48 89 f2             	mov    %rsi,%rdx
    2237:	0f b6 02             	movzbl (%rdx),%eax
    223a:	32 01                	xor    (%rcx),%al
    223c:	88 02                	mov    %al,(%rdx)
    223e:	32 01                	xor    (%rcx),%al
    2240:	88 01                	mov    %al,(%rcx)
    2242:	30 02                	xor    %al,(%rdx)
    2244:	48 83 c2 01          	add    $0x1,%rdx
    2248:	48 83 e9 01          	sub    $0x1,%rcx
    224c:	48 39 ca             	cmp    %rcx,%rdx
    224f:	72 e6                	jb     2237 <reverse_string+0x2e>
    2251:	48 89 f0             	mov    %rsi,%rax
    2254:	c3                   	retq   

0000000000002255 <strings_not_equal>:
    2255:	41 54                	push   %r12
    2257:	55                   	push   %rbp
    2258:	53                   	push   %rbx
    2259:	48 89 fb             	mov    %rdi,%rbx
    225c:	48 89 f5             	mov    %rsi,%rbp
    225f:	e8 51 ff ff ff       	callq  21b5 <string_length>
    2264:	41 89 c4             	mov    %eax,%r12d
    2267:	48 89 ef             	mov    %rbp,%rdi
    226a:	e8 46 ff ff ff       	callq  21b5 <string_length>
    226f:	ba 01 00 00 00       	mov    $0x1,%edx
    2274:	41 39 c4             	cmp    %eax,%r12d
    2277:	74 07                	je     2280 <strings_not_equal+0x2b>
    2279:	89 d0                	mov    %edx,%eax
    227b:	5b                   	pop    %rbx
    227c:	5d                   	pop    %rbp
    227d:	41 5c                	pop    %r12
    227f:	c3                   	retq   
    2280:	0f b6 03             	movzbl (%rbx),%eax
    2283:	84 c0                	test   %al,%al
    2285:	74 27                	je     22ae <strings_not_equal+0x59>
    2287:	3a 45 00             	cmp    0x0(%rbp),%al
    228a:	75 29                	jne    22b5 <strings_not_equal+0x60>
    228c:	48 83 c3 01          	add    $0x1,%rbx
    2290:	48 83 c5 01          	add    $0x1,%rbp
    2294:	0f b6 03             	movzbl (%rbx),%eax
    2297:	84 c0                	test   %al,%al
    2299:	74 0c                	je     22a7 <strings_not_equal+0x52>
    229b:	38 45 00             	cmp    %al,0x0(%rbp)
    229e:	74 ec                	je     228c <strings_not_equal+0x37>
    22a0:	ba 01 00 00 00       	mov    $0x1,%edx
    22a5:	eb d2                	jmp    2279 <strings_not_equal+0x24>
    22a7:	ba 00 00 00 00       	mov    $0x0,%edx
    22ac:	eb cb                	jmp    2279 <strings_not_equal+0x24>
    22ae:	ba 00 00 00 00       	mov    $0x0,%edx
    22b3:	eb c4                	jmp    2279 <strings_not_equal+0x24>
    22b5:	ba 01 00 00 00       	mov    $0x1,%edx
    22ba:	eb bd                	jmp    2279 <strings_not_equal+0x24>

00000000000022bc <from_char_to_int>:
    22bc:	40 0f be c7          	movsbl %dil,%eax
    22c0:	40 80 ff 69          	cmp    $0x69,%dil
    22c4:	7f 0e                	jg     22d4 <from_char_to_int+0x18>
    22c6:	83 ef 33             	sub    $0x33,%edi
    22c9:	8d 50 fd             	lea    -0x3(%rax),%edx
    22cc:	40 80 ff 0a          	cmp    $0xa,%dil
    22d0:	0f 42 c2             	cmovb  %edx,%eax
    22d3:	c3                   	retq   
    22d4:	83 e8 09             	sub    $0x9,%eax
    22d7:	c3                   	retq   

00000000000022d8 <initialize_bomb>:
    22d8:	55                   	push   %rbp
    22d9:	53                   	push   %rbx
    22da:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    22e1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22e8:	00 00 
    22ea:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    22f1:	00 
    22f2:	31 c0                	xor    %eax,%eax
    22f4:	48 8d 35 37 fe ff ff 	lea    -0x1c9(%rip),%rsi        # 2132 <sig_handler>
    22fb:	bf 02 00 00 00       	mov    $0x2,%edi
    2300:	e8 8b f5 ff ff       	callq  1890 <signal@plt>
    2305:	48 89 e7             	mov    %rsp,%rdi
    2308:	be 40 00 00 00       	mov    $0x40,%esi
    230d:	e8 fe f5 ff ff       	callq  1910 <gethostname@plt>
    2312:	85 c0                	test   %eax,%eax
    2314:	75 45                	jne    235b <initialize_bomb+0x83>
    2316:	48 8b 3d 63 2f 20 00 	mov    0x202f63(%rip),%rdi        # 205280 <host_table>
    231d:	48 8d 1d 64 2f 20 00 	lea    0x202f64(%rip),%rbx        # 205288 <host_table+0x8>
    2324:	48 89 e5             	mov    %rsp,%rbp
    2327:	48 85 ff             	test   %rdi,%rdi
    232a:	74 19                	je     2345 <initialize_bomb+0x6d>
    232c:	48 89 ee             	mov    %rbp,%rsi
    232f:	e8 bc f4 ff ff       	callq  17f0 <strcasecmp@plt>
    2334:	85 c0                	test   %eax,%eax
    2336:	74 5e                	je     2396 <initialize_bomb+0xbe>
    2338:	48 83 c3 08          	add    $0x8,%rbx
    233c:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    2340:	48 85 ff             	test   %rdi,%rdi
    2343:	75 e7                	jne    232c <initialize_bomb+0x54>
    2345:	48 8d 3d 64 13 00 00 	lea    0x1364(%rip),%rdi        # 36b0 <array.3438+0x80>
    234c:	e8 cf f4 ff ff       	callq  1820 <puts@plt>
    2351:	bf 08 00 00 00       	mov    $0x8,%edi
    2356:	e8 c5 f5 ff ff       	callq  1920 <exit@plt>
    235b:	48 8d 3d 16 13 00 00 	lea    0x1316(%rip),%rdi        # 3678 <array.3438+0x48>
    2362:	e8 b9 f4 ff ff       	callq  1820 <puts@plt>
    2367:	bf 08 00 00 00       	mov    $0x8,%edi
    236c:	e8 af f5 ff ff       	callq  1920 <exit@plt>
    2371:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2376:	48 8d 35 ad 14 00 00 	lea    0x14ad(%rip),%rsi        # 382a <array.3438+0x1fa>
    237d:	bf 01 00 00 00       	mov    $0x1,%edi
    2382:	b8 00 00 00 00       	mov    $0x0,%eax
    2387:	e8 64 f5 ff ff       	callq  18f0 <__printf_chk@plt>
    238c:	bf 08 00 00 00       	mov    $0x8,%edi
    2391:	e8 8a f5 ff ff       	callq  1920 <exit@plt>
    2396:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    239b:	e8 b2 0d 00 00       	callq  3152 <init_driver>
    23a0:	85 c0                	test   %eax,%eax
    23a2:	78 cd                	js     2371 <initialize_bomb+0x99>
    23a4:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    23ab:	00 
    23ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    23b3:	00 00 
    23b5:	75 0a                	jne    23c1 <initialize_bomb+0xe9>
    23b7:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    23be:	5b                   	pop    %rbx
    23bf:	5d                   	pop    %rbp
    23c0:	c3                   	retq   
    23c1:	e8 7a f4 ff ff       	callq  1840 <__stack_chk_fail@plt>

00000000000023c6 <initialize_bomb_solve>:
    23c6:	f3 c3                	repz retq 

00000000000023c8 <blank_line>:
    23c8:	55                   	push   %rbp
    23c9:	53                   	push   %rbx
    23ca:	48 83 ec 08          	sub    $0x8,%rsp
    23ce:	48 89 fd             	mov    %rdi,%rbp
    23d1:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    23d5:	84 db                	test   %bl,%bl
    23d7:	74 1e                	je     23f7 <blank_line+0x2f>
    23d9:	e8 82 f5 ff ff       	callq  1960 <__ctype_b_loc@plt>
    23de:	48 83 c5 01          	add    $0x1,%rbp
    23e2:	48 0f be db          	movsbq %bl,%rbx
    23e6:	48 8b 00             	mov    (%rax),%rax
    23e9:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    23ee:	75 e1                	jne    23d1 <blank_line+0x9>
    23f0:	b8 00 00 00 00       	mov    $0x0,%eax
    23f5:	eb 05                	jmp    23fc <blank_line+0x34>
    23f7:	b8 01 00 00 00       	mov    $0x1,%eax
    23fc:	48 83 c4 08          	add    $0x8,%rsp
    2400:	5b                   	pop    %rbx
    2401:	5d                   	pop    %rbp
    2402:	c3                   	retq   

0000000000002403 <skip>:
    2403:	55                   	push   %rbp
    2404:	53                   	push   %rbx
    2405:	48 83 ec 08          	sub    $0x8,%rsp
    2409:	48 8d 2d b0 32 20 00 	lea    0x2032b0(%rip),%rbp        # 2056c0 <input_strings>
    2410:	48 63 05 95 32 20 00 	movslq 0x203295(%rip),%rax        # 2056ac <num_input_strings>
    2417:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    241b:	48 c1 e7 04          	shl    $0x4,%rdi
    241f:	48 01 ef             	add    %rbp,%rdi
    2422:	48 8b 15 87 32 20 00 	mov    0x203287(%rip),%rdx        # 2056b0 <infile>
    2429:	be 50 00 00 00       	mov    $0x50,%esi
    242e:	e8 4d f4 ff ff       	callq  1880 <fgets@plt>
    2433:	48 89 c3             	mov    %rax,%rbx
    2436:	48 85 c0             	test   %rax,%rax
    2439:	74 0c                	je     2447 <skip+0x44>
    243b:	48 89 c7             	mov    %rax,%rdi
    243e:	e8 85 ff ff ff       	callq  23c8 <blank_line>
    2443:	85 c0                	test   %eax,%eax
    2445:	75 c9                	jne    2410 <skip+0xd>
    2447:	48 89 d8             	mov    %rbx,%rax
    244a:	48 83 c4 08          	add    $0x8,%rsp
    244e:	5b                   	pop    %rbx
    244f:	5d                   	pop    %rbp
    2450:	c3                   	retq   

0000000000002451 <send_msg>:
    2451:	53                   	push   %rbx
    2452:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    2459:	41 89 f8             	mov    %edi,%r8d
    245c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2463:	00 00 
    2465:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    246c:	00 
    246d:	31 c0                	xor    %eax,%eax
    246f:	8b 35 37 32 20 00    	mov    0x203237(%rip),%esi        # 2056ac <num_input_strings>
    2475:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2478:	48 98                	cltq   
    247a:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    247e:	48 c1 e2 04          	shl    $0x4,%rdx
    2482:	48 8d 05 37 32 20 00 	lea    0x203237(%rip),%rax        # 2056c0 <input_strings>
    2489:	48 01 c2             	add    %rax,%rdx
    248c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2493:	b8 00 00 00 00       	mov    $0x0,%eax
    2498:	48 89 d7             	mov    %rdx,%rdi
    249b:	f2 ae                	repnz scas %es:(%rdi),%al
    249d:	48 89 c8             	mov    %rcx,%rax
    24a0:	48 f7 d0             	not    %rax
    24a3:	48 83 c0 63          	add    $0x63,%rax
    24a7:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    24ad:	0f 87 86 00 00 00    	ja     2539 <send_msg+0xe8>
    24b3:	45 85 c0             	test   %r8d,%r8d
    24b6:	4c 8d 0d 87 13 00 00 	lea    0x1387(%rip),%r9        # 3844 <array.3438+0x214>
    24bd:	48 8d 05 88 13 00 00 	lea    0x1388(%rip),%rax        # 384c <array.3438+0x21c>
    24c4:	4c 0f 44 c8          	cmove  %rax,%r9
    24c8:	48 89 e3             	mov    %rsp,%rbx
    24cb:	52                   	push   %rdx
    24cc:	56                   	push   %rsi
    24cd:	44 8b 05 70 2c 20 00 	mov    0x202c70(%rip),%r8d        # 205144 <bomb_id>
    24d4:	48 8d 0d 7a 13 00 00 	lea    0x137a(%rip),%rcx        # 3855 <array.3438+0x225>
    24db:	ba 00 20 00 00       	mov    $0x2000,%edx
    24e0:	be 01 00 00 00       	mov    $0x1,%esi
    24e5:	48 89 df             	mov    %rbx,%rdi
    24e8:	b8 00 00 00 00       	mov    $0x0,%eax
    24ed:	e8 7e f4 ff ff       	callq  1970 <__sprintf_chk@plt>
    24f2:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    24f9:	00 
    24fa:	b9 00 00 00 00       	mov    $0x0,%ecx
    24ff:	48 89 da             	mov    %rbx,%rdx
    2502:	48 8d 35 17 2c 20 00 	lea    0x202c17(%rip),%rsi        # 205120 <user_password>
    2509:	48 8d 3d 28 2c 20 00 	lea    0x202c28(%rip),%rdi        # 205138 <userid>
    2510:	e8 46 0e 00 00       	callq  335b <driver_post>
    2515:	48 83 c4 10          	add    $0x10,%rsp
    2519:	85 c0                	test   %eax,%eax
    251b:	78 3c                	js     2559 <send_msg+0x108>
    251d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2524:	00 
    2525:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    252c:	00 00 
    252e:	75 40                	jne    2570 <send_msg+0x11f>
    2530:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    2537:	5b                   	pop    %rbx
    2538:	c3                   	retq   
    2539:	48 8d 35 a8 11 00 00 	lea    0x11a8(%rip),%rsi        # 36e8 <array.3438+0xb8>
    2540:	bf 01 00 00 00       	mov    $0x1,%edi
    2545:	b8 00 00 00 00       	mov    $0x0,%eax
    254a:	e8 a1 f3 ff ff       	callq  18f0 <__printf_chk@plt>
    254f:	bf 08 00 00 00       	mov    $0x8,%edi
    2554:	e8 c7 f3 ff ff       	callq  1920 <exit@plt>
    2559:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2560:	00 
    2561:	e8 ba f2 ff ff       	callq  1820 <puts@plt>
    2566:	bf 00 00 00 00       	mov    $0x0,%edi
    256b:	e8 b0 f3 ff ff       	callq  1920 <exit@plt>
    2570:	e8 cb f2 ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000002575 <explode_bomb>:
    2575:	48 83 ec 08          	sub    $0x8,%rsp
    2579:	48 8d 3d e1 12 00 00 	lea    0x12e1(%rip),%rdi        # 3861 <array.3438+0x231>
    2580:	e8 9b f2 ff ff       	callq  1820 <puts@plt>
    2585:	48 8d 3d de 12 00 00 	lea    0x12de(%rip),%rdi        # 386a <array.3438+0x23a>
    258c:	e8 8f f2 ff ff       	callq  1820 <puts@plt>
    2591:	bf 00 00 00 00       	mov    $0x0,%edi
    2596:	e8 b6 fe ff ff       	callq  2451 <send_msg>
    259b:	48 8d 3d 6e 11 00 00 	lea    0x116e(%rip),%rdi        # 3710 <array.3438+0xe0>
    25a2:	e8 79 f2 ff ff       	callq  1820 <puts@plt>
    25a7:	bf 08 00 00 00       	mov    $0x8,%edi
    25ac:	e8 6f f3 ff ff       	callq  1920 <exit@plt>

00000000000025b1 <read_six_numbers>:
    25b1:	48 83 ec 08          	sub    $0x8,%rsp
    25b5:	48 89 f2             	mov    %rsi,%rdx
    25b8:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    25bc:	48 8d 46 14          	lea    0x14(%rsi),%rax
    25c0:	50                   	push   %rax
    25c1:	48 8d 46 10          	lea    0x10(%rsi),%rax
    25c5:	50                   	push   %rax
    25c6:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    25ca:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    25ce:	48 8d 35 ac 12 00 00 	lea    0x12ac(%rip),%rsi        # 3881 <array.3438+0x251>
    25d5:	b8 00 00 00 00       	mov    $0x0,%eax
    25da:	e8 01 f3 ff ff       	callq  18e0 <__isoc99_sscanf@plt>
    25df:	48 83 c4 10          	add    $0x10,%rsp
    25e3:	83 f8 05             	cmp    $0x5,%eax
    25e6:	7e 05                	jle    25ed <read_six_numbers+0x3c>
    25e8:	48 83 c4 08          	add    $0x8,%rsp
    25ec:	c3                   	retq   
    25ed:	e8 83 ff ff ff       	callq  2575 <explode_bomb>

00000000000025f2 <read_line>:
    25f2:	48 83 ec 08          	sub    $0x8,%rsp
    25f6:	b8 00 00 00 00       	mov    $0x0,%eax
    25fb:	e8 03 fe ff ff       	callq  2403 <skip>
    2600:	48 85 c0             	test   %rax,%rax
    2603:	74 6f                	je     2674 <read_line+0x82>
    2605:	8b 35 a1 30 20 00    	mov    0x2030a1(%rip),%esi        # 2056ac <num_input_strings>
    260b:	48 63 c6             	movslq %esi,%rax
    260e:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    2612:	48 c1 e2 04          	shl    $0x4,%rdx
    2616:	48 8d 05 a3 30 20 00 	lea    0x2030a3(%rip),%rax        # 2056c0 <input_strings>
    261d:	48 01 c2             	add    %rax,%rdx
    2620:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2627:	b8 00 00 00 00       	mov    $0x0,%eax
    262c:	48 89 d7             	mov    %rdx,%rdi
    262f:	f2 ae                	repnz scas %es:(%rdi),%al
    2631:	48 f7 d1             	not    %rcx
    2634:	48 83 e9 01          	sub    $0x1,%rcx
    2638:	83 f9 4e             	cmp    $0x4e,%ecx
    263b:	0f 8f ab 00 00 00    	jg     26ec <read_line+0xfa>
    2641:	83 e9 01             	sub    $0x1,%ecx
    2644:	48 63 c9             	movslq %ecx,%rcx
    2647:	48 63 c6             	movslq %esi,%rax
    264a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    264e:	48 c1 e0 04          	shl    $0x4,%rax
    2652:	48 89 c7             	mov    %rax,%rdi
    2655:	48 8d 05 64 30 20 00 	lea    0x203064(%rip),%rax        # 2056c0 <input_strings>
    265c:	48 01 f8             	add    %rdi,%rax
    265f:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    2663:	83 c6 01             	add    $0x1,%esi
    2666:	89 35 40 30 20 00    	mov    %esi,0x203040(%rip)        # 2056ac <num_input_strings>
    266c:	48 89 d0             	mov    %rdx,%rax
    266f:	48 83 c4 08          	add    $0x8,%rsp
    2673:	c3                   	retq   
    2674:	48 8b 05 15 30 20 00 	mov    0x203015(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    267b:	48 39 05 2e 30 20 00 	cmp    %rax,0x20302e(%rip)        # 2056b0 <infile>
    2682:	74 1b                	je     269f <read_line+0xad>
    2684:	48 8d 3d 26 12 00 00 	lea    0x1226(%rip),%rdi        # 38b1 <array.3438+0x281>
    268b:	e8 50 f1 ff ff       	callq  17e0 <getenv@plt>
    2690:	48 85 c0             	test   %rax,%rax
    2693:	74 20                	je     26b5 <read_line+0xc3>
    2695:	bf 00 00 00 00       	mov    $0x0,%edi
    269a:	e8 81 f2 ff ff       	callq  1920 <exit@plt>
    269f:	48 8d 3d ed 11 00 00 	lea    0x11ed(%rip),%rdi        # 3893 <array.3438+0x263>
    26a6:	e8 75 f1 ff ff       	callq  1820 <puts@plt>
    26ab:	bf 08 00 00 00       	mov    $0x8,%edi
    26b0:	e8 6b f2 ff ff       	callq  1920 <exit@plt>
    26b5:	48 8b 05 d4 2f 20 00 	mov    0x202fd4(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    26bc:	48 89 05 ed 2f 20 00 	mov    %rax,0x202fed(%rip)        # 2056b0 <infile>
    26c3:	b8 00 00 00 00       	mov    $0x0,%eax
    26c8:	e8 36 fd ff ff       	callq  2403 <skip>
    26cd:	48 85 c0             	test   %rax,%rax
    26d0:	0f 85 2f ff ff ff    	jne    2605 <read_line+0x13>
    26d6:	48 8d 3d b6 11 00 00 	lea    0x11b6(%rip),%rdi        # 3893 <array.3438+0x263>
    26dd:	e8 3e f1 ff ff       	callq  1820 <puts@plt>
    26e2:	bf 00 00 00 00       	mov    $0x0,%edi
    26e7:	e8 34 f2 ff ff       	callq  1920 <exit@plt>
    26ec:	48 8d 3d c9 11 00 00 	lea    0x11c9(%rip),%rdi        # 38bc <array.3438+0x28c>
    26f3:	e8 28 f1 ff ff       	callq  1820 <puts@plt>
    26f8:	8b 05 ae 2f 20 00    	mov    0x202fae(%rip),%eax        # 2056ac <num_input_strings>
    26fe:	8d 50 01             	lea    0x1(%rax),%edx
    2701:	89 15 a5 2f 20 00    	mov    %edx,0x202fa5(%rip)        # 2056ac <num_input_strings>
    2707:	48 98                	cltq   
    2709:	48 6b c0 50          	imul   $0x50,%rax,%rax
    270d:	48 8d 15 ac 2f 20 00 	lea    0x202fac(%rip),%rdx        # 2056c0 <input_strings>
    2714:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    271b:	75 6e 63 
    271e:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2725:	2a 2a 00 
    2728:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    272c:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2731:	e8 3f fe ff ff       	callq  2575 <explode_bomb>

0000000000002736 <phase_defused>:
    2736:	48 83 ec 78          	sub    $0x78,%rsp
    273a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2741:	00 00 
    2743:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    2748:	31 c0                	xor    %eax,%eax
    274a:	bf 01 00 00 00       	mov    $0x1,%edi
    274f:	e8 fd fc ff ff       	callq  2451 <send_msg>
    2754:	83 3d 51 2f 20 00 06 	cmpl   $0x6,0x202f51(%rip)        # 2056ac <num_input_strings>
    275b:	74 19                	je     2776 <phase_defused+0x40>
    275d:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    2762:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2769:	00 00 
    276b:	0f 85 84 00 00 00    	jne    27f5 <phase_defused+0xbf>
    2771:	48 83 c4 78          	add    $0x78,%rsp
    2775:	c3                   	retq   
    2776:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    277b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    2780:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    2785:	48 8d 35 4b 11 00 00 	lea    0x114b(%rip),%rsi        # 38d7 <array.3438+0x2a7>
    278c:	48 8d 3d 1d 30 20 00 	lea    0x20301d(%rip),%rdi        # 2057b0 <input_strings+0xf0>
    2793:	b8 00 00 00 00       	mov    $0x0,%eax
    2798:	e8 43 f1 ff ff       	callq  18e0 <__isoc99_sscanf@plt>
    279d:	83 f8 03             	cmp    $0x3,%eax
    27a0:	74 1a                	je     27bc <phase_defused+0x86>
    27a2:	48 8d 3d ef 0f 00 00 	lea    0xfef(%rip),%rdi        # 3798 <array.3438+0x168>
    27a9:	e8 72 f0 ff ff       	callq  1820 <puts@plt>
    27ae:	48 8d 3d 13 10 00 00 	lea    0x1013(%rip),%rdi        # 37c8 <array.3438+0x198>
    27b5:	e8 66 f0 ff ff       	callq  1820 <puts@plt>
    27ba:	eb a1                	jmp    275d <phase_defused+0x27>
    27bc:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    27c1:	48 8d 35 18 11 00 00 	lea    0x1118(%rip),%rsi        # 38e0 <array.3438+0x2b0>
    27c8:	e8 88 fa ff ff       	callq  2255 <strings_not_equal>
    27cd:	85 c0                	test   %eax,%eax
    27cf:	75 d1                	jne    27a2 <phase_defused+0x6c>
    27d1:	48 8d 3d 60 0f 00 00 	lea    0xf60(%rip),%rdi        # 3738 <array.3438+0x108>
    27d8:	e8 43 f0 ff ff       	callq  1820 <puts@plt>
    27dd:	48 8d 3d 7c 0f 00 00 	lea    0xf7c(%rip),%rdi        # 3760 <array.3438+0x130>
    27e4:	e8 37 f0 ff ff       	callq  1820 <puts@plt>
    27e9:	b8 00 00 00 00       	mov    $0x0,%eax
    27ee:	e8 e8 f8 ff ff       	callq  20db <secret_phase>
    27f3:	eb ad                	jmp    27a2 <phase_defused+0x6c>
    27f5:	e8 46 f0 ff ff       	callq  1840 <__stack_chk_fail@plt>

00000000000027fa <sigalrm_handler>:
    27fa:	48 83 ec 08          	sub    $0x8,%rsp
    27fe:	b9 00 00 00 00       	mov    $0x0,%ecx
    2803:	48 8d 15 9e 13 00 00 	lea    0x139e(%rip),%rdx        # 3ba8 <array.3438+0x578>
    280a:	be 01 00 00 00       	mov    $0x1,%esi
    280f:	48 8b 3d 8a 2e 20 00 	mov    0x202e8a(%rip),%rdi        # 2056a0 <stderr@@GLIBC_2.2.5>
    2816:	b8 00 00 00 00       	mov    $0x0,%eax
    281b:	e8 20 f1 ff ff       	callq  1940 <__fprintf_chk@plt>
    2820:	bf 01 00 00 00       	mov    $0x1,%edi
    2825:	e8 f6 f0 ff ff       	callq  1920 <exit@plt>

000000000000282a <rio_readlineb>:
    282a:	41 56                	push   %r14
    282c:	41 55                	push   %r13
    282e:	41 54                	push   %r12
    2830:	55                   	push   %rbp
    2831:	53                   	push   %rbx
    2832:	48 89 fb             	mov    %rdi,%rbx
    2835:	49 89 f4             	mov    %rsi,%r12
    2838:	49 89 d6             	mov    %rdx,%r14
    283b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2841:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    2845:	48 83 fa 01          	cmp    $0x1,%rdx
    2849:	77 0c                	ja     2857 <rio_readlineb+0x2d>
    284b:	eb 60                	jmp    28ad <rio_readlineb+0x83>
    284d:	e8 ae ef ff ff       	callq  1800 <__errno_location@plt>
    2852:	83 38 04             	cmpl   $0x4,(%rax)
    2855:	75 67                	jne    28be <rio_readlineb+0x94>
    2857:	8b 43 04             	mov    0x4(%rbx),%eax
    285a:	85 c0                	test   %eax,%eax
    285c:	7f 20                	jg     287e <rio_readlineb+0x54>
    285e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2863:	48 89 ee             	mov    %rbp,%rsi
    2866:	8b 3b                	mov    (%rbx),%edi
    2868:	e8 03 f0 ff ff       	callq  1870 <read@plt>
    286d:	89 43 04             	mov    %eax,0x4(%rbx)
    2870:	85 c0                	test   %eax,%eax
    2872:	78 d9                	js     284d <rio_readlineb+0x23>
    2874:	85 c0                	test   %eax,%eax
    2876:	74 4f                	je     28c7 <rio_readlineb+0x9d>
    2878:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    287c:	eb d9                	jmp    2857 <rio_readlineb+0x2d>
    287e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    2882:	0f b6 0a             	movzbl (%rdx),%ecx
    2885:	48 83 c2 01          	add    $0x1,%rdx
    2889:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    288d:	83 e8 01             	sub    $0x1,%eax
    2890:	89 43 04             	mov    %eax,0x4(%rbx)
    2893:	49 83 c4 01          	add    $0x1,%r12
    2897:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    289c:	80 f9 0a             	cmp    $0xa,%cl
    289f:	74 0c                	je     28ad <rio_readlineb+0x83>
    28a1:	41 83 c5 01          	add    $0x1,%r13d
    28a5:	49 63 c5             	movslq %r13d,%rax
    28a8:	4c 39 f0             	cmp    %r14,%rax
    28ab:	72 aa                	jb     2857 <rio_readlineb+0x2d>
    28ad:	41 c6 04 24 00       	movb   $0x0,(%r12)
    28b2:	49 63 c5             	movslq %r13d,%rax
    28b5:	5b                   	pop    %rbx
    28b6:	5d                   	pop    %rbp
    28b7:	41 5c                	pop    %r12
    28b9:	41 5d                	pop    %r13
    28bb:	41 5e                	pop    %r14
    28bd:	c3                   	retq   
    28be:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    28c5:	eb 05                	jmp    28cc <rio_readlineb+0xa2>
    28c7:	b8 00 00 00 00       	mov    $0x0,%eax
    28cc:	85 c0                	test   %eax,%eax
    28ce:	75 0d                	jne    28dd <rio_readlineb+0xb3>
    28d0:	b8 00 00 00 00       	mov    $0x0,%eax
    28d5:	41 83 fd 01          	cmp    $0x1,%r13d
    28d9:	75 d2                	jne    28ad <rio_readlineb+0x83>
    28db:	eb d8                	jmp    28b5 <rio_readlineb+0x8b>
    28dd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    28e4:	eb cf                	jmp    28b5 <rio_readlineb+0x8b>

00000000000028e6 <submitr>:
    28e6:	41 57                	push   %r15
    28e8:	41 56                	push   %r14
    28ea:	41 55                	push   %r13
    28ec:	41 54                	push   %r12
    28ee:	55                   	push   %rbp
    28ef:	53                   	push   %rbx
    28f0:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    28f7:	49 89 fd             	mov    %rdi,%r13
    28fa:	89 f5                	mov    %esi,%ebp
    28fc:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    2901:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2906:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    290b:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    2910:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2917:	00 
    2918:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    291f:	00 
    2920:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2927:	00 00 
    2929:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    2930:	00 
    2931:	31 c0                	xor    %eax,%eax
    2933:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    293a:	00 
    293b:	ba 00 00 00 00       	mov    $0x0,%edx
    2940:	be 01 00 00 00       	mov    $0x1,%esi
    2945:	bf 02 00 00 00       	mov    $0x2,%edi
    294a:	e8 31 f0 ff ff       	callq  1980 <socket@plt>
    294f:	85 c0                	test   %eax,%eax
    2951:	0f 88 35 01 00 00    	js     2a8c <submitr+0x1a6>
    2957:	41 89 c4             	mov    %eax,%r12d
    295a:	4c 89 ef             	mov    %r13,%rdi
    295d:	e8 3e ef ff ff       	callq  18a0 <gethostbyname@plt>
    2962:	48 85 c0             	test   %rax,%rax
    2965:	0f 84 71 01 00 00    	je     2adc <submitr+0x1f6>
    296b:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2970:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    2977:	00 00 
    2979:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    2980:	00 
    2981:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    2988:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    298f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2993:	48 8b 40 18          	mov    0x18(%rax),%rax
    2997:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    299c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    29a1:	48 8b 30             	mov    (%rax),%rsi
    29a4:	e8 07 ef ff ff       	callq  18b0 <__memmove_chk@plt>
    29a9:	66 c1 cd 08          	ror    $0x8,%bp
    29ad:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    29b2:	ba 10 00 00 00       	mov    $0x10,%edx
    29b7:	4c 89 ee             	mov    %r13,%rsi
    29ba:	44 89 e7             	mov    %r12d,%edi
    29bd:	e8 6e ef ff ff       	callq  1930 <connect@plt>
    29c2:	85 c0                	test   %eax,%eax
    29c4:	0f 88 7d 01 00 00    	js     2b47 <submitr+0x261>
    29ca:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    29d1:	b8 00 00 00 00       	mov    $0x0,%eax
    29d6:	4c 89 c9             	mov    %r9,%rcx
    29d9:	48 89 df             	mov    %rbx,%rdi
    29dc:	f2 ae                	repnz scas %es:(%rdi),%al
    29de:	48 89 ce             	mov    %rcx,%rsi
    29e1:	48 f7 d6             	not    %rsi
    29e4:	4c 89 c9             	mov    %r9,%rcx
    29e7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    29ec:	f2 ae                	repnz scas %es:(%rdi),%al
    29ee:	49 89 c8             	mov    %rcx,%r8
    29f1:	4c 89 c9             	mov    %r9,%rcx
    29f4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    29f9:	f2 ae                	repnz scas %es:(%rdi),%al
    29fb:	48 89 ca             	mov    %rcx,%rdx
    29fe:	48 f7 d2             	not    %rdx
    2a01:	4c 89 c9             	mov    %r9,%rcx
    2a04:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2a09:	f2 ae                	repnz scas %es:(%rdi),%al
    2a0b:	4c 29 c2             	sub    %r8,%rdx
    2a0e:	48 29 ca             	sub    %rcx,%rdx
    2a11:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    2a16:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    2a1b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2a21:	0f 87 7d 01 00 00    	ja     2ba4 <submitr+0x2be>
    2a27:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2a2e:	00 
    2a2f:	b9 00 04 00 00       	mov    $0x400,%ecx
    2a34:	b8 00 00 00 00       	mov    $0x0,%eax
    2a39:	48 89 d7             	mov    %rdx,%rdi
    2a3c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2a3f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2a46:	48 89 df             	mov    %rbx,%rdi
    2a49:	f2 ae                	repnz scas %es:(%rdi),%al
    2a4b:	48 89 ca             	mov    %rcx,%rdx
    2a4e:	48 f7 d2             	not    %rdx
    2a51:	48 89 d1             	mov    %rdx,%rcx
    2a54:	48 83 e9 01          	sub    $0x1,%rcx
    2a58:	85 c9                	test   %ecx,%ecx
    2a5a:	0f 84 3f 06 00 00    	je     309f <submitr+0x7b9>
    2a60:	8d 41 ff             	lea    -0x1(%rcx),%eax
    2a63:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2a68:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2a6f:	00 
    2a70:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2a77:	00 
    2a78:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2a7d:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    2a84:	00 20 00 
    2a87:	e9 a6 01 00 00       	jmpq   2c32 <submitr+0x34c>
    2a8c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a93:	3a 20 43 
    2a96:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a9d:	20 75 6e 
    2aa0:	49 89 07             	mov    %rax,(%r15)
    2aa3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2aa7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2aae:	74 6f 20 
    2ab1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2ab8:	65 20 73 
    2abb:	49 89 47 10          	mov    %rax,0x10(%r15)
    2abf:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2ac3:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2aca:	65 
    2acb:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2ad2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ad7:	e9 9a 04 00 00       	jmpq   2f76 <submitr+0x690>
    2adc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2ae3:	3a 20 44 
    2ae6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2aed:	20 75 6e 
    2af0:	49 89 07             	mov    %rax,(%r15)
    2af3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2af7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2afe:	74 6f 20 
    2b01:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b08:	76 65 20 
    2b0b:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b0f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b13:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2b1a:	72 20 61 
    2b1d:	49 89 47 20          	mov    %rax,0x20(%r15)
    2b21:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2b28:	65 
    2b29:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2b30:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2b35:	44 89 e7             	mov    %r12d,%edi
    2b38:	e8 23 ed ff ff       	callq  1860 <close@plt>
    2b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b42:	e9 2f 04 00 00       	jmpq   2f76 <submitr+0x690>
    2b47:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b4e:	3a 20 55 
    2b51:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2b58:	20 74 6f 
    2b5b:	49 89 07             	mov    %rax,(%r15)
    2b5e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2b62:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2b69:	65 63 74 
    2b6c:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2b73:	68 65 20 
    2b76:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b7a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b7e:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2b85:	76 
    2b86:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2b8d:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2b92:	44 89 e7             	mov    %r12d,%edi
    2b95:	e8 c6 ec ff ff       	callq  1860 <close@plt>
    2b9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b9f:	e9 d2 03 00 00       	jmpq   2f76 <submitr+0x690>
    2ba4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2bab:	3a 20 52 
    2bae:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2bb5:	20 73 74 
    2bb8:	49 89 07             	mov    %rax,(%r15)
    2bbb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2bbf:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2bc6:	74 6f 6f 
    2bc9:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2bd0:	65 2e 20 
    2bd3:	49 89 47 10          	mov    %rax,0x10(%r15)
    2bd7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2bdb:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2be2:	61 73 65 
    2be5:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2bec:	49 54 52 
    2bef:	49 89 47 20          	mov    %rax,0x20(%r15)
    2bf3:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2bf7:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2bfe:	55 46 00 
    2c01:	49 89 47 30          	mov    %rax,0x30(%r15)
    2c05:	44 89 e7             	mov    %r12d,%edi
    2c08:	e8 53 ec ff ff       	callq  1860 <close@plt>
    2c0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c12:	e9 5f 03 00 00       	jmpq   2f76 <submitr+0x690>
    2c17:	49 0f a3 c5          	bt     %rax,%r13
    2c1b:	73 21                	jae    2c3e <submitr+0x358>
    2c1d:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2c21:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2c25:	48 83 c3 01          	add    $0x1,%rbx
    2c29:	4c 39 f3             	cmp    %r14,%rbx
    2c2c:	0f 84 6d 04 00 00    	je     309f <submitr+0x7b9>
    2c32:	44 0f b6 03          	movzbl (%rbx),%r8d
    2c36:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2c3a:	3c 35                	cmp    $0x35,%al
    2c3c:	76 d9                	jbe    2c17 <submitr+0x331>
    2c3e:	44 89 c0             	mov    %r8d,%eax
    2c41:	83 e0 df             	and    $0xffffffdf,%eax
    2c44:	83 e8 41             	sub    $0x41,%eax
    2c47:	3c 19                	cmp    $0x19,%al
    2c49:	76 d2                	jbe    2c1d <submitr+0x337>
    2c4b:	41 80 f8 20          	cmp    $0x20,%r8b
    2c4f:	74 60                	je     2cb1 <submitr+0x3cb>
    2c51:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2c55:	3c 5f                	cmp    $0x5f,%al
    2c57:	76 0a                	jbe    2c63 <submitr+0x37d>
    2c59:	41 80 f8 09          	cmp    $0x9,%r8b
    2c5d:	0f 85 af 03 00 00    	jne    3012 <submitr+0x72c>
    2c63:	45 0f b6 c0          	movzbl %r8b,%r8d
    2c67:	48 8d 0d 12 10 00 00 	lea    0x1012(%rip),%rcx        # 3c80 <array.3438+0x650>
    2c6e:	ba 08 00 00 00       	mov    $0x8,%edx
    2c73:	be 01 00 00 00       	mov    $0x1,%esi
    2c78:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2c7d:	b8 00 00 00 00       	mov    $0x0,%eax
    2c82:	e8 e9 ec ff ff       	callq  1970 <__sprintf_chk@plt>
    2c87:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2c8e:	00 
    2c8f:	88 45 00             	mov    %al,0x0(%rbp)
    2c92:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2c99:	00 
    2c9a:	88 45 01             	mov    %al,0x1(%rbp)
    2c9d:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2ca4:	00 
    2ca5:	88 45 02             	mov    %al,0x2(%rbp)
    2ca8:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2cac:	e9 74 ff ff ff       	jmpq   2c25 <submitr+0x33f>
    2cb1:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2cb5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2cb9:	e9 67 ff ff ff       	jmpq   2c25 <submitr+0x33f>
    2cbe:	49 01 c5             	add    %rax,%r13
    2cc1:	48 29 c5             	sub    %rax,%rbp
    2cc4:	74 26                	je     2cec <submitr+0x406>
    2cc6:	48 89 ea             	mov    %rbp,%rdx
    2cc9:	4c 89 ee             	mov    %r13,%rsi
    2ccc:	44 89 e7             	mov    %r12d,%edi
    2ccf:	e8 5c eb ff ff       	callq  1830 <write@plt>
    2cd4:	48 85 c0             	test   %rax,%rax
    2cd7:	7f e5                	jg     2cbe <submitr+0x3d8>
    2cd9:	e8 22 eb ff ff       	callq  1800 <__errno_location@plt>
    2cde:	83 38 04             	cmpl   $0x4,(%rax)
    2ce1:	0f 85 31 01 00 00    	jne    2e18 <submitr+0x532>
    2ce7:	4c 89 f0             	mov    %r14,%rax
    2cea:	eb d2                	jmp    2cbe <submitr+0x3d8>
    2cec:	48 85 db             	test   %rbx,%rbx
    2cef:	0f 88 23 01 00 00    	js     2e18 <submitr+0x532>
    2cf5:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2cfa:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2d01:	00 
    2d02:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2d07:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2d0b:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2d10:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2d17:	00 
    2d18:	ba 00 20 00 00       	mov    $0x2000,%edx
    2d1d:	e8 08 fb ff ff       	callq  282a <rio_readlineb>
    2d22:	48 85 c0             	test   %rax,%rax
    2d25:	0f 8e 4c 01 00 00    	jle    2e77 <submitr+0x591>
    2d2b:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2d30:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2d37:	00 
    2d38:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2d3f:	00 
    2d40:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2d47:	00 
    2d48:	48 8d 35 38 0f 00 00 	lea    0xf38(%rip),%rsi        # 3c87 <array.3438+0x657>
    2d4f:	b8 00 00 00 00       	mov    $0x0,%eax
    2d54:	e8 87 eb ff ff       	callq  18e0 <__isoc99_sscanf@plt>
    2d59:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2d5e:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2d65:	0f 85 80 01 00 00    	jne    2eeb <submitr+0x605>
    2d6b:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2d72:	00 
    2d73:	48 8d 2d 1e 0f 00 00 	lea    0xf1e(%rip),%rbp        # 3c98 <array.3438+0x668>
    2d7a:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2d7f:	b9 03 00 00 00       	mov    $0x3,%ecx
    2d84:	48 89 de             	mov    %rbx,%rsi
    2d87:	48 89 ef             	mov    %rbp,%rdi
    2d8a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d8c:	0f 97 c0             	seta   %al
    2d8f:	1c 00                	sbb    $0x0,%al
    2d91:	84 c0                	test   %al,%al
    2d93:	0f 84 89 01 00 00    	je     2f22 <submitr+0x63c>
    2d99:	ba 00 20 00 00       	mov    $0x2000,%edx
    2d9e:	48 89 de             	mov    %rbx,%rsi
    2da1:	4c 89 ef             	mov    %r13,%rdi
    2da4:	e8 81 fa ff ff       	callq  282a <rio_readlineb>
    2da9:	48 85 c0             	test   %rax,%rax
    2dac:	7f d1                	jg     2d7f <submitr+0x499>
    2dae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2db5:	3a 20 43 
    2db8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2dbf:	20 75 6e 
    2dc2:	49 89 07             	mov    %rax,(%r15)
    2dc5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2dc9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2dd0:	74 6f 20 
    2dd3:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2dda:	68 65 61 
    2ddd:	49 89 47 10          	mov    %rax,0x10(%r15)
    2de1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2de5:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2dec:	66 72 6f 
    2def:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2df6:	76 65 72 
    2df9:	49 89 47 20          	mov    %rax,0x20(%r15)
    2dfd:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2e01:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2e06:	44 89 e7             	mov    %r12d,%edi
    2e09:	e8 52 ea ff ff       	callq  1860 <close@plt>
    2e0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e13:	e9 5e 01 00 00       	jmpq   2f76 <submitr+0x690>
    2e18:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e1f:	3a 20 43 
    2e22:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e29:	20 75 6e 
    2e2c:	49 89 07             	mov    %rax,(%r15)
    2e2f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2e33:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e3a:	74 6f 20 
    2e3d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2e44:	20 74 6f 
    2e47:	49 89 47 10          	mov    %rax,0x10(%r15)
    2e4b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2e4f:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2e56:	73 65 72 
    2e59:	49 89 47 20          	mov    %rax,0x20(%r15)
    2e5d:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2e64:	00 
    2e65:	44 89 e7             	mov    %r12d,%edi
    2e68:	e8 f3 e9 ff ff       	callq  1860 <close@plt>
    2e6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e72:	e9 ff 00 00 00       	jmpq   2f76 <submitr+0x690>
    2e77:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e7e:	3a 20 43 
    2e81:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e88:	20 75 6e 
    2e8b:	49 89 07             	mov    %rax,(%r15)
    2e8e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2e92:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e99:	74 6f 20 
    2e9c:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2ea3:	66 69 72 
    2ea6:	49 89 47 10          	mov    %rax,0x10(%r15)
    2eaa:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2eae:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2eb5:	61 64 65 
    2eb8:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2ebf:	6d 20 73 
    2ec2:	49 89 47 20          	mov    %rax,0x20(%r15)
    2ec6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2eca:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2ed1:	65 
    2ed2:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2ed9:	44 89 e7             	mov    %r12d,%edi
    2edc:	e8 7f e9 ff ff       	callq  1860 <close@plt>
    2ee1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ee6:	e9 8b 00 00 00       	jmpq   2f76 <submitr+0x690>
    2eeb:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2ef2:	00 
    2ef3:	48 8d 0d d6 0c 00 00 	lea    0xcd6(%rip),%rcx        # 3bd0 <array.3438+0x5a0>
    2efa:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2f01:	be 01 00 00 00       	mov    $0x1,%esi
    2f06:	4c 89 ff             	mov    %r15,%rdi
    2f09:	b8 00 00 00 00       	mov    $0x0,%eax
    2f0e:	e8 5d ea ff ff       	callq  1970 <__sprintf_chk@plt>
    2f13:	44 89 e7             	mov    %r12d,%edi
    2f16:	e8 45 e9 ff ff       	callq  1860 <close@plt>
    2f1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f20:	eb 54                	jmp    2f76 <submitr+0x690>
    2f22:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2f29:	00 
    2f2a:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2f2f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2f34:	e8 f1 f8 ff ff       	callq  282a <rio_readlineb>
    2f39:	48 85 c0             	test   %rax,%rax
    2f3c:	7e 61                	jle    2f9f <submitr+0x6b9>
    2f3e:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2f45:	00 
    2f46:	4c 89 ff             	mov    %r15,%rdi
    2f49:	e8 c2 e8 ff ff       	callq  1810 <strcpy@plt>
    2f4e:	44 89 e7             	mov    %r12d,%edi
    2f51:	e8 0a e9 ff ff       	callq  1860 <close@plt>
    2f56:	b9 03 00 00 00       	mov    $0x3,%ecx
    2f5b:	48 8d 3d 39 0d 00 00 	lea    0xd39(%rip),%rdi        # 3c9b <array.3438+0x66b>
    2f62:	4c 89 fe             	mov    %r15,%rsi
    2f65:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2f67:	0f 97 c0             	seta   %al
    2f6a:	1c 00                	sbb    $0x0,%al
    2f6c:	84 c0                	test   %al,%al
    2f6e:	0f 95 c0             	setne  %al
    2f71:	0f b6 c0             	movzbl %al,%eax
    2f74:	f7 d8                	neg    %eax
    2f76:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2f7d:	00 
    2f7e:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2f85:	00 00 
    2f87:	0f 85 95 01 00 00    	jne    3122 <submitr+0x83c>
    2f8d:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    2f94:	5b                   	pop    %rbx
    2f95:	5d                   	pop    %rbp
    2f96:	41 5c                	pop    %r12
    2f98:	41 5d                	pop    %r13
    2f9a:	41 5e                	pop    %r14
    2f9c:	41 5f                	pop    %r15
    2f9e:	c3                   	retq   
    2f9f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2fa6:	3a 20 43 
    2fa9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2fb0:	20 75 6e 
    2fb3:	49 89 07             	mov    %rax,(%r15)
    2fb6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2fba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2fc1:	74 6f 20 
    2fc4:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2fcb:	73 74 61 
    2fce:	49 89 47 10          	mov    %rax,0x10(%r15)
    2fd2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2fd6:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2fdd:	65 73 73 
    2fe0:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2fe7:	72 6f 6d 
    2fea:	49 89 47 20          	mov    %rax,0x20(%r15)
    2fee:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2ff2:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2ff9:	65 72 00 
    2ffc:	49 89 47 30          	mov    %rax,0x30(%r15)
    3000:	44 89 e7             	mov    %r12d,%edi
    3003:	e8 58 e8 ff ff       	callq  1860 <close@plt>
    3008:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    300d:	e9 64 ff ff ff       	jmpq   2f76 <submitr+0x690>
    3012:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3019:	3a 20 52 
    301c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3023:	20 73 74 
    3026:	49 89 07             	mov    %rax,(%r15)
    3029:	49 89 57 08          	mov    %rdx,0x8(%r15)
    302d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3034:	63 6f 6e 
    3037:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    303e:	20 61 6e 
    3041:	49 89 47 10          	mov    %rax,0x10(%r15)
    3045:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3049:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3050:	67 61 6c 
    3053:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    305a:	6e 70 72 
    305d:	49 89 47 20          	mov    %rax,0x20(%r15)
    3061:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3065:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    306c:	6c 65 20 
    306f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3076:	63 74 65 
    3079:	49 89 47 30          	mov    %rax,0x30(%r15)
    307d:	49 89 57 38          	mov    %rdx,0x38(%r15)
    3081:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    3088:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    308d:	44 89 e7             	mov    %r12d,%edi
    3090:	e8 cb e7 ff ff       	callq  1860 <close@plt>
    3095:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    309a:	e9 d7 fe ff ff       	jmpq   2f76 <submitr+0x690>
    309f:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    30a6:	00 
    30a7:	48 83 ec 08          	sub    $0x8,%rsp
    30ab:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    30b2:	00 
    30b3:	50                   	push   %rax
    30b4:	ff 74 24 28          	pushq  0x28(%rsp)
    30b8:	ff 74 24 38          	pushq  0x38(%rsp)
    30bc:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    30c1:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    30c6:	48 8d 0d 33 0b 00 00 	lea    0xb33(%rip),%rcx        # 3c00 <array.3438+0x5d0>
    30cd:	ba 00 20 00 00       	mov    $0x2000,%edx
    30d2:	be 01 00 00 00       	mov    $0x1,%esi
    30d7:	48 89 df             	mov    %rbx,%rdi
    30da:	b8 00 00 00 00       	mov    $0x0,%eax
    30df:	e8 8c e8 ff ff       	callq  1970 <__sprintf_chk@plt>
    30e4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    30eb:	b8 00 00 00 00       	mov    $0x0,%eax
    30f0:	48 89 df             	mov    %rbx,%rdi
    30f3:	f2 ae                	repnz scas %es:(%rdi),%al
    30f5:	48 f7 d1             	not    %rcx
    30f8:	48 89 cb             	mov    %rcx,%rbx
    30fb:	48 83 eb 01          	sub    $0x1,%rbx
    30ff:	48 83 c4 20          	add    $0x20,%rsp
    3103:	48 89 dd             	mov    %rbx,%rbp
    3106:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    310d:	00 
    310e:	41 be 00 00 00 00    	mov    $0x0,%r14d
    3114:	48 85 db             	test   %rbx,%rbx
    3117:	0f 85 a9 fb ff ff    	jne    2cc6 <submitr+0x3e0>
    311d:	e9 d3 fb ff ff       	jmpq   2cf5 <submitr+0x40f>
    3122:	e8 19 e7 ff ff       	callq  1840 <__stack_chk_fail@plt>

0000000000003127 <init_timeout>:
    3127:	85 ff                	test   %edi,%edi
    3129:	74 25                	je     3150 <init_timeout+0x29>
    312b:	53                   	push   %rbx
    312c:	89 fb                	mov    %edi,%ebx
    312e:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 27fa <sigalrm_handler>
    3135:	bf 0e 00 00 00       	mov    $0xe,%edi
    313a:	e8 51 e7 ff ff       	callq  1890 <signal@plt>
    313f:	85 db                	test   %ebx,%ebx
    3141:	bf 00 00 00 00       	mov    $0x0,%edi
    3146:	0f 49 fb             	cmovns %ebx,%edi
    3149:	e8 02 e7 ff ff       	callq  1850 <alarm@plt>
    314e:	5b                   	pop    %rbx
    314f:	c3                   	retq   
    3150:	f3 c3                	repz retq 

0000000000003152 <init_driver>:
    3152:	41 54                	push   %r12
    3154:	55                   	push   %rbp
    3155:	53                   	push   %rbx
    3156:	48 83 ec 20          	sub    $0x20,%rsp
    315a:	49 89 fc             	mov    %rdi,%r12
    315d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3164:	00 00 
    3166:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    316b:	31 c0                	xor    %eax,%eax
    316d:	be 01 00 00 00       	mov    $0x1,%esi
    3172:	bf 0d 00 00 00       	mov    $0xd,%edi
    3177:	e8 14 e7 ff ff       	callq  1890 <signal@plt>
    317c:	be 01 00 00 00       	mov    $0x1,%esi
    3181:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3186:	e8 05 e7 ff ff       	callq  1890 <signal@plt>
    318b:	be 01 00 00 00       	mov    $0x1,%esi
    3190:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3195:	e8 f6 e6 ff ff       	callq  1890 <signal@plt>
    319a:	ba 00 00 00 00       	mov    $0x0,%edx
    319f:	be 01 00 00 00       	mov    $0x1,%esi
    31a4:	bf 02 00 00 00       	mov    $0x2,%edi
    31a9:	e8 d2 e7 ff ff       	callq  1980 <socket@plt>
    31ae:	85 c0                	test   %eax,%eax
    31b0:	0f 88 a3 00 00 00    	js     3259 <init_driver+0x107>
    31b6:	89 c3                	mov    %eax,%ebx
    31b8:	48 8d 3d df 0a 00 00 	lea    0xadf(%rip),%rdi        # 3c9e <array.3438+0x66e>
    31bf:	e8 dc e6 ff ff       	callq  18a0 <gethostbyname@plt>
    31c4:	48 85 c0             	test   %rax,%rax
    31c7:	0f 84 df 00 00 00    	je     32ac <init_driver+0x15a>
    31cd:	48 89 e5             	mov    %rsp,%rbp
    31d0:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    31d7:	00 00 
    31d9:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    31e0:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    31e6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    31ec:	48 63 50 14          	movslq 0x14(%rax),%rdx
    31f0:	48 8b 40 18          	mov    0x18(%rax),%rax
    31f4:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    31f8:	b9 0c 00 00 00       	mov    $0xc,%ecx
    31fd:	48 8b 30             	mov    (%rax),%rsi
    3200:	e8 ab e6 ff ff       	callq  18b0 <__memmove_chk@plt>
    3205:	66 c7 44 24 02 1f 94 	movw   $0x941f,0x2(%rsp)
    320c:	ba 10 00 00 00       	mov    $0x10,%edx
    3211:	48 89 ee             	mov    %rbp,%rsi
    3214:	89 df                	mov    %ebx,%edi
    3216:	e8 15 e7 ff ff       	callq  1930 <connect@plt>
    321b:	85 c0                	test   %eax,%eax
    321d:	0f 88 fb 00 00 00    	js     331e <init_driver+0x1cc>
    3223:	89 df                	mov    %ebx,%edi
    3225:	e8 36 e6 ff ff       	callq  1860 <close@plt>
    322a:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    3231:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    3237:	b8 00 00 00 00       	mov    $0x0,%eax
    323c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    3241:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3248:	00 00 
    324a:	0f 85 06 01 00 00    	jne    3356 <init_driver+0x204>
    3250:	48 83 c4 20          	add    $0x20,%rsp
    3254:	5b                   	pop    %rbx
    3255:	5d                   	pop    %rbp
    3256:	41 5c                	pop    %r12
    3258:	c3                   	retq   
    3259:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3260:	3a 20 43 
    3263:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    326a:	20 75 6e 
    326d:	49 89 04 24          	mov    %rax,(%r12)
    3271:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3276:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    327d:	74 6f 20 
    3280:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3287:	65 20 73 
    328a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    328f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    3294:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    329b:	6b 65 
    329d:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    32a4:	00 
    32a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32aa:	eb 90                	jmp    323c <init_driver+0xea>
    32ac:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    32b3:	3a 20 44 
    32b6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    32bd:	20 75 6e 
    32c0:	49 89 04 24          	mov    %rax,(%r12)
    32c4:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    32c9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    32d0:	74 6f 20 
    32d3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    32da:	76 65 20 
    32dd:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    32e2:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    32e7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    32ee:	72 20 61 
    32f1:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    32f6:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    32fd:	72 65 
    32ff:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    3306:	73 
    3307:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    330d:	89 df                	mov    %ebx,%edi
    330f:	e8 4c e5 ff ff       	callq  1860 <close@plt>
    3314:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3319:	e9 1e ff ff ff       	jmpq   323c <init_driver+0xea>
    331e:	4c 8d 05 79 09 00 00 	lea    0x979(%rip),%r8        # 3c9e <array.3438+0x66e>
    3325:	48 8d 0d 2c 09 00 00 	lea    0x92c(%rip),%rcx        # 3c58 <array.3438+0x628>
    332c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    3333:	be 01 00 00 00       	mov    $0x1,%esi
    3338:	4c 89 e7             	mov    %r12,%rdi
    333b:	b8 00 00 00 00       	mov    $0x0,%eax
    3340:	e8 2b e6 ff ff       	callq  1970 <__sprintf_chk@plt>
    3345:	89 df                	mov    %ebx,%edi
    3347:	e8 14 e5 ff ff       	callq  1860 <close@plt>
    334c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3351:	e9 e6 fe ff ff       	jmpq   323c <init_driver+0xea>
    3356:	e8 e5 e4 ff ff       	callq  1840 <__stack_chk_fail@plt>

000000000000335b <driver_post>:
    335b:	53                   	push   %rbx
    335c:	4c 89 c3             	mov    %r8,%rbx
    335f:	85 c9                	test   %ecx,%ecx
    3361:	75 17                	jne    337a <driver_post+0x1f>
    3363:	48 85 ff             	test   %rdi,%rdi
    3366:	74 05                	je     336d <driver_post+0x12>
    3368:	80 3f 00             	cmpb   $0x0,(%rdi)
    336b:	75 33                	jne    33a0 <driver_post+0x45>
    336d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3372:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3376:	89 c8                	mov    %ecx,%eax
    3378:	5b                   	pop    %rbx
    3379:	c3                   	retq   
    337a:	48 8d 35 2c 09 00 00 	lea    0x92c(%rip),%rsi        # 3cad <array.3438+0x67d>
    3381:	bf 01 00 00 00       	mov    $0x1,%edi
    3386:	b8 00 00 00 00       	mov    $0x0,%eax
    338b:	e8 60 e5 ff ff       	callq  18f0 <__printf_chk@plt>
    3390:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3395:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3399:	b8 00 00 00 00       	mov    $0x0,%eax
    339e:	eb d8                	jmp    3378 <driver_post+0x1d>
    33a0:	41 50                	push   %r8
    33a2:	52                   	push   %rdx
    33a3:	4c 8d 0d 1a 09 00 00 	lea    0x91a(%rip),%r9        # 3cc4 <array.3438+0x694>
    33aa:	49 89 f0             	mov    %rsi,%r8
    33ad:	48 89 f9             	mov    %rdi,%rcx
    33b0:	48 8d 15 11 09 00 00 	lea    0x911(%rip),%rdx        # 3cc8 <array.3438+0x698>
    33b7:	be 94 1f 00 00       	mov    $0x1f94,%esi
    33bc:	48 8d 3d db 08 00 00 	lea    0x8db(%rip),%rdi        # 3c9e <array.3438+0x66e>
    33c3:	e8 1e f5 ff ff       	callq  28e6 <submitr>
    33c8:	48 83 c4 10          	add    $0x10,%rsp
    33cc:	eb aa                	jmp    3378 <driver_post+0x1d>
    33ce:	66 90                	xchg   %ax,%ax

00000000000033d0 <__libc_csu_init>:
    33d0:	41 57                	push   %r15
    33d2:	41 56                	push   %r14
    33d4:	49 89 d7             	mov    %rdx,%r15
    33d7:	41 55                	push   %r13
    33d9:	41 54                	push   %r12
    33db:	4c 8d 25 fe 18 20 00 	lea    0x2018fe(%rip),%r12        # 204ce0 <__frame_dummy_init_array_entry>
    33e2:	55                   	push   %rbp
    33e3:	48 8d 2d fe 18 20 00 	lea    0x2018fe(%rip),%rbp        # 204ce8 <__do_global_dtors_aux_fini_array_entry>
    33ea:	53                   	push   %rbx
    33eb:	41 89 fd             	mov    %edi,%r13d
    33ee:	49 89 f6             	mov    %rsi,%r14
    33f1:	4c 29 e5             	sub    %r12,%rbp
    33f4:	48 83 ec 08          	sub    $0x8,%rsp
    33f8:	48 c1 fd 03          	sar    $0x3,%rbp
    33fc:	e8 9f e3 ff ff       	callq  17a0 <_init>
    3401:	48 85 ed             	test   %rbp,%rbp
    3404:	74 20                	je     3426 <__libc_csu_init+0x56>
    3406:	31 db                	xor    %ebx,%ebx
    3408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    340f:	00 
    3410:	4c 89 fa             	mov    %r15,%rdx
    3413:	4c 89 f6             	mov    %r14,%rsi
    3416:	44 89 ef             	mov    %r13d,%edi
    3419:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    341d:	48 83 c3 01          	add    $0x1,%rbx
    3421:	48 39 dd             	cmp    %rbx,%rbp
    3424:	75 ea                	jne    3410 <__libc_csu_init+0x40>
    3426:	48 83 c4 08          	add    $0x8,%rsp
    342a:	5b                   	pop    %rbx
    342b:	5d                   	pop    %rbp
    342c:	41 5c                	pop    %r12
    342e:	41 5d                	pop    %r13
    3430:	41 5e                	pop    %r14
    3432:	41 5f                	pop    %r15
    3434:	c3                   	retq   
    3435:	90                   	nop
    3436:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    343d:	00 00 00 

0000000000003440 <__libc_csu_fini>:
    3440:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003444 <_fini>:
    3444:	48 83 ec 08          	sub    $0x8,%rsp
    3448:	48 83 c4 08          	add    $0x8,%rsp
    344c:	c3                   	retq   
