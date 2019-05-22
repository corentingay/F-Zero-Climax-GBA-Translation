  ; F-Zero Climax Translation by Normmatt

.gba				; Set the architecture to GBA
.open "rom/output.gba",0x08000000	; Open input.gba for output.
						; 0x08000000 will be used as the
						; header size

.relativeinclude on

;Equs for Scripting and control codes
TextNL equ 0x0A
TextEnd equ .byte 0x0
;EOF eq .byte 0x82,0x64,0x82,0x6E,0x82,0x65,0,0 ;EOF in SJIS

/*
  At 0x080635f0 :
  We have a pointer to an array of pointers to struct menu
*/

;.org 0x08063610
;	.word 0x0861c6cc
;
;.org 0x08063618
;	.word 0x0861c6cc


;.org 0x0806360c
;	.word 0x0

;.org 0x0806360c + 8 ; 2 words, the size of the structure
;	.word 0x0

;
;	.word 0x0861c6a4
;	.word 0xe00e4800
;
;	.word 0x0861c6a4
;	.word 0xe00a4800
;
;	.word 0x0861c6a4
;	.word 0xe0064800
;
;	.word 0x0861c6a4
;	.word 0xe0024800
;

.org 0x0861c6cc
	.byte 0x82
	.byte 0x83

	.byte 0x82
	.byte 0x81

	.byte 0x82
	.byte 0x83

	.byte 0x82
	.byte 0x81
;
;	TextEnd
;	TextEnd
;	TextEnd
;	TextEnd

.close
 ; make sure to leave an empty line at the end
