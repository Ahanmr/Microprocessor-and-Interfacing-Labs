.model tiny
.486
.data
origdis db ?
row1 db 7
col1 db 30
row2 db 18
col2 db 50
rowmid db 12
.code
.startup
mov ah,0fh ;get display mode
int 10h
mov origdis, al 
mov ah,00h ;set display mode
mov al,03h
int 10h
mov ah,02h; set cursor

mov dh,row1

x1: mov dl,col1
		mov bh,0
		mov ah,02h
		int 10h
		mov ah,09h
		mov al, ' '
		;mov bh,0
		mov bl, 01000100b
		mov cx,20
		int 10h
		inc dh
		cmp dh,rowmid
		jne x1
		mov dl,col1
		mov bh,0
		mov ah,02h
		int 10h
		mov ah,09h
		mov al, '$'
		;mov bh,0
		mov bl,01001011b
		mov cx,20
		int 10h
		inc dh
		
x3: mov dl,col1
		mov bh,0
		mov ah,02h
		int 10h
		mov ah,09h
		mov al, ' '
		mov bh,0
		mov bl, 01000100b
		mov cx,20
		int 10h
		inc dh
		cmp dh,row2
		jne x3
		
x4: mov ah,07h
		int 21h
		cmp al,'?'
		jne x4
		mov     al,origdis
        mov     ah,0
        int     10h

.exit
end
