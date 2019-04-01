.model tiny
.486
.data
orgdis  db      ?

stcol   db      30

strow   db      7

mdrow   db      12

endcol  db      50

endrow  db      17

patrow db 7
patcol db 40
patrowe db 17
.code
.startup
		mov     ah,0fh

        int     10h

        mov     orgdis,al

        mov     ah,00

        mov     al,03

        int     10h

        mov     dh,strow
		
x1:     mov     dl,stcol

        mov     bh,0

        mov     ah,02

        int     10h

        mov     ah,09h

        mov     al,' '

        mov     bl,01111111b

        mov     cx,20

        int     10h
		inc dh
		cmp dh, endrow
		jne x1
	
		mov dl,patcol
		mov bh,0
		mov dh,patrow
		
		mov cx,1
x3:		mov ah,02h
		int 10h
		mov ah,09h
		mov al, ' '
		mov bh,0
		mov bl,00100010b
		
		int 10h
		dec dl
		inc dh
		add cx,2
		cmp dh,patrowe
		jne x3
		
		
x2: mov ah,07h
		int 21h
		cmp al,'?'
		jnz x2
		mov     al,orgdis

        mov     ah,0

        int     10h

.exit
end
