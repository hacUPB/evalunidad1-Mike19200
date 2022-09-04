// Miguel Angel Mogollon Soto
// 000447291
// miguel.angel.mogollon@hotmail.com
(INICIO)
         @KBD
         D=M
         @color
         M=1     //COLOR NEGRO
         @84
         D=D-A
         @SETRECTA
         D;JEQ
 
         @KBD
         D=M
         @color  //COLOR BLANCO
         M=O
         @67
         D=D-A 
         @SETCL
         D;JEQ
 
         @KBD
         D=M
         @88
         D=D-A 
         @SETCL
         D;JEQ
 
         @INICIO
         0;JMP

(SETRECTA)
         @16400
         D=A
         @draw
         M=D

         @256
         D=A
         @cont
         M=D

         @32
         D=A
         @jump
         M=D 
         @RECTA
         0;JMP

(SETCL)
         @16384
         D=A 
         @draw
         M=D
         @8192
         D=A 
         @cont
         M=D
         @1
         D=A
         @jump
         M=D 
         @RECTA3
         0;JMP

(RECTA)
         @draw
         D=M
         @pscreen
         M=D

(PAINT)
         @cont
         D=M 

         @HORIZONTAL
         D;JEQ
         @color
         D=M
         @pscreen
         A=M 
         M=D

         @cont
         M=M-1

         @jump 
         D=M 
         @pscreen
         M=M+D

         @PAINT
         0;JMP

(HORIZONTAL)
         @20480
         D=A 
         @draw
         M=D 

         @32
         D=A 
         @cont 
         M=D

         @jump 
         M=1
         @RECTA2
         0;JMP 

(RECTA2)
         @draw
         D=M 
         @pscreen
         M=D

(PAINT2)  
         @cont
         D=M 
         @END
         D;JEQ

         @color
         D=-1

         @pscreen
         A=M
         M=D 

         @cont
         M=M-1

         @jump
         D=M 
        
         @pscreen
         M=M+D 

         @PAINT2
         0;JMP

(RECTA3)
        @draw
        D=M
        @pscreen
        M=D 

(PAINT3)
        @cont 
        D=M 
        @END
        D;JEQ
        @color
        D=M 
        
        @pscreen
        A=M 
        M=D 
        
        @cont 
        M=M-1
        
        @jump
        D=M
        
        @pscreen
        M=M+D 
        
        @PAINT3
        0;JMP
(END)
        @INICIO
        0;JMP        
         

       
         





