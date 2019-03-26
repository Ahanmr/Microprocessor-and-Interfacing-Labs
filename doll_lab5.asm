.model tiny
.486
.data



.code
.startup
MOV AH, 00H ;set page mode
MOV AL,3h   
INT 10H
    
MOV AH, 02H ; set cursor position
MOV DL, 40
MOV DH, 12
MOV BH, 0
INT 10H

;write at cursor position
mov ah,09h
mov al, 'D'
mov bh,0h
mov bl,8Fh
mov cx,01h
int 10h

MOV AH, 02H ; set cursor position
MOV DL, 41
MOV DH, 12
MOV BH, 0
INT 10H

mov ah,09h
mov al, '0'
mov bh,0
mov bl,8fh
mov cx,01
int 10h

MOV AH, 02H ; set cursor position
MOV DL, 42
MOV DH, 12
MOV BH, 0
INT 10H

mov ah,09h
mov al, 'L'
mov bh,0
mov bl,8fh
mov cx,01
int 10h

MOV AH, 02H ; set cursor position
MOV DL, 43
MOV DH, 12
MOV BH, 0
INT 10H


mov ah,09h
mov al, 'L'
mov bh,0
mov bl,8fh
mov cx,01
int 10h

MOV AH, 02H ; set cursor position
MOV DL, 43
MOV DH, 12
MOV BH, 0
INT 10H



mov ah,07h
x1: int 21h
cmp al,'x'
jnz x1

.exit
end
