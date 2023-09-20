.segment "HEADER"
  ; .byte "NES", $1A      ; iNES header identifier
  .byte $4E, $45, $53, $1A
  .byte 2               ; 2x 16KB PRG code
  .byte 4               ; 4x  8KB CHR data
  .byte $31             ; mapper 1, vertical mirroring
  .byte $56, $65, $6E, $75, $74, $65, $63, $68, $21

.segment "VECTORS"
  ;; When an NMI happens (once per frame if enabled) the label nmi:
  .addr nmi
  ;; When the processor first turns on or is reset, it will jump to the label reset:
  .addr reset
  ;; External interrupt IRQ (unused)
  .addr forever

; "nes" linker config requires a STARTUP section, even if it's empty
.segment "STARTUP"
;important stuff for safe chr bank switching
.byte $00, $01, $02, $03
;some sort of sound info
.byte $05, $01, $0F, $00, $34, $04, $36, $02, $37, $04, $30, $02, $30, $10, $FF, $15
.byte $01, $0F, $00, $2B, $04, $31, $02, $32, $04, $27, $02, $27, $04, $60, $10, $FF
.byte $25, $7F, $00, $00, $24, $04, $26, $02, $27, $04, $20, $02, $20, $04, $24, $01
.byte $25, $01, $26, $01, $27, $01, $28, $01, $29, $01, $2A, $01, $2B, $01, $30, $04
.byte $FF, $35, $00, $00, $00, $03, $04, $03, $02, $03, $04, $03, $02, $03, $04, $FF
.byte $05, $01, $0F, $00, $39, $04, $39, $02, $37, $02, $1F, $02, $37, $02, $39, $04
.byte $40, $02, $3B, $02, $37, $02, $32, $02, $34, $02, $37, $06, $39, $02, $FF, $15
.byte $01, $0F, $00, $24, $04, $24, $02, $22, $02, $1F, $02, $22, $02, $24, $04, $20
.byte $0A, $22, $06, $24, $02, $FF, $25, $7F, $00, $00, $29, $04, $29, $02, $27, $02
.byte $1F, $02, $27, $02, $29, $04, $25, $0A, $27, $06, $29, $02, $FF, $35, $00, $00
.byte $00, $03, $04, $03, $02, $03, $04, $03, $02, $03, $04, $03, $02, $B5, $FF, $1F
.byte $04, $03, $02, $FF, $12, $02, $1F, $00, $EF, $02, $40, $01, $45, $01, $47, $01
.byte $50, $01, $B6, $FC, $DF, $02, $40, $01, $45, $01, $47, $01, $50, $01, $B7, $FC
.byte $BF, $F4, $30, $00, $00, $00, $07, $10, $FF, $10, $01, $01, $00, $69, $10, $FF
.byte $10, $01, $1F, $00, $EF, $01, $29, $01, $24, $01, $22, $01, $19, $01, $B8, $FC
;buffer area
.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; Main code segment for the program
.segment "CODE"

reset:
  sei		; disable IRQs
  cld		; disable decimal mode
  ldx #$40
  stx $4017	; disable APU frame IRQ
  ldx #$ff 	; Set up stack
  txs		;  .
  inx		; now X = 0
  stx $2000	; disable NMI
  stx $2001 	; disable rendering
  stx $4010 	; disable DMC IRQs

;; first wait for vblank to make sure PPU is ready
vblankwait1:
  bit $2002
  bpl vblankwait1

clear_memory:
  lda #$00
  sta $0000, x
  sta $0100, x
  sta $0200, x
  sta $0300, x
  sta $0400, x
  sta $0500, x
  sta $0600, x
  sta $0700, x
  inx
  bne clear_memory

;; second wait for vblank, PPU is ready after this
vblankwait2:
  bit $2002
  bpl vblankwait2

main:
load_palettes:
  lda $8003   ;Load character bank 3
  sta $8003   ;safe way to aviod a bus conflict
  lda $2002
  lda #$3f
  sta $2006
  lda #$00
  sta $2006
  ldx #$00
@loop:
  lda palettes, x
  sta $2007
  inx
  cpx #$20
  bne @loop

enable_rendering:
  lda #%10000000	; Enable NMI
  sta $2000
  lda #%00010000	; Enable Sprites
  sta $2001

forever:
  inc $00
  jmp forever

nmi:
  ldx #$00 	; Set SPR-RAM address to 0
  stx $2003
@loop:	lda hello, x 	; Load the hello message into SPR-RAM
  sta $2004
  inx
  cpx #$20
  bne @loop
  rti

hello:
  .byte $00, $00, $00, $00
  .byte $00, $00, $00, $00
  .byte $60, $E0, $00, $68
  .byte $60, $E1, $00, $70
  .byte $68, $E2, $00, $68
  .byte $68, $E3, $00, $70
  .byte $70, $E4, $00, $68
  .byte $70, $E5, $00, $70

palettes:
  ; Background Palette
  .byte $0f, $00, $00, $00
  .byte $0f, $00, $00, $00
  .byte $0f, $00, $00, $00
  .byte $0f, $00, $00, $00

  ; Sprite Palette
  .byte $0f, $12, $10, $21
  .byte $0f, $20, $30, $40
  .byte $0f, $20, $30, $40
  .byte $0f, $20, $30, $40

; Character memory
.segment "CHARS"
  .incbin "tfrr.chr"
