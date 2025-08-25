@16384
D=A
@16
M=D
//Sumar 20 a lo que hay en el registro 16
@20
D=A
@16
M=D+M
//en el registro 32 RAM registrar 100
@100
D=A
@32
M=D
//registro 200 a registro 100
@800
D=A
@200
M=D
@100
M=D
//restar a registro 3 (100) un valor de 15
@100
D=A
@3
M=D
@15
D=A
@3
M=M-D