.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a1724
.globl FUN_800a1724
.type FUN_800a1724, @function
FUN_800a1724:
.L800a1724:
/* 0x800a1724 */ addiu	$sp,$sp,-96
.L800a1728:
/* 0x800a1728 */ sw	$s4,72($sp)
.L800a172c:
/* 0x800a172c */ addiu	$s4,$zero,-1
.L800a1730:
/* 0x800a1730 */ lui	$v0,0x800f
.L800a1734:
/* 0x800a1734 */ sw	$s1,60($sp)
.L800a1738:
/* 0x800a1738 */ addiu	$s1,$v0,10504
.L800a173c:
/* 0x800a173c */ sw	$ra,92($sp)
.L800a1740:
/* 0x800a1740 */ sw	$s8,88($sp)
.L800a1744:
/* 0x800a1744 */ sw	$s7,84($sp)
.L800a1748:
/* 0x800a1748 */ sw	$s6,80($sp)
.L800a174c:
/* 0x800a174c */ sw	$s5,76($sp)
.L800a1750:
/* 0x800a1750 */ sw	$s3,68($sp)
.L800a1754:
/* 0x800a1754 */ sw	$s2,64($sp)
.L800a1758:
/* 0x800a1758 */ sw	$s0,56($sp)
.L800a175c:
/* 0x800a175c */ lbu	$s0,28($s1)
.L800a1760:
/* 0x800a1760 */ ori	$t1,$zero,0xffff
.L800a1764:
/* 0x800a1764 */ sh	$t1,32($sp)
.L800a1768:
/* 0x800a1768 */ jal	0x800a1f9c
.L800a176c:
/* 0x800a176c */ addu	$a0,$s0,$zero
.L800a1770:
/* 0x800a1770 */ addu	$a0,$s0,$zero
.L800a1774:
/* 0x800a1774 */ jal	0x8007f110
.L800a1778:
/* 0x800a1778 */ addu	$s2,$v0,$zero
.L800a177c:
/* 0x800a177c */ lui	$v1,0x800b
.L800a1780:
/* 0x800a1780 */ lw	$a0,-14100($v1)
.L800a1784:
/* 0x800a1784 */ addiu	$v1,$zero,1
.L800a1788:
/* 0x800a1788 */ sb	$v1,80($a0)
.L800a178c:
/* 0x800a178c */ lb	$v1,22($s1)
.L800a1790:
/* 0x800a1790 */ sll	$zero,$zero,0x0
.L800a1794:
/* 0x800a1794 */ bne	$v1,$zero,.L800a1ca8
.L800a1798:
/* 0x800a1798 */ addu	$s0,$v0,$zero
.L800a179c:
/* 0x800a179c */ lui	$v0,0x1
.L800a17a0:
/* 0x800a17a0 */ addu	$v0,$s1,$v0
.L800a17a4:
/* 0x800a17a4 */ lbu	$v0,10107($v0)
.L800a17a8:
/* 0x800a17a8 */ sll	$zero,$zero,0x0
.L800a17ac:
/* 0x800a17ac */ beq	$v0,$zero,.L800a1848
.L800a17b0:
/* 0x800a17b0 */ addu	$s3,$zero,$zero
.L800a17b4:
/* 0x800a17b4 */ addiu	$t0,$s1,32
.L800a17b8:
/* 0x800a17b8 */ addu	$a3,$s1,$zero
.L800a17bc:
/* 0x800a17bc */ addiu	$a2,$zero,7
.L800a17c0:
/* 0x800a17c0 */ lui	$a1,0x800e
.L800a17c4:
/* 0x800a17c4 */ andi	$a0,$s3,0xff
.L800a17c8:
/* 0x800a17c8 */ sll	$v0,$a0,0x3
.L800a17cc:
/* 0x800a17cc */ addu	$v0,$v0,$a0
.L800a17d0:
/* 0x800a17d0 */ sll	$v0,$v0,0x3
.L800a17d4:
/* 0x800a17d4 */ addu	$v0,$v0,$a0
.L800a17d8:
/* 0x800a17d8 */ sll	$v0,$v0,0x2
.L800a17dc:
/* 0x800a17dc */ addu	$v0,$v0,$a0
.L800a17e0:
/* 0x800a17e0 */ sll	$v0,$v0,0x5
.L800a17e4:
/* 0x800a17e4 */ addu	$v0,$v0,$a0
.L800a17e8:
/* 0x800a17e8 */ sll	$v0,$v0,0x2
.L800a17ec:
/* 0x800a17ec */ addu	$v1,$v0,$a3
.L800a17f0:
/* 0x800a17f0 */ lbu	$v1,146($v1)
.L800a17f4:
/* 0x800a17f4 */ sll	$zero,$zero,0x0
.L800a17f8:
/* 0x800a17f8 */ beq	$v1,$a2,.L800a182c
.L800a17fc:
/* 0x800a17fc */ addu	$v0,$v0,$t0
.L800a1800:
/* 0x800a1800 */ beq	$v1,$zero,.L800a182c
.L800a1804:
/* 0x800a1804 */ sll	$zero,$zero,0x0
.L800a1808:
/* 0x800a1808 */ lbu	$v1,5($v0)
.L800a180c:
/* 0x800a180c */ sll	$zero,$zero,0x0
.L800a1810:
/* 0x800a1810 */ sltiu	$v0,$v1,16
.L800a1814:
/* 0x800a1814 */ beq	$v0,$zero,.L800a182c
.L800a1818:
/* 0x800a1818 */ sll	$zero,$zero,0x0
.L800a181c:
/* 0x800a181c */ lw	$v0,2840($a1)
.L800a1820:
/* 0x800a1820 */ sll	$zero,$zero,0x0
.L800a1824:
/* 0x800a1824 */ addu	$v0,$v0,$a0
.L800a1828:
/* 0x800a1828 */ sb	$v1,82($v0)
.L800a182c:
/* 0x800a182c */ addiu	$s3,$s3,1
.L800a1830:
/* 0x800a1830 */ andi	$v0,$s3,0xff
.L800a1834:
/* 0x800a1834 */ sltiu	$v0,$v0,2
.L800a1838:
/* 0x800a1838 */ bne	$v0,$zero,.L800a17c8
.L800a183c:
/* 0x800a183c */ andi	$a0,$s3,0xff
.L800a1840:
/* 0x800a1840 */ j	.L800a1ca8
.L800a1844:
/* 0x800a1844 */ sll	$zero,$zero,0x0
.L800a1848:
/* 0x800a1848 */ lb	$v1,20($s1)
.L800a184c:
/* 0x800a184c */ addiu	$v0,$zero,1
.L800a1850:
/* 0x800a1850 */ bne	$v1,$v0,.L800a1ca8
.L800a1854:
/* 0x800a1854 */ lui	$s1,0x800e
.L800a1858:
/* 0x800a1858 */ lw	$a1,2840($s1)
.L800a185c:
/* 0x800a185c */ sll	$zero,$zero,0x0
.L800a1860:
/* 0x800a1860 */ lw	$v1,32($a1)
.L800a1864:
/* 0x800a1864 */ addiu	$a0,$zero,-1
.L800a1868:
/* 0x800a1868 */ sltu	$v0,$v1,$a0
.L800a186c:
/* 0x800a186c */ beq	$v0,$zero,.L800a1878
.L800a1870:
/* 0x800a1870 */ sll	$zero,$zero,0x0
.L800a1874:
/* 0x800a1874 */ addiu	$a0,$v1,1
.L800a1878:
/* 0x800a1878 */ jal	0x800a2674
.L800a187c:
/* 0x800a187c */ sw	$a0,32($a1)
.L800a1880:
/* 0x800a1880 */ jal	0x800a2808
.L800a1884:
/* 0x800a1884 */ sll	$zero,$zero,0x0
.L800a1888:
/* 0x800a1888 */ beq	$s2,$s4,.L800a18b8
.L800a188c:
/* 0x800a188c */ sll	$zero,$zero,0x0
.L800a1890:
/* 0x800a1890 */ beq	$s0,$s4,.L800a18ac
.L800a1894:
/* 0x800a1894 */ slti	$v0,$s0,60
.L800a1898:
/* 0x800a1898 */ beq	$v0,$zero,.L800a18ac
.L800a189c:
/* 0x800a189c */ sll	$v0,$s0,0x6
.L800a18a0:
/* 0x800a18a0 */ lw	$v1,2840($s1)
.L800a18a4:
/* 0x800a18a4 */ addiu	$v0,$v0,176
.L800a18a8:
/* 0x800a18a8 */ addu	$s4,$v1,$v0
.L800a18ac:
/* 0x800a18ac */ lhu	$s2,0($s2)
.L800a18b0:
/* 0x800a18b0 */ sll	$zero,$zero,0x0
.L800a18b4:
/* 0x800a18b4 */ sh	$s2,32($sp)
.L800a18b8:
/* 0x800a18b8 */ sw	$zero,36($sp)
.L800a18bc:
/* 0x800a18bc */ addu	$s3,$zero,$zero
.L800a18c0:
/* 0x800a18c0 */ lui	$t1,0x800f
.L800a18c4:
/* 0x800a18c4 */ addiu	$t1,$t1,10536
.L800a18c8:
/* 0x800a18c8 */ addiu	$t0,$t1,-32
.L800a18cc:
/* 0x800a18cc */ addiu	$s8,$zero,1
.L800a18d0:
/* 0x800a18d0 */ andi	$v0,$s3,0xff
.L800a18d4:
/* 0x800a18d4 */ sll	$v1,$v0,0x3
.L800a18d8:
/* 0x800a18d8 */ addu	$v1,$v1,$v0
.L800a18dc:
/* 0x800a18dc */ sll	$v1,$v1,0x3
.L800a18e0:
/* 0x800a18e0 */ addu	$v1,$v1,$v0
.L800a18e4:
/* 0x800a18e4 */ sll	$v1,$v1,0x2
.L800a18e8:
/* 0x800a18e8 */ addu	$v1,$v1,$v0
.L800a18ec:
/* 0x800a18ec */ sll	$v1,$v1,0x5
.L800a18f0:
/* 0x800a18f0 */ addu	$v1,$v1,$v0
.L800a18f4:
/* 0x800a18f4 */ sll	$v1,$v1,0x2
.L800a18f8:
/* 0x800a18f8 */ lui	$t1,0x800f
.L800a18fc:
/* 0x800a18fc */ addiu	$t1,$t1,10536
.L800a1900:
/* 0x800a1900 */ addu	$s0,$v1,$t1
.L800a1904:
/* 0x800a1904 */ addu	$v1,$v1,$t0
.L800a1908:
/* 0x800a1908 */ addiu	$t1,$zero,2
.L800a190c:
/* 0x800a190c */ lbu	$v0,146($v1)
.L800a1910:
/* 0x800a1910 */ lbu	$v1,144($v1)
.L800a1914:
/* 0x800a1914 */ bne	$v0,$t1,.L800a1924
.L800a1918:
/* 0x800a1918 */ addiu	$a2,$s0,124
.L800a191c:
/* 0x800a191c */ j	.L800a1928
.L800a1920:
/* 0x800a1920 */ addu	$a3,$v1,$t1
.L800a1924:
/* 0x800a1924 */ addiu	$a3,$v1,-1
.L800a1928:
/* 0x800a1928 */ lw	$a1,16($s0)
.L800a192c:
/* 0x800a192c */ lw	$a0,20($s0)
.L800a1930:
/* 0x800a1930 */ lw	$v0,28($s0)
.L800a1934:
/* 0x800a1934 */ lw	$v1,32($s0)
.L800a1938:
/* 0x800a1938 */ lhu	$s6,28($a2)
.L800a193c:
/* 0x800a193c */ lhu	$t1,24($a2)
.L800a1940:
/* 0x800a1940 */ subu	$s5,$a1,$a0
.L800a1944:
/* 0x800a1944 */ subu	$v0,$v0,$v1
.L800a1948:
/* 0x800a1948 */ addu	$s5,$s5,$v0
.L800a194c:
/* 0x800a194c */ andi	$v1,$s3,0xff
.L800a1950:
/* 0x800a1950 */ sll	$v0,$v1,0x2
.L800a1954:
/* 0x800a1954 */ sh	$t1,40($sp)
.L800a1958:
/* 0x800a1958 */ lbu	$s7,32($a2)
.L800a195c:
/* 0x800a195c */ addu	$v0,$sp,$v0
.L800a1960:
/* 0x800a1960 */ sw	$s5,24($v0)
.L800a1964:
/* 0x800a1964 */ sll	$v0,$v1,0x3
.L800a1968:
/* 0x800a1968 */ addu	$v0,$v0,$v1
.L800a196c:
/* 0x800a196c */ sll	$v0,$v0,0x3
.L800a1970:
/* 0x800a1970 */ addu	$v0,$v0,$v1
.L800a1974:
/* 0x800a1974 */ sll	$v0,$v0,0x2
.L800a1978:
/* 0x800a1978 */ addu	$v0,$v0,$v1
.L800a197c:
/* 0x800a197c */ sll	$v0,$v0,0x5
.L800a1980:
/* 0x800a1980 */ addu	$v0,$v0,$v1
.L800a1984:
/* 0x800a1984 */ sll	$v0,$v0,0x2
.L800a1988:
/* 0x800a1988 */ addu	$v0,$v0,$t0
.L800a198c:
/* 0x800a198c */ lbu	$v0,146($v0)
.L800a1990:
/* 0x800a1990 */ addiu	$v1,$zero,7
.L800a1994:
/* 0x800a1994 */ beq	$v0,$v1,.L800a1bdc
.L800a1998:
/* 0x800a1998 */ addu	$s1,$a3,$zero
.L800a199c:
/* 0x800a199c */ beq	$v0,$zero,.L800a1bdc
.L800a19a0:
/* 0x800a19a0 */ sll	$zero,$zero,0x0
.L800a19a4:
/* 0x800a19a4 */ lh	$v0,32($a2)
.L800a19a8:
/* 0x800a19a8 */ sll	$zero,$zero,0x0
.L800a19ac:
/* 0x800a19ac */ bne	$v0,$v1,.L800a19c4
.L800a19b0:
/* 0x800a19b0 */ addiu	$a0,$zero,28
.L800a19b4:
/* 0x800a19b4 */ ori	$a1,$zero,0xffff
.L800a19b8:
/* 0x800a19b8 */ jal	0x8009d274
.L800a19bc:
/* 0x800a19bc */ sw	$t0,48($sp)
.L800a19c0:
/* 0x800a19c0 */ lw	$t0,48($sp)
.L800a19c4:
/* 0x800a19c4 */ lbu	$v0,4690($s0)
.L800a19c8:
/* 0x800a19c8 */ sll	$zero,$zero,0x0
.L800a19cc:
/* 0x800a19cc */ bne	$v0,$s8,.L800a19dc
.L800a19d0:
/* 0x800a19d0 */ sll	$zero,$zero,0x0
.L800a19d4:
/* 0x800a19d4 */ beq	$s5,$zero,.L800a1bdc
.L800a19d8:
/* 0x800a19d8 */ sll	$zero,$zero,0x0
.L800a19dc:
/* 0x800a19dc */ lbu	$v1,5($s0)
.L800a19e0:
/* 0x800a19e0 */ sll	$zero,$zero,0x0
.L800a19e4:
/* 0x800a19e4 */ sltiu	$v0,$v1,16
.L800a19e8:
/* 0x800a19e8 */ beq	$v0,$zero,.L800a1a3c
.L800a19ec:
/* 0x800a19ec */ sll	$v0,$v1,0x18
.L800a19f0:
/* 0x800a19f0 */ sra	$v1,$v0,0x18
.L800a19f4:
/* 0x800a19f4 */ sltiu	$v0,$v1,16
.L800a19f8:
/* 0x800a19f8 */ beq	$v0,$zero,.L800a1a3c
.L800a19fc:
/* 0x800a19fc */ lui	$v0,0x800e
.L800a1a00:
/* 0x800a1a00 */ lw	$a0,2840($v0)
.L800a1a04:
/* 0x800a1a04 */ sll	$zero,$zero,0x0
.L800a1a08:
/* 0x800a1a08 */ lbu	$v0,152($a0)
.L800a1a0c:
/* 0x800a1a0c */ sll	$zero,$zero,0x0
.L800a1a10:
/* 0x800a1a10 */ bne	$v0,$s8,.L800a1a3c
.L800a1a14:
/* 0x800a1a14 */ sll	$v1,$v1,0x1
.L800a1a18:
/* 0x800a1a18 */ addiu	$v0,$a0,32
.L800a1a1c:
/* 0x800a1a1c */ addu	$a0,$v0,$v1
.L800a1a20:
/* 0x800a1a20 */ lhu	$v1,4($a0)
.L800a1a24:
/* 0x800a1a24 */ ori	$v0,$zero,0xfffe
.L800a1a28:
/* 0x800a1a28 */ sltu	$v0,$v0,$v1
.L800a1a2c:
/* 0x800a1a2c */ bne	$v0,$zero,.L800a1a38
.L800a1a30:
/* 0x800a1a30 */ ori	$v0,$zero,0xffff
.L800a1a34:
/* 0x800a1a34 */ addiu	$v0,$v1,1
.L800a1a38:
/* 0x800a1a38 */ sh	$v0,4($a0)
.L800a1a3c:
/* 0x800a1a3c */ andi	$v1,$s3,0xff
.L800a1a40:
/* 0x800a1a40 */ sll	$v0,$v1,0x3
.L800a1a44:
/* 0x800a1a44 */ addu	$v0,$v0,$v1
.L800a1a48:
/* 0x800a1a48 */ sll	$v0,$v0,0x3
.L800a1a4c:
/* 0x800a1a4c */ addu	$v0,$v0,$v1
.L800a1a50:
/* 0x800a1a50 */ sll	$v0,$v0,0x2
.L800a1a54:
/* 0x800a1a54 */ addu	$v0,$v0,$v1
.L800a1a58:
/* 0x800a1a58 */ sll	$v0,$v0,0x5
.L800a1a5c:
/* 0x800a1a5c */ addu	$v0,$v0,$v1
.L800a1a60:
/* 0x800a1a60 */ sll	$v0,$v0,0x2
.L800a1a64:
/* 0x800a1a64 */ addu	$a0,$v0,$t0
.L800a1a68:
/* 0x800a1a68 */ lb	$v1,36($a0)
.L800a1a6c:
/* 0x800a1a6c */ addiu	$t1,$zero,2
.L800a1a70:
/* 0x800a1a70 */ beq	$v1,$t1,.L800a1a80
.L800a1a74:
/* 0x800a1a74 */ addiu	$v0,$zero,4
.L800a1a78:
/* 0x800a1a78 */ bne	$v1,$v0,.L800a1ad8
.L800a1a7c:
/* 0x800a1a7c */ sll	$zero,$zero,0x0
.L800a1a80:
/* 0x800a1a80 */ lbu	$a0,146($a0)
.L800a1a84:
/* 0x800a1a84 */ addiu	$v0,$zero,5
.L800a1a88:
/* 0x800a1a88 */ bne	$a0,$v0,.L800a1a98
.L800a1a8c:
/* 0x800a1a8c */ addu	$v1,$zero,$zero
.L800a1a90:
/* 0x800a1a90 */ j	.L800a1aa8
.L800a1a94:
/* 0x800a1a94 */ addiu	$v1,$zero,1
.L800a1a98:
/* 0x800a1a98 */ addiu	$t1,$zero,2
.L800a1a9c:
/* 0x800a1a9c */ bne	$a0,$t1,.L800a1aac
.L800a1aa0:
/* 0x800a1aa0 */ lui	$v0,0x800e
.L800a1aa4:
/* 0x800a1aa4 */ addu	$v1,$t1,$zero
.L800a1aa8:
/* 0x800a1aa8 */ lui	$v0,0x800e
.L800a1aac:
/* 0x800a1aac */ lw	$v0,2840($v0)
.L800a1ab0:
/* 0x800a1ab0 */ sll	$v1,$v1,0x1
.L800a1ab4:
/* 0x800a1ab4 */ addiu	$v0,$v0,32
.L800a1ab8:
/* 0x800a1ab8 */ addu	$a0,$v0,$v1
.L800a1abc:
/* 0x800a1abc */ lhu	$v1,38($a0)
.L800a1ac0:
/* 0x800a1ac0 */ ori	$v0,$zero,0xfffe
.L800a1ac4:
/* 0x800a1ac4 */ sltu	$v0,$v0,$v1
.L800a1ac8:
/* 0x800a1ac8 */ bne	$v0,$zero,.L800a1ad4
.L800a1acc:
/* 0x800a1acc */ ori	$v0,$zero,0xffff
.L800a1ad0:
/* 0x800a1ad0 */ addiu	$v0,$v1,1
.L800a1ad4:
/* 0x800a1ad4 */ sh	$v0,38($a0)
.L800a1ad8:
/* 0x800a1ad8 */ lh	$v0,150($t0)
.L800a1adc:
/* 0x800a1adc */ sll	$zero,$zero,0x0
.L800a1ae0:
/* 0x800a1ae0 */ bgez	$v0,.L800a1bdc
.L800a1ae4:
/* 0x800a1ae4 */ lui	$v0,0x800e
.L800a1ae8:
/* 0x800a1ae8 */ lbu	$v1,112($s0)
.L800a1aec:
/* 0x800a1aec */ lw	$v0,2840($v0)
.L800a1af0:
/* 0x800a1af0 */ addiu	$v1,$v1,-1
.L800a1af4:
/* 0x800a1af4 */ sll	$v1,$v1,0x1
.L800a1af8:
/* 0x800a1af8 */ addiu	$v0,$v0,32
.L800a1afc:
/* 0x800a1afc */ addu	$a0,$v0,$v1
.L800a1b00:
/* 0x800a1b00 */ lhu	$v1,44($a0)
.L800a1b04:
/* 0x800a1b04 */ ori	$v0,$zero,0xfffe
.L800a1b08:
/* 0x800a1b08 */ sltu	$v0,$v0,$v1
.L800a1b0c:
/* 0x800a1b0c */ bne	$v0,$zero,.L800a1b18
.L800a1b10:
/* 0x800a1b10 */ ori	$v0,$zero,0xffff
.L800a1b14:
/* 0x800a1b14 */ addiu	$v0,$v1,1
.L800a1b18:
/* 0x800a1b18 */ sh	$v0,44($a0)
.L800a1b1c:
/* 0x800a1b1c */ addiu	$v0,$zero,-1
.L800a1b20:
/* 0x800a1b20 */ beq	$s4,$v0,.L800a1ba4
.L800a1b24:
/* 0x800a1b24 */ andi	$v1,$s1,0xff
.L800a1b28:
/* 0x800a1b28 */ sll	$v0,$v1,0x1
.L800a1b2c:
/* 0x800a1b2c */ addu	$s1,$s4,$v0
.L800a1b30:
/* 0x800a1b30 */ addu	$s2,$s4,$v1
.L800a1b34:
/* 0x800a1b34 */ lhu	$a1,30($s1)
.L800a1b38:
/* 0x800a1b38 */ lbu	$a2,54($s2)
.L800a1b3c:
/* 0x800a1b3c */ andi	$v0,$s6,0xffff
.L800a1b40:
/* 0x800a1b40 */ sw	$v0,16($sp)
.L800a1b44:
/* 0x800a1b44 */ andi	$v0,$s7,0xff
.L800a1b48:
/* 0x800a1b48 */ sll	$v1,$v1,0x2
.L800a1b4c:
/* 0x800a1b4c */ addu	$s0,$s4,$v1
.L800a1b50:
/* 0x800a1b50 */ sw	$v0,20($sp)
.L800a1b54:
/* 0x800a1b54 */ lw	$a0,0($s0)
.L800a1b58:
/* 0x800a1b58 */ addu	$a3,$s5,$zero
.L800a1b5c:
/* 0x800a1b5c */ jal	0x800a1fc8
.L800a1b60:
/* 0x800a1b60 */ sw	$t0,48($sp)
.L800a1b64:
/* 0x800a1b64 */ andi	$v0,$v0,0xff
.L800a1b68:
/* 0x800a1b68 */ lw	$t0,48($sp)
.L800a1b6c:
/* 0x800a1b6c */ beq	$v0,$zero,.L800a1ba4
.L800a1b70:
/* 0x800a1b70 */ lui	$v1,0x8011
.L800a1b74:
/* 0x800a1b74 */ addiu	$v1,$v1,7856
.L800a1b78:
/* 0x800a1b78 */ andi	$v0,$s3,0xff
.L800a1b7c:
/* 0x800a1b7c */ sw	$s5,0($s0)
.L800a1b80:
/* 0x800a1b80 */ sh	$s6,30($s1)
.L800a1b84:
/* 0x800a1b84 */ lhu	$t1,40($sp)
.L800a1b88:
/* 0x800a1b88 */ sll	$v0,$v0,0x2
.L800a1b8c:
/* 0x800a1b8c */ sh	$t1,42($s1)
.L800a1b90:
/* 0x800a1b90 */ sb	$s7,54($s2)
.L800a1b94:
/* 0x800a1b94 */ lhu	$t1,32($sp)
.L800a1b98:
/* 0x800a1b98 */ addu	$v0,$v0,$v1
.L800a1b9c:
/* 0x800a1b9c */ sh	$t1,28($s4)
.L800a1ba0:
/* 0x800a1ba0 */ sw	$s8,0($v0)
.L800a1ba4:
/* 0x800a1ba4 */ lw	$t1,36($sp)
.L800a1ba8:
/* 0x800a1ba8 */ sll	$zero,$zero,0x0
.L800a1bac:
/* 0x800a1bac */ beq	$t1,$s8,.L800a1bdc
.L800a1bb0:
/* 0x800a1bb0 */ addiu	$v0,$zero,-1
.L800a1bb4:
/* 0x800a1bb4 */ beq	$s4,$v0,.L800a1bdc
.L800a1bb8:
/* 0x800a1bb8 */ sll	$zero,$zero,0x0
.L800a1bbc:
/* 0x800a1bbc */ lw	$v1,24($s4)
.L800a1bc0:
/* 0x800a1bc0 */ sll	$zero,$zero,0x0
.L800a1bc4:
/* 0x800a1bc4 */ sltu	$v0,$v1,$v0
.L800a1bc8:
/* 0x800a1bc8 */ beq	$v0,$zero,.L800a1bd4
.L800a1bcc:
/* 0x800a1bcc */ addiu	$v0,$v1,1
.L800a1bd0:
/* 0x800a1bd0 */ sw	$v0,24($s4)
.L800a1bd4:
/* 0x800a1bd4 */ addiu	$t1,$zero,1
.L800a1bd8:
/* 0x800a1bd8 */ sw	$t1,36($sp)
.L800a1bdc:
/* 0x800a1bdc */ addiu	$s3,$s3,1
.L800a1be0:
/* 0x800a1be0 */ andi	$v0,$s3,0xff
.L800a1be4:
/* 0x800a1be4 */ sltiu	$v0,$v0,2
.L800a1be8:
/* 0x800a1be8 */ bne	$v0,$zero,.L800a18d4
.L800a1bec:
/* 0x800a1bec */ andi	$v0,$s3,0xff
.L800a1bf0:
/* 0x800a1bf0 */ lui	$v0,0x8011
.L800a1bf4:
/* 0x800a1bf4 */ addiu	$a0,$v0,7856
.L800a1bf8:
/* 0x800a1bf8 */ lw	$v1,7856($v0)
.L800a1bfc:
/* 0x800a1bfc */ addiu	$v0,$zero,1
.L800a1c00:
/* 0x800a1c00 */ bne	$v1,$v0,.L800a1ca0
.L800a1c04:
/* 0x800a1c04 */ sll	$zero,$zero,0x0
.L800a1c08:
/* 0x800a1c08 */ lw	$v0,4($a0)
.L800a1c0c:
/* 0x800a1c0c */ sll	$zero,$zero,0x0
.L800a1c10:
/* 0x800a1c10 */ bne	$v0,$v1,.L800a1ca0
.L800a1c14:
/* 0x800a1c14 */ lui	$v0,0x800f
.L800a1c18:
/* 0x800a1c18 */ addiu	$v0,$v0,10504
.L800a1c1c:
/* 0x800a1c1c */ addiu	$a0,$zero,2
.L800a1c20:
/* 0x800a1c20 */ lbu	$v1,146($v0)
.L800a1c24:
/* 0x800a1c24 */ lbu	$v0,144($v0)
.L800a1c28:
/* 0x800a1c28 */ bne	$v1,$a0,.L800a1c38
.L800a1c2c:
/* 0x800a1c2c */ sll	$zero,$zero,0x0
.L800a1c30:
/* 0x800a1c30 */ j	.L800a1c3c
.L800a1c34:
/* 0x800a1c34 */ addu	$v0,$v0,$a0
.L800a1c38:
/* 0x800a1c38 */ addiu	$v0,$v0,-1
.L800a1c3c:
/* 0x800a1c3c */ addu	$a1,$v0,$zero
.L800a1c40:
/* 0x800a1c40 */ lui	$v0,0x800f
.L800a1c44:
/* 0x800a1c44 */ addiu	$v0,$v0,10504
.L800a1c48:
/* 0x800a1c48 */ ori	$v1,$zero,0x9284
.L800a1c4c:
/* 0x800a1c4c */ addu	$v0,$v0,$v1
.L800a1c50:
/* 0x800a1c50 */ addiu	$a0,$zero,2
.L800a1c54:
/* 0x800a1c54 */ lbu	$v1,146($v0)
.L800a1c58:
/* 0x800a1c58 */ lbu	$v0,144($v0)
.L800a1c5c:
/* 0x800a1c5c */ bne	$v1,$a0,.L800a1c6c
.L800a1c60:
/* 0x800a1c60 */ sll	$zero,$zero,0x0
.L800a1c64:
/* 0x800a1c64 */ j	.L800a1c70
.L800a1c68:
/* 0x800a1c68 */ addu	$v0,$v0,$a0
.L800a1c6c:
/* 0x800a1c6c */ addiu	$v0,$v0,-1
.L800a1c70:
/* 0x800a1c70 */ bne	$a1,$v0,.L800a1ca0
.L800a1c74:
/* 0x800a1c74 */ sll	$zero,$zero,0x0
.L800a1c78:
/* 0x800a1c78 */ lw	$v0,24($sp)
.L800a1c7c:
/* 0x800a1c7c */ lw	$v1,28($sp)
.L800a1c80:
/* 0x800a1c80 */ sll	$zero,$zero,0x0
.L800a1c84:
/* 0x800a1c84 */ sltu	$v0,$v0,$v1
.L800a1c88:
/* 0x800a1c88 */ bne	$v0,$zero,.L800a1c9c
.L800a1c8c:
/* 0x800a1c8c */ lui	$v0,0x8011
.L800a1c90:
/* 0x800a1c90 */ lui	$v0,0x8011
.L800a1c94:
/* 0x800a1c94 */ j	.L800a1ca0
.L800a1c98:
/* 0x800a1c98 */ sw	$zero,7860($v0)
.L800a1c9c:
/* 0x800a1c9c */ sw	$zero,7856($v0)
.L800a1ca0:
/* 0x800a1ca0 */ jal	0x800a1cd8
.L800a1ca4:
/* 0x800a1ca4 */ sll	$zero,$zero,0x0
.L800a1ca8:
/* 0x800a1ca8 */ lw	$ra,92($sp)
.L800a1cac:
/* 0x800a1cac */ lw	$s8,88($sp)
.L800a1cb0:
/* 0x800a1cb0 */ lw	$s7,84($sp)
.L800a1cb4:
/* 0x800a1cb4 */ lw	$s6,80($sp)
.L800a1cb8:
/* 0x800a1cb8 */ lw	$s5,76($sp)
.L800a1cbc:
/* 0x800a1cbc */ lw	$s4,72($sp)
.L800a1cc0:
/* 0x800a1cc0 */ lw	$s3,68($sp)
.L800a1cc4:
/* 0x800a1cc4 */ lw	$s2,64($sp)
.L800a1cc8:
/* 0x800a1cc8 */ lw	$s1,60($sp)
.L800a1ccc:
/* 0x800a1ccc */ lw	$s0,56($sp)
.L800a1cd0:
/* 0x800a1cd0 */ jr	$ra
.L800a1cd4:
/* 0x800a1cd4 */ addiu	$sp,$sp,96
.size FUN_800a1724, .-FUN_800a1724
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a1cd8
.globl FUN_800a1cd8
.type FUN_800a1cd8, @function
FUN_800a1cd8:
.L800a1cd8:
/* 0x800a1cd8 */ addiu	$sp,$sp,-80
.L800a1cdc:
/* 0x800a1cdc */ sw	$s4,56($sp)
.L800a1ce0:
/* 0x800a1ce0 */ addu	$s4,$zero,$zero
.L800a1ce4:
/* 0x800a1ce4 */ addiu	$v1,$zero,1
.L800a1ce8:
/* 0x800a1ce8 */ sw	$s0,40($sp)
.L800a1cec:
/* 0x800a1cec */ addiu	$s0,$zero,5
.L800a1cf0:
/* 0x800a1cf0 */ addiu	$v0,$sp,36
.L800a1cf4:
/* 0x800a1cf4 */ sw	$ra,76($sp)
.L800a1cf8:
/* 0x800a1cf8 */ sw	$s8,72($sp)
.L800a1cfc:
/* 0x800a1cfc */ sw	$s7,68($sp)
.L800a1d00:
/* 0x800a1d00 */ sw	$s6,64($sp)
.L800a1d04:
/* 0x800a1d04 */ sw	$s5,60($sp)
.L800a1d08:
/* 0x800a1d08 */ sw	$s3,52($sp)
.L800a1d0c:
/* 0x800a1d0c */ sw	$s2,48($sp)
.L800a1d10:
/* 0x800a1d10 */ sw	$s1,44($sp)
.L800a1d14:
/* 0x800a1d14 */ sw	$v1,0($v0)
.L800a1d18:
/* 0x800a1d18 */ addiu	$s0,$s0,-1
.L800a1d1c:
/* 0x800a1d1c */ bgez	$s0,.L800a1d14
.L800a1d20:
/* 0x800a1d20 */ addiu	$v0,$v0,-4
.L800a1d24:
/* 0x800a1d24 */ addu	$s5,$zero,$zero
.L800a1d28:
/* 0x800a1d28 */ addu	$s3,$s5,$zero
.L800a1d2c:
/* 0x800a1d2c */ lui	$s8,0x800e
.L800a1d30:
/* 0x800a1d30 */ addiu	$s7,$zero,176
.L800a1d34:
/* 0x800a1d34 */ jal	0x800a1f44
.L800a1d38:
/* 0x800a1d38 */ addu	$a0,$s3,$zero
.L800a1d3c:
/* 0x800a1d3c */ addiu	$v1,$zero,-1
.L800a1d40:
/* 0x800a1d40 */ beq	$v0,$v1,.L800a1e0c
.L800a1d44:
/* 0x800a1d44 */ addu	$s0,$zero,$zero
.L800a1d48:
/* 0x800a1d48 */ lw	$v0,2840($s8)
.L800a1d4c:
/* 0x800a1d4c */ sll	$zero,$zero,0x0
.L800a1d50:
/* 0x800a1d50 */ addu	$s6,$v0,$s7
.L800a1d54:
/* 0x800a1d54 */ lw	$v1,24($s6)
.L800a1d58:
/* 0x800a1d58 */ addu	$v0,$s5,$zero
.L800a1d5c:
/* 0x800a1d5c */ addu	$s5,$s5,$v1
.L800a1d60:
/* 0x800a1d60 */ sltu	$v0,$s5,$v0
.L800a1d64:
/* 0x800a1d64 */ beq	$v0,$zero,.L800a1d74
.L800a1d68:
/* 0x800a1d68 */ addu	$s2,$s6,$zero
.L800a1d6c:
/* 0x800a1d6c */ addiu	$s5,$zero,-1
.L800a1d70:
/* 0x800a1d70 */ addu	$s0,$zero,$zero
.L800a1d74:
/* 0x800a1d74 */ addu	$s1,$s0,$zero
.L800a1d78:
/* 0x800a1d78 */ addu	$v0,$s6,$s0
.L800a1d7c:
/* 0x800a1d7c */ lbu	$a0,54($v0)
.L800a1d80:
/* 0x800a1d80 */ sll	$zero,$zero,0x0
.L800a1d84:
/* 0x800a1d84 */ addu	$v1,$a0,$zero
.L800a1d88:
/* 0x800a1d88 */ slti	$v0,$v1,4
.L800a1d8c:
/* 0x800a1d8c */ beq	$v0,$zero,.L800a1da0
.L800a1d90:
/* 0x800a1d90 */ addu	$v0,$sp,$s1
.L800a1d94:
/* 0x800a1d94 */ bne	$v1,$zero,.L800a1da8
.L800a1d98:
/* 0x800a1d98 */ addiu	$v0,$zero,1
.L800a1d9c:
/* 0x800a1d9c */ addu	$v0,$sp,$s1
.L800a1da0:
/* 0x800a1da0 */ sw	$zero,16($v0)
.L800a1da4:
/* 0x800a1da4 */ addiu	$v0,$zero,1
.L800a1da8:
/* 0x800a1da8 */ bne	$a0,$v0,.L800a1db8
.L800a1dac:
/* 0x800a1dac */ addiu	$a0,$zero,29
.L800a1db0:
/* 0x800a1db0 */ jal	0x8009d274
.L800a1db4:
/* 0x800a1db4 */ ori	$a1,$zero,0xffff
.L800a1db8:
/* 0x800a1db8 */ lw	$v0,0($s2)
.L800a1dbc:
/* 0x800a1dbc */ sll	$zero,$zero,0x0
.L800a1dc0:
/* 0x800a1dc0 */ addu	$v1,$s4,$v0
.L800a1dc4:
/* 0x800a1dc4 */ sltu	$v0,$s4,$v1
.L800a1dc8:
/* 0x800a1dc8 */ beq	$v0,$zero,.L800a1dd8
.L800a1dcc:
/* 0x800a1dcc */ sltu	$v0,$v1,$s4
.L800a1dd0:
/* 0x800a1dd0 */ j	.L800a1de4
.L800a1dd4:
/* 0x800a1dd4 */ addu	$s4,$v1,$zero
.L800a1dd8:
/* 0x800a1dd8 */ beq	$v0,$zero,.L800a1de4
.L800a1ddc:
/* 0x800a1ddc */ sll	$zero,$zero,0x0
.L800a1de0:
/* 0x800a1de0 */ addiu	$s4,$zero,-1
.L800a1de4:
/* 0x800a1de4 */ addiu	$s2,$s2,4
.L800a1de8:
/* 0x800a1de8 */ addiu	$s0,$s0,1
.L800a1dec:
/* 0x800a1dec */ slti	$v0,$s0,6
.L800a1df0:
/* 0x800a1df0 */ bne	$v0,$zero,.L800a1d78
.L800a1df4:
/* 0x800a1df4 */ addiu	$s1,$s1,4
.L800a1df8:
/* 0x800a1df8 */ addiu	$s3,$s3,1
.L800a1dfc:
/* 0x800a1dfc */ slti	$v0,$s3,256
.L800a1e00:
/* 0x800a1e00 */ bne	$v0,$zero,.L800a1d34
.L800a1e04:
/* 0x800a1e04 */ addiu	$s7,$s7,64
.L800a1e08:
/* 0x800a1e08 */ addu	$s0,$zero,$zero
.L800a1e0c:
/* 0x800a1e0c */ addiu	$s3,$zero,1
.L800a1e10:
/* 0x800a1e10 */ lui	$v0,0x800e
.L800a1e14:
/* 0x800a1e14 */ addiu	$s2,$v0,5540
.L800a1e18:
/* 0x800a1e18 */ addiu	$s1,$sp,16
.L800a1e1c:
/* 0x800a1e1c */ lw	$v0,0($s1)
.L800a1e20:
/* 0x800a1e20 */ sll	$zero,$zero,0x0
.L800a1e24:
/* 0x800a1e24 */ bne	$v0,$s3,.L800a1e38
.L800a1e28:
/* 0x800a1e28 */ sll	$zero,$zero,0x0
.L800a1e2c:
/* 0x800a1e2c */ lw	$a0,0($s2)
.L800a1e30:
/* 0x800a1e30 */ jal	0x8009d274
.L800a1e34:
/* 0x800a1e34 */ ori	$a1,$zero,0xffff
.L800a1e38:
/* 0x800a1e38 */ addiu	$s2,$s2,4
.L800a1e3c:
/* 0x800a1e3c */ addiu	$s0,$s0,1
.L800a1e40:
/* 0x800a1e40 */ slti	$v0,$s0,6
.L800a1e44:
/* 0x800a1e44 */ bne	$v0,$zero,.L800a1e1c
.L800a1e48:
/* 0x800a1e48 */ addiu	$s1,$s1,4
.L800a1e4c:
/* 0x800a1e4c */ lui	$v0,0x7735
.L800a1e50:
/* 0x800a1e50 */ ori	$v0,$v0,0x93ff
.L800a1e54:
/* 0x800a1e54 */ sltu	$v0,$v0,$s4
.L800a1e58:
/* 0x800a1e58 */ beq	$v0,$zero,.L800a1e68
.L800a1e5c:
/* 0x800a1e5c */ addiu	$a0,$zero,30
.L800a1e60:
/* 0x800a1e60 */ jal	0x8009d274
.L800a1e64:
/* 0x800a1e64 */ ori	$a1,$zero,0xffff
.L800a1e68:
/* 0x800a1e68 */ lui	$s1,0x800e
.L800a1e6c:
/* 0x800a1e6c */ lw	$v0,2840($s1)
.L800a1e70:
/* 0x800a1e70 */ sll	$zero,$zero,0x0
.L800a1e74:
/* 0x800a1e74 */ lhu	$v1,70($v0)
.L800a1e78:
/* 0x800a1e78 */ lhu	$a0,72($v0)
.L800a1e7c:
/* 0x800a1e7c */ lhu	$v0,74($v0)
.L800a1e80:
/* 0x800a1e80 */ addu	$v1,$v1,$a0
.L800a1e84:
/* 0x800a1e84 */ addu	$s5,$v1,$v0
.L800a1e88:
/* 0x800a1e88 */ sltiu	$v0,$s5,200
.L800a1e8c:
/* 0x800a1e8c */ bne	$v0,$zero,.L800a1e9c
.L800a1e90:
/* 0x800a1e90 */ addiu	$a0,$zero,27
.L800a1e94:
/* 0x800a1e94 */ jal	0x8009d274
.L800a1e98:
/* 0x800a1e98 */ ori	$a1,$zero,0xffff
.L800a1e9c:
/* 0x800a1e9c */ lw	$v0,2840($s1)
.L800a1ea0:
/* 0x800a1ea0 */ sll	$zero,$zero,0x0
.L800a1ea4:
/* 0x800a1ea4 */ lhu	$v1,76($v0)
.L800a1ea8:
/* 0x800a1ea8 */ lhu	$a0,78($v0)
.L800a1eac:
/* 0x800a1eac */ lhu	$v0,80($v0)
.L800a1eb0:
/* 0x800a1eb0 */ addu	$v1,$v1,$a0
.L800a1eb4:
/* 0x800a1eb4 */ addu	$s5,$v1,$v0
.L800a1eb8:
/* 0x800a1eb8 */ sltiu	$v0,$s5,300
.L800a1ebc:
/* 0x800a1ebc */ bne	$v0,$zero,.L800a1ed4
.L800a1ec0:
/* 0x800a1ec0 */ addiu	$s0,$zero,1
.L800a1ec4:
/* 0x800a1ec4 */ addiu	$a0,$zero,32
.L800a1ec8:
/* 0x800a1ec8 */ jal	0x8009d274
.L800a1ecc:
/* 0x800a1ecc */ ori	$a1,$zero,0xffff
.L800a1ed0:
/* 0x800a1ed0 */ addiu	$s0,$zero,1
.L800a1ed4:
/* 0x800a1ed4 */ lw	$v0,2840($s1)
.L800a1ed8:
/* 0x800a1ed8 */ addu	$s3,$zero,$zero
.L800a1edc:
/* 0x800a1edc */ addiu	$v1,$v0,32
.L800a1ee0:
/* 0x800a1ee0 */ lhu	$v0,4($v1)
.L800a1ee4:
/* 0x800a1ee4 */ sll	$zero,$zero,0x0
.L800a1ee8:
/* 0x800a1ee8 */ bne	$v0,$zero,.L800a1ef8
.L800a1eec:
/* 0x800a1eec */ addiu	$s3,$s3,1
.L800a1ef0:
/* 0x800a1ef0 */ j	.L800a1f04
.L800a1ef4:
/* 0x800a1ef4 */ addu	$s0,$zero,$zero
.L800a1ef8:
/* 0x800a1ef8 */ slti	$v0,$s3,16
.L800a1efc:
/* 0x800a1efc */ bne	$v0,$zero,.L800a1ee0
.L800a1f00:
/* 0x800a1f00 */ addiu	$v1,$v1,2
.L800a1f04:
/* 0x800a1f04 */ beq	$s0,$zero,.L800a1f14
.L800a1f08:
/* 0x800a1f08 */ addiu	$a0,$zero,31
.L800a1f0c:
/* 0x800a1f0c */ jal	0x8009d274
.L800a1f10:
/* 0x800a1f10 */ ori	$a1,$zero,0xffff
.L800a1f14:
/* 0x800a1f14 */ lw	$ra,76($sp)
.L800a1f18:
/* 0x800a1f18 */ lw	$s8,72($sp)
.L800a1f1c:
/* 0x800a1f1c */ lw	$s7,68($sp)
.L800a1f20:
/* 0x800a1f20 */ lw	$s6,64($sp)
.L800a1f24:
/* 0x800a1f24 */ lw	$s5,60($sp)
.L800a1f28:
/* 0x800a1f28 */ lw	$s4,56($sp)
.L800a1f2c:
/* 0x800a1f2c */ lw	$s3,52($sp)
.L800a1f30:
/* 0x800a1f30 */ lw	$s2,48($sp)
.L800a1f34:
/* 0x800a1f34 */ lw	$s1,44($sp)
.L800a1f38:
/* 0x800a1f38 */ lw	$s0,40($sp)
.L800a1f3c:
/* 0x800a1f3c */ jr	$ra
.L800a1f40:
/* 0x800a1f40 */ addiu	$sp,$sp,80
.size FUN_800a1cd8, .-FUN_800a1cd8
