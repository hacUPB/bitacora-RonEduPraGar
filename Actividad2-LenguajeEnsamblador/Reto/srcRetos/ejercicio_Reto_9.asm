@6
D=A
@a
M=D
@suma
M=D+M
@9
D=A
@b
M=D
@suma
M=D+M
@suma
D=A
@pvar
M=D
@pvar
A=M
D=M
@c
M=D
(draw)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 1
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 2
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 3
	D=A // D holds previous addr
	@32
	AD=D+A
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
(END)
@END
0;JMP