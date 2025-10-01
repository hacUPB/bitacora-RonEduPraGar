@i  //primeras 15 slots estan reservadas, i indica la primera posicion no reservada (16)
M=1
@sum //espacio siguiente al activo (i+1 / 16+1)
M=0
@i
D=M
@sum
M=D+M

//loop/label practice

@100
D=A
@i
M=D
(LOOP) //this is a label
@i
D=M
@CONT //this is position, not action
D;JEQ //this is action, not position, even though it leads to a position
@i
M=M-1
@LOOP

(CONT)
0;JMP //generic guaranteed jump