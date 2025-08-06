@1
D=-A
@KBD
D=M
@100
D=D-A
@draw
D;JEQ
(erase)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 4
	@2040 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 5
	D=A // D holds previous addr
	@30
	AD=D+A
	@15 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2036 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@15 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 6
	D=A // D holds previous addr
	@30
	AD=D+A
	@510 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 7
	D=A // D holds previous addr
	@30
	AD=D+A
	@252 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@30
	AD=D+A
	@2024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@29153 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@30
	AD=D+A
	@8752 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@30174 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@30
	AD=D+A
	@10080 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@19010 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@30
	AD=D+A
	@32192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@14785 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@30
	AD=D+A
	@16768 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1
 AD=A+1 // D holds addr
	@12 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@30
	AD=D+A
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16197 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@30
	AD=D+A
	@7680 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@7968 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@30
	AD=D+A
	@3072 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@31 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@30
	AD=D+A
	@14336 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@28 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	@28672 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1
 AD=A+1 // D holds addr
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@30
	AD=D+A
	@32767
	A=!A // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=1
	AD=A+1 // D holds addr
	@128 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	@4099 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@112 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@31
	AD=D+A
	@4154 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@142 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@31
	AD=D+A
	@2124 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@224 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@31
	AD=D+A
	@13872 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@31
	AD=D+A
	@18829 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@36 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@30
	AD=D+A
	@4096 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@31439 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@110 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@30
	AD=D+A
	@6144 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4927 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@108 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 27
	D=A // D holds previous addr
	@30
	AD=D+A
	@3840 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4062 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@15 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 28
	D=A // D holds previous addr
	@30
	AD=D+A
	@3840 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7903 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@83 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 29
	D=A // D holds previous addr
	@30
	AD=D+A
	@1664 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@4022 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@160 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 30
	D=A // D holds previous addr
	@30
	AD=D+A
	@1920 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@12463 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@184 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 31
	D=A // D holds previous addr
	@30
	AD=D+A
	@16192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@20464 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@191 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 32
	D=A // D holds previous addr
	@30
	AD=D+A
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@8193 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@255 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP
@R0
0;JMP
(draw)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 1
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 2
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 3
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 4
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 5
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 6
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 7
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 8
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 9
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 10
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 11
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 12
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 13
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 14
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 15
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 16
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 17
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 18
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 19
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 20
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 21
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 22
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 23
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 24
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 25
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 26
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 27
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 28
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 29
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 30
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 31
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 32
	D=A // D holds previous addr
	@30
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// return
	@R13
	A=M
	D;JMP

