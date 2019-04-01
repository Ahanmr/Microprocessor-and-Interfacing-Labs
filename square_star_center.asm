.model tiny
.486
.data
orgdis  db      ?

stcol   db      35

strow   db      7

mdrow   db      12

endcol  db      45

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

        mov     al,'*'

        mov     bl,00010111b

        mov     cx,10

        int     10h
		inc dh
		cmp dh, endrow
		jne x1
	

		
		
x2: mov ah,07h
		int 21h
		cmp al,'?'
		jnz x2
		mov     al,orgdis

        mov     ah,0

        int     10h

.exit
end
