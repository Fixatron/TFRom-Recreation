;;Custom variables
vert_wpn_speed          = $FC ; inc speed of vertical and diagonal bullets $FC, positive number goes down, 00 is level shot
hori_wpn_speed          = $04 ; inc speed of horizontal and diagonal bullets $04, positive number goes right, 00 is supposedly vertical, lo bytes arnt considered because they're too small of increments but still part of the game engine
max_bullets             = $04 ; max bullets on screen allowed
max_bullet_frames       = $20 ; how many frames the bullet is on screen for
missile_frames_int      = $30 ; how many frames the bullet is on screen for
max_missile_frames      = $40 ; how many frames the bullet is on screen for
;;Custom defines
timer_lo_byte           = $19
timer_hi_byte           = $1A
which_player            = $1B    ; 00= player 1, ff= player 2
rtn_trk_0               = $1C
rtn_trk_a               = $1D    ; $80 = title screen, 04= start pushed at title, 08=level start, 00= in game. 0bit = stuff in stack
rtn_trk_b               = $1E
flash_counter           = $1F
unram_27                = $20
sel_status              = $21    ; selection status for title screen, 0= 1 player, FF=2 players
state                   = $22 
p1ScoreLo               = $23
p1ScoreMid              = $24
p1ScoreHi               = $25
p2ScoreLo               = $26
p2ScoreMid              = $27
p2ScoreHi               = $28
hiScoreLo               = $29
hiScoreMid              = $2A
hiScoreHi               = $2B
incScoreLo              = $2C
incScoreHi              = $2D
stage_orientation       = $2E   ; $00 for most levels, $01 for floating bosses (boss4/5/7/9/10) , $40 is upward level (3/10), $80 is downward level (6/8), lookup table is at cc77
plr_y_pos_lo            = $2F
plr_y_pos_hi            = $30
plr_x_pos_lo            = $31
plr_x_pos_hi            = $32
player_sprite           = $33 
unram_26                = $34
player_landed           = $35
flight_status           = $36 ; 00000000 = truck,transforming,jumping,flying,0,0,0,0
unram_13                = $37
wpn_timer               = $38
wpn2_timer              = $39
plr_y_inc_fraction      = $3A
plr_y_inc               = $3B
plr_x_inc_lo            = $3C
plr_x_inc_hi            = $3D
unram_14                = $3E
unram_18                = $3F
unram_15                = $40
unram_16                = $41
player_speed            = $42
unram_6                 = $43
unram_8                 = $44
frame_counter_96        = $45   ; Resets every $60 frames, Counts to $18 by increments of 4, to indicate that the subtitle is done writing
unram_17                = $46

stage_boss              = $48   ; 00 is level, 01 is boss
unram_22                = $49
unram_10                = $4A   ; related to the boss float and/or wpn timer
level_backup            = $4B
unram_7                 = $4C
unram_19                = $4D
jump_hold               = $4E
unram_25                = $4F
player_un_pos           = $50
plr_x_pos_hi_old        = $51
plr_y_pos_hi_diff       = $52
power_up                = $53
hits_taken              = $54
unram_23                = $55
bk_yScrlLo              = $56
bk_yScrlHi              = $57
bk_plrYPosLo            = $58
bk_plrYPosHi            = $59
bk_plrXPosLo            = $5a
bk_plrXPosHi            = $5b
bk_plrXProgFr           = $5c
bk_plrXProgLo           = $5d
bk_plrXProgHi           = $5e
bk_plrYProgFr           = $5f
bk_plrYProgLo           = $60
bk_plrYProgHi           = $61

unram_1                 = $66
unram_2                 = $67
unram_3                 = $68
lives                   = $69
current_level           = $6A     ; odd levels are bosses, level $18 is rodimus U, 
bk_crnt_lvl             = $6B
plr_x_prog_fr           = $6C
plr_x_prog_lo           = $6D
plr_x_prog_hi           = $6E
plr_y_prog_fr           = $6F
plr_y_prog_lo           = $70
plr_y_prog_hi           = $71
subtitle_timer          = $72
unram_20                = $73
rodimus_ram             = $74
sub_state               = $75 
unram_4                 = $76
unram_5                 = $77
score_1_up_lo           = $78   ; next score needed for 2-up
score_1_up_mid          = $79   
score_1_up_hi           = $7A 
unram_21                = $7B 


other_pl_stored_data    = $81

palette_data_start      = $99
palette_data_start_word = $0099


unram_11                = $A7

player_palette_ram      = $AA

unram_12                = $B8
new_tile_x_PPU_ADDRESS  = $B9
new_tile_y_PPU_ADDRESS  = $BA
palette_x_address       = $BB
palette_y_address       = $BC
newTileColumnStart      = $BD

nextSpriteDataLoadStart = $00DB

controller_current      = $F0
controller_last         = $F1
controller_p1_current   = $F2
controller_p2_current   = $F3
controller_p1_last      = $F4
player_direction        = $F5
ram_PPU_CTRL            = $F6
ram_PPU_Mask            = $F7

x_scroll                = $FA
y_scroll_lo             = $FB
y_scroll_hi             = $FC
unram_97                = $FD
unram_98                = $FE

audio_ram_start         = $0300
audio_ram_0             = $0300
audio_ram_1             = $0301
audio_ram_2             = $0302
audio_ram_3             = $0303
audio_ram_4             = $0304
audio_ram_5             = $0305
audio_ram_6             = $0306
audio_ram_7             = $0307
audio_ram_8             = $0308
audio_ram_9             = $0309
audio_ram_A             = $030A
audio_ram_B             = $030B
audio_ram_C             = $030C
audio_ram_D             = $030D
audio_ram_E             = $030E
audio_ram_F             = $030F

apu_status_ram_0        = $0380
apu_status_ram_1        = $0381
apu_status_ram_2        = $0382
apu_status_ram_3        = $0383
apu_status_ram_4        = $0384
apu_status_ram_5        = $0385
apu_status_ram_6        = $0386
apu_status_ram_7        = $0387
apu_status_ram_8        = $0388
apu_status_ram_9        = $0389

some_ram_start     = $0400

weapon_sprite_data_start= $0500
wpn_status              = $0500
wpn_x_pos_fr            = $0501
wpn_x_pos_lo            = $0502
wpn_x_pos_hi            = $0503
wpn_x_pos_ex            = $0504
wpn_y_pos_lo            = $0505
wpn_y_pos_hi            = $0506
wpn_y_pos_ex            = $0507
wpn_sprite_type         = $0508
wpn_x_inc_lo            = $0509
wpn_x_inc_hi            = $050A
wpn_y_inc_lo            = $050B
wpn_y_inc_hi            = $050C
bullet_timer            = $050D

bos_status              = $0540
bos_x_pos_fr            = $0541
bos_x_pos_lo            = $0542
bos_x_pos_hi            = $0543
bos_x_pos_ex            = $0544
bos_y_pos_lo            = $0545
bos_y_pos_hi            = $0546
bos_y_pos_ex            = $0547
bos_sprite_type         = $0548
bos_x_inc_lo            = $0549
bos_x_inc_hi            = $054A
bos_y_inc_lo            = $054B
bos_y_inc_hi            = $054C
bos_timer               = $054D


enemy_sprite_data_start = $0600
eny_spr_status          = $0600
eny_spr_substatus       = $0601
eny_spr_x_pos_fr        = $0602
eny_spr_x_pos_lo        = $0603
eny_spr_x_pos_hi        = $0604
eny_spr_y_pos_fr        = $0605
eny_spr_y_pos_lo        = $0606
eny_spr_y_pos_hi        = $0607
eny_spr_type            = $0608
eny_x_inc_lo              = $0609
eny_x_inc_hi             = $060A
eny_y_inc_lo              = $060B
eny_y_inc_hi              = $060C
eny_exp_timer           = $060D
eny_frozen_timer        = $060E
eny_boss_wpn_timer      = $060F

oam_ram_data_start      = $0700

score_sprite_y_pos      = $0700
score_sprite_byte       = $0701
score_sprite_attr       = $0702
score_sprite_x_pos      = $0703

sprite1_y_pos           = $071C
sprite1_byte            = $071D
sprite1_attr            = $071E
sprite1_x_pos           = $071F

enemy_sprite_y_pos      = $0740
enemy_sprite_byte       = $0741
enemy_sprite_attr       = $0742
enemy_sprite_x_pos      = $0743

;; PPU defines

PPU_CTRL        = $2000
PPU_MASK        = $2001
PPU_STATUS      = $2002
PPU_OAM_ADDR    = $2003
PPU_OAM_DATA    = $2004
PPU_SCROLL      = $2005
PPU_ADDR        = $2006
PPU_VRAM_IO     = $2007

;; APU defines

APU_PULSE1CTRL  = $4000         ; Pulse #1 Control Register (W)
APU_PULSE1RAMP  = $4001         ; Pulse #1 Ramp Control Register (W)
APU_PULSE1FTUNE = $4002         ; Pulse #1 Fine Tune (FT) Register (W)
APU_PULSE1CTUNE = $4003         ; Pulse #1 Coarse Tune (CT) Register (W)
APU_PULSE2CTRL  = $4004         ; Pulse #2 Control Register (W)
APU_PULSE2RAMP  = $4005         ; Pulse #2 Ramp Control Register (W)
APU_PULSE2FTUNE = $4006         ; Pulse #2 Fine Tune Register (W)
APU_PULSE2STUNE = $4007         ; Pulse #2 Coarse Tune Register (W)
APU_TRICTRL1    = $4008         ; Triangle Control Register #1 (W)
APU_TRICTRL2    = $4009         ; Triangle Control Register #2 (?)
APU_TRIFREQ1    = $400A         ; Triangle Frequency Register #1 (W)
APU_TRIFREQ2    = $400B         ; Triangle Frequency Register #2 (W)
APU_NOISECTRL   = $400C         ; Noise Control Register #1 (W)
;;APU_ = $400D  ; Unused (???)
APU_NOISEFREQ1  = $400E         ; Noise Frequency Register #1 (W)
APU_NOISEFREQ2  = $400F         ; Noise Frequency Register #2 (W)
APU_MODCTRL     = $4010         ; Delta Modulation Control Register (W)
APU_MODDA       = $4011         ; Delta Modulation D/A Register (W)
APU_MODADDR     = $4012         ; Delta Modulation Address Register (W)
APU_MODLEN      = $4013         ; Delta Modulation Data Length Register (W)
APU_OAM_DMA     = $4014         ; Sprite DMA Register (W)
APU_CHANCTRL    = $4015         ; Sound/Vertical Clock Signal Register (R)
JOY1            = $4016         ; Joypad #1 (RW)
JOY2_FRAME      = $4017         ; Joypad #2/SOFTCLK (RW)


.segment "HEADER"
  ; .byte "NES", $1A    ; iNES header identifier
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
  .addr irq

; "nes" linker config requires a STARTUP section, even if it's empty
.segment "STARTUP"
; important stuff for safe chr bank switching
.byte $00, $01, $02, $03
; some sound info a @$8004
.byte $05, $01, $0F, $00, $34, $04, $36, $02, $37, $04, $30, $02, $30, $10, $FF
; some sound info b @$8013
.byte $15, $01, $0F, $00, $2B, $04, $31, $02, $32, $04, $27, $02, $27, $04, $60, $10, $FF
; some sound info c @$8024
.byte $25, $7F, $00, $00, $24, $04, $26, $02, $27, $04, $20, $02, $20, $04, $24, $01
.byte $25, $01, $26, $01, $27, $01, $28, $01, $29, $01, $2A, $01, $2B, $01, $30, $04, $FF
; some sound info d @$8045
.byte $35, $00, $00, $00, $03, $04, $03, $02, $03, $04, $03, $02, $03, $04, $FF
; game over a @$8054
.byte $05, $01, $0F, $00, $39, $04
;game over e
.byte $39, $02, $37, $02, $1F, $02
.byte $37, $02, $39, $04, $40, $02
.byte $3B, $02, $37, $02, $32, $02
.byte $34, $02, $37, $06, $39, $02, $FF
; game over b @$8073
.byte $15, $01, $0F, $00, $24, $04
.byte $24, $02, $22, $02, $1F, $02, $22, $02, $24, $04, $20, $0A, $22, $06, $24, $02, $FF
; game over c @$808A
.byte $25, $7F, $00, $00, $29, $04
.byte $29, $02, $27, $02, $1F, $02, $27, $02, $29, $04, $25, $0A, $27, $06, $29, $02, $FF
;tftheme/game over d @$80a1
.byte $35, $00, $00, $00, $03, $04, $03, $02, $03, $04, $03, $02, $03, $04, $03, $02, $B5, $FF
.byte $1F, $04, $03, $02, $FF
; rodimus endscreen @$80B8
.byte $12, $02, $1F, $00, $EF, $02, $40, $01, $45, $01, $47, $01
.byte $50, $01, $B6, $FC, $DF, $02, $40, $01, $45, $01, $47, $01, $50, $01, $B7, $FC
.byte $BF, $F4
; Subtitle sound b @$80D6
.byte $30, $00, $00, $00, $07, $10, $FF
; Subtitle sound a @$80DD
.byte $10, $01, $01, $00, $69, $10, $FF
; Subtitle sound c @$80E4
.byte $10, $01, $1F, $00, $EF, $01, $29, $01, $24, $01, $22, $01, $19, $01, $B8, $FC
;buffer area
.byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; Main code segment for the program
.segment "CODE"

reset:                ; @$8100
  sei		              ; disable IRQs
  lda #$00
  sta PPU_CTRL	      ; disable NMI @$2000
  sta PPU_MASK 	      ; disable rendering @$2001(PPUMASK)
  cld		              ; disable decimal mode
;; first wait for vblank to make sure PPU is ready
vblankwait1:
  lda PPU_STATUS      ; @$2002
  bpl vblankwait1
  lda #$00
  sta PPU_CTRL        ; @$2000
  nop
;; second wait for vblank, PPU is ready after this
;; could have done other things first, like clear ram, but thats okay
vblankwait2:
  lda PPU_STATUS      ; @$2002
  bpl vblankwait2
  ldx #$FF            ; enable X index
  txs                 ; enable stack
  lda #$00
  sta sel_status      ; reset sel_status
  sta APU_MODCTRL     ; disable DMC IRQs @$4010
  lda #$40            ; write 40 to frame counter
  sta JOY2_FRAME	    ; disable APU frame IRQ @$4017
  lda #$E8            ; load initial high score
  sta hiScoreLo       ; reset hi-score to 10,000
  lda #$03
  sta hiScoreMid
  lda #$00
  sta hiScoreHi
  jsr clear_player_scores
init_level:
  jsr set_PPU_MASK_b  
  jsr set_PPU_CTRL_b 
  lda #$FF
  sta rtn_trk_b       ; store $FF to $1E
  lda #$10
  sta rtn_trk_a       ; store $10 to $1D
  jsr clear_ram              ; @$CCC6
  jsr title_timer_rtn       ; @$CD47
  jsr reset_player_ram           ; @$834C
  lda #$00                      ; load 0 lives and first level for demo
  sta current_level                     ; first level for demo
  sta lives
  lda #$80                      ; ready $80 for subtitle and 96 frame counter
  sta frame_counter_96
  jsr set_demo_pl1              ; Set player 1 for demo
  jmp init_level                 ; jump back up to repeat initializing level
title_loop_jmp:
  jsr start_pushed_at_title     ; this subroutine seems to be only used just when start is pushed at title before Ultra Magnus shows on flashing screen
  jsr disable_audio_channels    ; disable audio channels and set audio ram statuses to $FF
  jsr clear_player_scores       ; Clear player scores
  lda #$00
  sta rtn_trk_b
  jsr reset_player_ram
  lda sel_status                ; 0= 1 player ff= 2 players selected on title screen
  bne set_demo_pl1              ; branch if 2 players is selected @$22=$FF
  lda #$FF
  sta other_pl_stored_data      ; put FF at other player lives storage data if 2 players is selected
set_demo_pl1:
  lda #$00
  sta which_player              ; set current player to player 1 
pre_stage_prep:
  jsr pre_stage_screen          ; Setup the pre stage screen
  lda #$00                      ; clear unknown ram locations
  sta unram_1
  sta unram_2
  sta unram_3
pre_stage_prep_a:
  lda #$00
  sta x_scroll                  ; clear x and y scroll in ram
  sta y_scroll_lo
  sta y_scroll_hi
  sta power_up                  ; clear powerup
  sta hits_taken                ; clear hits taken
  sta frame_counter_96          ; reset 96 frame counter
  sta plr_x_prog_fr        ; reset player current_level progression
  sta plr_x_prog_lo
  sta plr_x_prog_hi
  sta plr_x_pos_lo
  sta plr_y_pos_lo
  sta unram_5
  lda #$1F
  sta unram_4
  ldy current_level
  lda stage_boss_table,Y          ; use a lookup table to find the odd levels @$C92F
  sta stage_boss                ; store 1 for boss or 0 for stage
  lda stage_orientation_table,Y   ; load stage orientation table @$CC77
  sta stage_orientation         ; store in ram
  and #$40                      ; check for upwards levels, 3 or 10
  beq :+                        ; branch if not
  lda #$00
  sta plr_y_prog_fr        ; store 00 enemy sprite x offset
  lda #$C0
  sta plr_y_prog_lo        ; store C0 enemey sprite y offset
  lda #$03
  sta plr_y_prog_hi         ; store 03 enemy orientation
  jmp :++                       ; skip the part where we clear the enemy sprite offsets if level isnt 3 or 10
:
  lda #$00                      ; clear enemy offsets on all levels except 3 and 10
  sta plr_y_prog_fr        
  sta plr_y_prog_lo        
  sta plr_y_prog_hi         
:
  tya
  asl
  tay       ; multiply level index offset by 2
  lda player_y_pos_tbl,Y      ; @$C9D3
  sta plr_y_pos_hi     ; store to player vertical position
  lda player_x_pos_tbl,Y      ; @$C9D4
  sta plr_x_pos_hi     ; store to player horizontal position
pre_stage_prep_b:
  lda #$00
  sta controller_p1_current ; clear player 1 controller input
  sta flight_status
  sta subtitle_timer        ; reset subtitle timer
  sta unram_7
  sta rtn_trk_0
  sta state
  sta rtn_trk_a
  sta jump_hold
  sta player_landed
  sta plr_x_inc_lo
  sta plr_x_inc_hi
  sta plr_y_inc_fraction
  sta plr_y_inc
  sta unram_13
  sta wpn_timer
  sta unram_14
  sta unram_15
  lda #$02
  sta unram_16
  sta unram_17
  lda #$00
  sta player_sprite
  lda #$01
  sta player_direction
  lda current_level                 ; load level
  lsr                       ; divide by 2
  tay                       ; store in Y index
  lda stage_misc_tbl_1,Y    ; @$C94C
  sta unram_19              ; store @$4D
  ldy current_level                 ; load level to Y
  lda stage_boss_table,Y
  sta stage_boss            ; store if stage or boss in ram
  lda stage_orientation_table,Y
  sta stage_orientation     ; store stage orientation to ram
  lda unram_20              ; load @$73
  sta $00
  cmp #$07
  bcc :+
  lda #$0F
  sta $00
:
  lda player_speed_tbl,Y    ; load player speed, although its always 20
  sec
  sbc $00
  sta player_speed
  lda chr_rom_bank_tbl,Y
  tax
  lda $8000,X               ; Select CHR Rom bank
  sta $8000,X
  jsr clear_sprite_ram      ; @$A7C3
  jsr ready_level           ; @$8ACB
  jsr play_sound_a          ; @$D87C
  jsr level_sub_a           ; @$A5DA
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
vblankwait3:
  lda #$30
  bit state
  bvs :++
  bmi :+++++
  beq :+
  jmp main_jmp_1
:
  lda controller_p1_current
  and #$04                  ; is select pressed?
  jmp vblankwait3
:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda current_level
  cmp #$10
  bne :+
  lda unram_4
  beq :+
  jmp pre_stage_prep
:
  inc current_level         ; next level
  lda #$00
  sta unram_21
  sta sub_state
  ldy current_level         ; load current level to Y
  cpy #$14
  bcc :+
  jsr rodimus_check         ; @$D076 a bit mangled in the code, but its not too difficult to figure out
  inc unram_20
  ldy #$00
  lda  rodimus_ram
  and #$FE                  ; check for letters, play as rodiumus is in 0bit, letters are in the restr
  eor #$FE
  beq :+                    ;branch if all letters are collected but rodimus not activated, yet
  lda #$00
  sta  rodimus_ram
:                          ; loop here until player pushes select
  sty current_level        ; storing y in current level isn't actually necessary because we've loaded y from the current level ******
  jsr get_player_input
  lda #$04
  and controller_p1_current
  bne :-                    ; branch if select is pushed
  jmp pre_stage_prep
:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda rtn_trk_b
  bpl :+
  rts
:                          ; decrement lives
  dec lives
  lda lives
  bpl :++
  jsr title_sub_finish    ; @$D374
  lda unram_23
  beq :+
  lda #$02
  sta lives
  lda #$00
  sta unram_23
  jsr clear_player_scores
  jmp :++
:
  lda other_pl_stored_data
  bmi :+++
:
  lda sub_state
  bmi :+++++
  lda other_pl_stored_data
  bmi :+
  ldy #$FF
  lda which_player
  jsr swap_player_ram
:
  jmp pre_stage_prep
:
  lda #$FF
  sta rtn_trk_b
  jmp init_level
main_jmp_1:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda state
  and #$10
  bne :++
  lda unram_3
  bpl :+
  lda #$80
  sta unram_3
  lda current_level
  sta bk_crnt_lvl
  lda #$1C
  sta current_level       ; load warp zone with bumblebee, level 1C 
  jmp pre_stage_prep_a    ; @$8186
:
  lda bk_crnt_lvl
  clc
  adc #$04
  sta current_level
  lda #$00
  sta unram_3
  jmp pre_stage_prep
:
  lda sub_state
  bmi :+
  jsr bkup_lvl_prog_for_side_lvl
  jmp pre_stage_prep_a
:
  jsr load_lvl_prog_bkup    ; @$9689
  jsr pre_stage_prep_b ; @$81D8
swap_player_ram:
  ldx #$00
:
  lda lives,X
  sta $00
  lda other_pl_stored_data
  sta lives,X
  lda $00
  sta other_pl_stored_data
  inx 
  cpx #$18
  bcc :-
  rts
reset_player_ram:           ; @$834C
  jsr reset_current_player_ram
  jsr swap_player_ram
reset_current_player_ram:
  ldx #$17                  ; clear $17 bytes of ram starting with lives @$69
:
  lda #$00
  sta lives,X               ; we work down to lives @$69
  dex                       ; index next byte to clear
  bpl :-                    ; loop back until we've cleared all $17 bytes of current player ram
  lda #$02                  ; initialize player with 2 lives
  sta lives                 ; store in current player ram
  lda #$E8                  ; initialize score goal for next 1-Up reward
  sta score_1_up_lo
  lda #$03
  sta score_1_up_mid
  lda #$00
  sta score_1_up_hi
  rts
nmi:                        ; beginning of frame
  pha                       ; push A to stack
  txa                       ; transfer X to A
  pha                       ; push A to stack
  tya                       ; transfer Y to A
  pha                       ; push A to stack
  lda PPU_STATUS            ; clear PPU_STATUS VBlank flag
  lda #$00
  sta PPU_OAM_ADDR          ; set OAM Sprite Address @$0700
  lda #$07
  sta APU_OAM_DMA           ; store high byte in OAM_DMA
  lda rtn_trk_a             ; check routine status, do stuff if 0bit is set or if it isnt
  lsr
  bcc :+                    ; branch if stack is cleared
  jsr stack_handler_1       ; @$840B ** did I do this yet?
:
  lda rtn_trk_a
  ora #$01                  ; set 0bit in routine status to 1
  sta rtn_trk_a
  jsr load_palette_ram_to_ppu
  inc timer_lo_byte         ; increment main timer
  bne :+                    ; skip increment of hi byte if we haven't rolled over
  inc timer_hi_byte         ; increment timer hi byte if lo byte rolled over
:
  lda #$10
  bit rtn_trk_a
  bne pull_stack_and_rti
  lda rtn_trk_a
  and #$AC
  beq :++++
  bmi :+++
  and #$0C
  bne :+
  jmp get_player_input_before_rti   ; I need to find out more about rtn_trk_a to better describe this subroutine
:
  and #$08
  bne :+
  jmp sound_rtn_jmp_point_2         ; jump to collision detection if A is $08
:
  jmp sound_rtn_jmp_point_1         ; jump to the first one, if A isnt $08
:
  jmp get_player_input_jump_point
:
  lda current_level                         ; load current level
  lsr
  bcs :+                            ; branch if we're on a boss and dont scroll horizontal
  lda stage_orientation             ; load stage orientation
  and #$C0                          ; check if its vertical, at bit 6 and 7
  bne :+                            ; branch if vertical level and dont scroll horizontal
  jsr write_new_tile_column         
:
  jsr ppu_scroll_check
  jsr player_bullet_enemy_routine
  jsr clear_audio_channels
  jsr write_pl1_score
  jsr get_player_input
  jsr controller_input_check_b
  bit rtn_trk_a
  bvs pull_stack_and_rti
  lda state
  and #$04
  beq :+
  jmp flash_counter_jmp
:
  lda unram_3
  bpl :+
  jmp enemy_misc_rtn_1
:
  lda state
  bmi pull_stack_and_rti
  and #$02
  bne :+++
  lda state
  lsr
  bcs :+
  lda sub_state
  bmi :+++++++
  jsr game_jmp_1        ; @$8511
pull_stack_and_rti:
  lda rtn_trk_a
  and #$FE
  sta rtn_trk_a
pull_stack_and_rti_b:
  pla
  tay
  pla
  tax
  pla
irq:
  rti
stack_handler_1:
  jsr clear_audio_channels
  jmp pull_stack_and_rti_b
:
  lda current_level
  and #$01
  bne :+
  jsr enemy_misc_rtn_2
  jsr wpn_hit_rtn
  jmp pull_stack_and_rti
:
  jsr enemy_sprite_rtn
  jsr enemy_misc_rtn_4
  jsr flash_background
  jmp pull_stack_and_rti
:
  inc flash_counter
  lda flash_counter
  cmp #$80
  bcs :++
  ldx #$00
  ldy #$0f
  cmp #$0C
  bcc :+
  iny
  cmp #$18
  bcc :+
  ldy #$0A
:
  sty player_sprite
  jmp pull_stack_and_rti
:
  lda #$80
  sta state
:
  jmp pull_stack_and_rti
:
  jsr ram_misc_23
  lda sub_state
  and #$20
  bne :--
  jsr player_pose_1
  jsr wpn_misc_1
  jsr wpn_hit_rtn
  jsr enemy_misc_rtn_7
  jsr enemy_sprite_rtn
  jsr enemy_misc_rtn_8
  jsr enemy_misc_rtn_9
  jsr enemy_misc_rtn_10
  jmp pull_stack_and_rti
flash_counter_jmp:
  inc flash_counter
  lda flash_counter
  cmp #$C0
  bcs :+
  jsr flash_background
  jmp pull_stack_and_rti
:
  lda #$80
  sta unram_3
  lda #$20
  sta unram_3
  lda #$20
  sta state
  jmp pull_stack_and_rti
enemy_misc_rtn_1:
  jsr enemy_misc_rtn_7
  jsr enemy_sprite_rtn
  jsr enemy_misc_rtn_8
  lda state
  lsr
  bcc :+
  jsr enemy_misc_rtn_2
:
  jmp pull_stack_and_rti
get_player_input_jump_point:
  jsr get_player_input
  jsr screen_misc_rtn_1
  jsr screen_misc_rtn_2
  jsr clear_audio_channels
  jmp pull_stack_and_rti
sound_rtn_jmp_point_1:
  jsr clear_audio_channels
  jsr get_player_input
  lda #$00
  sta $0F
  jsr player_sprite_rtn
  jmp pull_stack_and_rti
sound_rtn_jmp_point_2:
  jsr clear_audio_channels
  jsr player_bullet_enemy_routine
  jsr enemy_sprite_rtn
  jsr enemy_misc_rtn_8
  lda current_level
  and #$02
  bne :+
  lda hiScoreLo
  sta $00
  lda hiScoreMid
  sta $01
  lda hiScoreHi
  sta $02
  lda #$C0
  sta $0E
  lda #$98
  sta $0f
  jsr draw_score
:
  lda state
  lsr
  bcc :+
  inc flash_counter
  lda flash_counter
  cmp #$C0
  bcs :++
  jsr flash_background
:
  jmp pull_stack_and_rti
:
  lda #$FF
  sta state
  jmp pull_stack_and_rti
get_player_input_before_rti:
  jsr get_player_input
  jsr scroll_logo
  jsr ppu_scroll_check
  jsr clear_audio_channels
  jmp pull_stack_and_rti
game_jmp_1:
  jsr player_pose_1
  jsr enemy_misc_rtn_11       ; something about bullets?
  jsr wpn_misc_1
  jsr wpn_hit_rtn
  jsr enemy_misc_rtn_7
  jsr enemy_sprite_rtn
  jsr enemy_misc_rtn_8
  jsr enemy_misc_rtn_9
  jsr enemy_misc_rtn_10
  jsr enemy_misc_rtn_12
  lsr
  bcs :+
  lda stage_orientation
  and #$C0
  bne :+
  jsr enemy_misc_rtn_13
:
  rts
get_player_input:             ; @$853E
  jsr controller_check
  ldx controller_p1_current
  lda which_player    ; check which player is up
  beq :+
  ldx controller_p2_current
:
  stx controller_current
  lda rtn_trk_b
  bpl :+
  jsr demo_run_shoot
 : 
  lda #$C0
  bit controller_current    ; set player direction, 1 if right is pressed or 0 if left is pressed
  beq :++                   ; skip this part if neither left or right is pressed
  lda #$00
  bvs :+                    ; continue if right is pressed or branc   if left was pressed
  lda #$01
:
  sta player_direction
:
  rts
controller_check:
  lda controller_current      ; load current press to previous press
  sta controller_last
  lda controller_p1_current
  sta controller_p1_last
  lda #$01            ; read controller start
  sta JOY1
  lda #$00
  sta JOY1
  ldx #$08
:                     ; read 8 times, for each button
  lda JOY1
  and #$03
  cmp #$01
  ror controller_p1_current
  lda JOY2_FRAME
  and #$03
  cmp #$01
  ror controller_p2_current
  dex
  bne :-
  rts
demo_run_shoot:
  lda #$82
  sta controller_current
  rts
load_palette_ram_to_ppu:
  lda #$00
  tay
  lda PPU_STATUS
  lda #$3f
  sta PPU_ADDR
  lda #$00
  sta PPU_ADDR
:
  lda $0099,Y         ;load 32 bytes to PPU Data
  sta PPU_VRAM_IO
  iny
  cpy #$20
  bcc :-
  lda #$3f
  sta PPU_ADDR
  lda #$00
  sta PPU_ADDR
  sta PPU_ADDR
  sta PPU_ADDR
  rts
ppu_scroll:
  lda PPU_STATUS
  lda x_scroll
  sta PPU_SCROLL
  lda y_scroll_hi
  sta PPU_SCROLL
  rts
ppu_scroll_check:                 ; @$85CA
  lda plr_x_prog_hi
  and #$01
  sta $07
  lda ram_PPU_CTRL
  and #$FE
  ora $07
  sta ram_PPU_CTRL
  sta PPU_CTRL
  jmp ppu_scroll
ram_misc_30:
  lda #$00
  sta $04
  sta $05
  ldy #$0F
:
  asl $00
  rol $01
  rol $04
  rol $05
  lda $04
  sec
  sbc $02
  sta $06
  lda $05
  sbc $03
  bcc :+
  sta $05
  lda $06
  sta $04
  inc $00
:
  dey
  bpl :--
  rts
ram_misc_1:
  lda #$00
  sta $06
  sta $07
  sta $08
  sta $09
:
  lda $00
  sec
  sbc #$A0
  sta $03
  lda $01
  sbc #$86  
  sta $04
  lda $02
  sbc #$01
  sta $05
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  lda $08
  adc #$0F
  sta $08
  bne :-
:
  lda $00
  sec 
  sbc #$10
  sta $03
  lda $01
  sbc #$27
  sta $04
  lda $02
  sbc #$00
  sta $05
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  inc $08
  bne :-
:
  lda $00
  sec 
  sbc #$E8
  sta $03
  lda $01
  sbc #$03
  sta $04
  lda $02
  sbc #$00
  sta $05
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  lda $07
  adc #$0F
  sta $07
  bne :-
:
  lda $00
  sec 
  sbc #$64
  sta $03
  lda $01
  sbc #$00
  sta $04
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  inc $07
  bne :-
:
  lda $00
  sec 
  sbc #$0A
  sta $03
  lda $01
  sbc #$00
  sta $04
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $06
  adc #$0F
  sta $06
  bne :-
:
  lda $00
  ora $06
  sta $06
  rts
controller_input_check_b:
  lda $F2
  and #$08
  beq :+++
  eor controller_p1_last
  and #$08
  beq :+++
  lda rtn_trk_b
  bpl :+
  lda #$00
  sta ram_PPU_Mask
  ldx #$FF
  txs
  jmp init_level    ;#$8700~
:
  bit rtn_trk_0
  bvs :+
  lda #$40
  sta rtn_trk_0
  lda rtn_trk_a
  ora #$40
  sta rtn_trk_b
  jsr disable_audio_channels
  jmp play_pause_sound   ;@$da03 (86f4)
:
  lda #$00
  sta rtn_trk_0
  lda rtn_trk_a
  and #$BF
  sta rtn_trk_a
  jsr play_sound_a   ;@$d87c
:
  rts
set_PPU_MASK_a:
  lda #$1A
  .byte $AE           ;this is in order to change the next line to ldx $00A9
set_PPU_MASK_b:
  lda #$00
  sta PPU_MASK
  sta ram_PPU_Mask    ; store the PPU_MASK value to RAM
  rts
set_PPU_CTRL_a:
  lda #90
  .byte $AE           ;this is in order to change the next line to ldx $10A9 **********
set_PPU_CTRL_b:
  lda #$10
  sta PPU_CTRL
  sta ram_PPU_CTRL    ; store the PPU_CTRL value to RAM
  rts
clear_screen:
  jsr set_PPU_CTRL_b
  jsr set_PPU_MASK_b
  lda PPU_STATUS
  sta $01             ; store PPU_STATUS @$01
  lda #$20
  jsr write_blank_screen_a
  lda #$00
write_blank_screen_a:
  sta PPU_ADDR
  lda #$00
  sta PPU_ADDR
  tay
  lda #$03
  sta $00             ; store $03 @$00
  lda $01             
:
  sta PPU_VRAM_IO
  dey
  bne :-
  iny
  dec $00
  bne :-
:
  sta PPU_VRAM_IO
  iny
  cpy #$C0
  bcc :-
  lda $00
:
  sta PPU_VRAM_IO
  iny
  bne :-
  rts
screen_reset:         ; related to loading screen
  lda PPU_STATUS
  lda $02
  sta PPU_ADDR
  lda $03
  sta PPU_ADDR
:
  lda $04
  sta PPU_VRAM_IO
  jsr dec_zero_ram
  ora $01
  bne :-
  rts
dec_zero_ram:
  sec
  lda $00
  sbc #$01
  sta $00
  lda $01
  sbc #$00
  sta $01
  rts
clear_oam_ram:
  ldx #$00
  lda #$F0
:                     ; loop to load F0 to OAM RAM
  sta oam_ram_data_start,X
  inx
  bne :-
  rts
ram_misc_2:
  lda unram_97
  sbc unram_98
  ror
  ror
  eor unram_97
  adc #$03
  sta unram_97
  inc unram_98
  lda unram_98
  and #$01
  beq :+
  lda #$FF
  eor unram_97
  sta unram_97
:
  rts
ram_misc_37:
  lda rtn_trk_b
  bmi b_exit
  lda which_player
  bne :+
  lda p1ScoreLo
  clc
  adc incScoreLo
  sta p1ScoreLo
  lda p1ScoreMid
  adc incScoreHi
  sta p1ScoreMid
  lda p1ScoreHi
  adc #$00
  sta p1ScoreHi
  jmp chk_1up
:
  lda p2ScoreLo
  clc
  adc incScoreLo
  sta p2ScoreLo
  lda p2ScoreMid
  adc incScoreHi
  sta p2ScoreMid
  lda p2ScoreHi
  adc #$00
  sta p1ScoreHi
chk_1up:
  jsr offer_1up
  lda p1ScoreLo
  sec
  sbc p2ScoreLo
  lda p1ScoreMid
  sbc p2ScoreMid
  lda p1ScoreHi
  sbc p2ScoreHi
  bcc p2_highscore      ; branch if player 2 has higher score
  lda hiScoreLo
  sec
  sbc p1ScoreLo
  lda hiScoreMid
  sbc p1ScoreMid
  lda hiScoreHi
  sbc p2ScoreHi         ; this seems to be a huge mistake when checking the high score. it checks the player 2 high byte instead of player 1
  bcs b_exit            ; branch out if score isnt higher than current high score
  lda p1ScoreLo
  sta hiScoreLo
  lda p1ScoreMid
  sta hiScoreMid
  lda p1ScoreHi
  sta hiScoreHi
b_exit:
  rts
p2_highscore:
  lda hiScoreLo
  sec
  sbc p2ScoreLo
  lda hiScoreMid
  sbc p2ScoreMid
  lda hiScoreHi
  sbc p2ScoreHi         
  bcs c_exit             ; branch out if score isnt higher than current high score
  lda p2ScoreLo
  sta hiScoreLo
  lda p2ScoreMid
  sta hiScoreMid
  lda p2ScoreHi
  sta hiScoreHi
  rts
offer_1up:
  lda score_1_up_lo
  clc
  adc #$D0
  sta score_1_up_lo
  lda score_1_up_mid
  adc #$07
  sta score_1_up_mid
  lda score_1_up_hi
  adc #$00
  sta score_1_up_hi
  bcc c_exit
  lda #$FF
  sta score_1_up_lo
  sta score_1_up_mid
  sta score_1_up_hi
c_exit:
  inc lives
  rts
clear_player_scores:  ; @$8868
  lda #$00
  sta p1ScoreLo     ; $23
  sta p1ScoreMid    ; $24
  sta p1ScoreHi     ; $25
  sta p2ScoreLo     ; $26
  sta p2ScoreMid    ; $27
  sta p2ScoreHi     ; $28
  sta incScoreLo    ; $2C
  sta incScoreHi    ; $2D
  rts
not_called_subroutine_2:
  lda PPU_STATUS
  lda $00
  sta PPU_ADDR
  lda $01
  sta PPU_ADDR
  ldy #$00
:
  lda ($02),Y             ; load something from a table, somewhere
  sta PPU_VRAM_IO
  iny
  cpy $04                 ; whatever is stored here determines the length, i guess
  bcc :-
  rts
roll_ram_4_5:
  ldy #$07
  lda #$00
  sta $02
  sta $04
  sta $05
:
  lsr $01
  bcc :+
  lda $00
  clc
  adc $04
  sta $04
  lda $02
  adc $05
  sta $05
:
  asl $00
  rol $02
  dey
  bpl :--
  rts
send_palette_to_ram:
  ldy #$1F
  lda ($00),Y
  sta palette_data_start_word,y    ; @$0099
  dey
  bpl :-
  rts
write_pl1_score:
  lda which_player
  bne write_pl2_score
  lda #$18
  sta $0f
  lda #$50
  sta $0E
write_pl1_score_b:
  lda p1ScoreLo
  sta $00
  lda p1ScoreMid
  sta $01
  lda p1ScoreHi
  sta $02
  jmp draw_score
write_pl2_score:
  lda #$18
  sta $0f
  lda #$0E
  sta $0E
write_pl2_score_b:
  lda p2ScoreLo
  sta $00
  lda p2ScoreMid
  sta $01
  lda p2ScoreHi
  sta $02
  jmp draw_score
draw_score:
  jsr ram_misc_1
  ldx #$00
  ldy #$00
  lda $0F
  sta oam_ram_data_start,x
  inx
  lda #$00
  sta oam_ram_data_start,X
  inx
  jsr write_score
  inx
:
  lda $0F
  sta oam_ram_data_start,X         ; write score y position
  inx
  lda $0006,Y
  and #$0F
  sta oam_ram_data_start,X
  inx
  jsr write_score
  inx
  lda $0F
  sta oam_ram_data_start,X
  inx
  lda $0006,Y
  and #$F0
  lsr
  lsr
  lsr
  lsr
  sta oam_ram_data_start,X
  inx
  jsr write_score
  iny
  inx
  cpx #$18
  bcc :-
  rts
write_score:
  lda #$00
  sta oam_ram_data_start,X   ; write score amount sprite
  inx
  lda $0E
  sta oam_ram_data_start,X   ; write x position
  sec
  sbc #$08      ; choose next digit
  sta $0E
  rts
flip_bits_1:
  lda $01
  bpl :+
  eor #$ff
  sta $01
  lda $00
  eor #$ff
  clc
  adc #$01
  sta $00
  lda $01
  adc #$00
  sta $01
:
  rts
flip_bits_0:
  sec
  lda $00
  sbc #$01
  sta $00
  lda $01
  sbc #$00
  eor #$ff
  sta $01
  lda $00
  eor #$ff
  sta $00
  rts
enemy_misc_rtn_13:
  lda plr_x_prog_lo
  clc
  adc #$80
  sta $00
  lda plr_x_prog_hi
  adc #$01
  sta $01
enemy_misc_rtn_14:
  jsr get_lvl_nmtbl_addr
  lda current_level                 ; check if we're on a boss
  and #$01
  asl
  tay                               ; transfer 0 to Y or 2 if we're on a boss
  lda stage_tbl_2,y                 ; @$CA0D,y
  sta $0E
  lda stage_tbl_2+1,Y
  sta $0F                           ; get address from jump table
  lda #$00
  and #$30                          ; and @$00 with %00110000
  lsr
  lsr
  lsr
  lsr
  sta $04
  lda $00
  and #$30
  sec
  sbc $04
  sta $04
  clc
  lda $04
  adc $02
  sta $02
  lda #$00
  adc $03
  sta $03
  ldx #$00
:
  ldy #$00
  lda ($02),Y
  sta $04
  lda #$00                          ; get the address for the column of tiles data
  sta $05
  asl $04
  rol $05
  asl $04
  rol $05
  lda $0E
  clc
  adc $04
  sta $04
  lda $0F
  adc $05
  sta $05
  ldy #$00
  lda $00
  and #$08
  beq :+
  iny
:
  lda ($04),y
  sta newTileColumnStart,X
  iny
  iny
  inx
  lda ($04),Y
  sta newTileColumnStart,X
  inx
  jsr inc_lvl_pal_addr
  cpx #$1E
  bcc :--
  lda #$3C
  clc
  adc $07
  sta $07
  lda #$00
  adc $08
  sta $08
  lda $00
  and #$20
  lsr
  lsr
  clc
  adc $07
  sta $07
  lda #$00
  adc $08
  sta $08
  ldy #$00
:
  lda ($07),y             ; Load level palette data to RAM
  sta nextSpriteDataLoadStart,Y
  iny
  cpy #$08
  bcc :-
  ldy #$23
  ldx #$20
  lda $01
  and #$01
  beq :+
  ldy #$27
  ldx #$24
:
  sty palette_x_address
  sty new_tile_x_PPU_ADDRESS
  lda $00
  lsr
  lsr
  lsr
  sta new_tile_y_PPU_ADDRESS
  lsr
  lsr
  clc
  adc #$C0
  sta palette_y_address
  rts
inc_lvl_pal_addr:
  clc
  lda $02
  adc #$01
  sta $02
  lda $03
  adc #$00
  sta $03
  rts
get_lvl_nmtbl_addr:
  lda current_level
  asl
  tax
  lda stage_tbl_3,X
  sta $09
  lda stage_tbl_3+1,X
  sta $0A
  lda $00
  and #$C0
  sta $07
  lda $01
  sta $08
  asl $07
  rol $08
  asl $07
  rol $08
  ldy $08
  lda ($09),Y
  asl
  tax
  lda stage_tbl_4,Y
  sta $02
  sta $07
  lda stage_tbl_4+1,Y
  sta $03
  sta $08
  rts
write_new_tile_column:
  lda PPU_STATUS
  lda ram_PPU_CTRL
  ora #$04
  sta PPU_CTRL
  lda new_tile_x_PPU_ADDRESS
  sta PPU_ADDR
  lda new_tile_y_PPU_ADDRESS
  sta PPU_ADDR
  ldx #$00
:
  lda newTileColumnStart,X
  sta PPU_ADDR
  inx
  cpx #$1E
  bcc :-
  lda palette_x_address
  sta $08
  lda palette_y_address
  sta $07
  ldx #$00              ; Store Palette Info for new tile column
:
  lda $08               ; Set next PPU_ADDRESS
  sta PPU_ADDR
  lda $07
  sta PPU_ADDR
  lda nextSpriteDataLoadStart,X
  sta PPU_VRAM_IO
  lda $07
  clc
  adc #$08
  sta $07
  inx
  cpx #$08
  bcc :-
  jmp reset_scroll_00
ready_level:
  jsr set_PPU_CTRL_b
  jsr set_PPU_MASK_b
  jsr clear_screen
  jsr clear_oam_ram
  lda plr_x_prog_fr
  sta $00
  lda plr_x_prog_lo
  sta $01
  lda #$3f
  sta $06
:
  jsr enemy_misc_rtn_14
  jsr write_new_tile_column
  lda #$08
  clc
  adc $00
  sta $00
  lda $01
  adc #$00
  sta $01
  dec $06
  bpl :-
  lda current_level
  asl
  tax
  lda palette_jmp_table,X
  sta $00
  lda palette_jmp_table+1,X
  sta $01
  jsr send_palette_to_ram
  lda rodimus_ram
  lsr
  bcc :+
  jsr load_rodimus_palette
:
  lda current_level
  cmp #$0B
  beq update_palette
  cmp #$0F
  beq update_palette_b
  rts
load_rodimus_palette:
  ldx #$02
:
  lda rodimus_palette,X
  sta player_palette_ram,X
  dex
  bpl :-
  rts
update_palette:
  lda #$05
  jmp update_palette_a
update_palette_b:
  lda #$11
update_palette_a:
  ldx #$03
:
  sta palette_data_start,X
  inx
  inx
  inx
  inx
  cpx #$10        ; store all palette data in ram
  bcc :-
  rts
not_called_subroutine_1:
  ldy #$00
  lda ($05),Y
  sta $00
  iny
  lda ($05),Y
  sta $01
  iny
  lda ($05),Y
  sta $04
  iny
  tya
  clc
  adc $05
  sta $02
  lda #$00
  adc $06
  sta $03
  jmp not_called_subroutine_2
reset_scroll_00:
  lda ram_PPU_CTRL
  and #$FE
  sta ram_PPU_CTRL
  sta PPU_CTRL
  lda #$00
  sta PPU_SCROLL
  sta PPU_SCROLL
  rts
write_text:
  ldy #$00
  lda ($00),y
  sta PPU_ADDR      ; load takara x location
  iny
  lda ($00),y
  sta PPU_ADDR      ; load takara y location
  iny
  lda ($00),y
  tax
  iny
:                   ; loop writing Takara letters
  lda ($00),y
  sta PPU_ADDR
  iny
  dex
  bpl :-
  rts
flash_background:   ; flash bg every 4 frames
  ldy #$21          ; light blue
  lsr
  lsr
  and #$03          ; check flash counter lowest two bits,0=Blue,1=Pink,2=Red,3=Black
  beq :+            ; load light blue
  ldy #$36          ; pink
  cmp #$01
  beq :+            ; load pink
  ldy #$16          ; red
  cmp #$02
  beq :+            ; load red
  ldy #$0f          ; black
:
  sty $00           ; store colour to $00 in ram
  ldx #$00          ; reset X index
  lda $00           ; load colour to A
: 
  sta palette_data_start,X    ; load colour to beginning of all 16 palette set
  inx 
  inx 
  inx 
  inx 
  cpx #$20          ; do for all 16 palettes
  bcc :-            ; loop back until done
  rts
rodimus_palette:      ; @$8BB2-8DEF
	.byte $20, $16, $27				; rodumus palette
palette_jmp_table:    ; @$8BB5
	.word pal_0       ; lvl 1
  .word pal_13      ; lvl 1 boss
	.word pal_1       ; lvl 2
  .word pal_13      ; 
	.word pal_2       ; lvl 3
	.word pal_7
	.word pal_3       ; lvl 4
	.word pal_8 
	.word pal_3       ; lvl 5
  .word pal_9
	.word pal_2       ; lvl 6
	.word pal_7
	.word pal_4       ; lvl 7
  .word pal_10      ; 0D is bruticus/thunderwing...
	.word pal_5       ; lvl 8
	.word pal_7
	.word pal_6       ; lvl 9
  .word pal_11
	.word pal_5       ; lvl 10
  .word pal_12      ; trypticon palette, although trypticon is lvl 13, coming from the starscrem warp, lvl 14 is a super strang level.... keep note of this *********
  .word pal_14      ; 
  .word pal_14      ; $15 is the prime brain wave
  .word pal_14  
  .word pal_14      ; $17 is magnus recieving the brain waves at title
  .word pal_14      ; lvl 18 is possibly where you get the U letter in the weird shooting room
  .word pal_14
  .word pal_14
  .word pal_14      ; 
	.word pal_15      ; $1c warp screen
pal_0:
	.byte $0F, $36, $0A, $1B
	.byte $0F, $36, $1B, $0A
	.byte $0F, $0A, $0A, $0A
	.byte $0F, $31, $21, $11
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $00
pal_1:
	.byte $01, $30, $10, $00
	.byte $01, $30, $31, $00
	.byte $01, $27, $17, $16
	.byte $01, $31, $21, $11
	.byte $01, $20, $21, $16
	.byte $01, $20, $21, $16
	.byte $01, $16, $27, $20
	.byte $01, $10, $00, $16
pal_2:
	.byte $0F, $30, $10, $00
	.byte $0F, $30, $27, $00
	.byte $0F, $30, $21, $00
	.byte $0F, $05, $23, $04
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $00
pal_3:
	.byte $0F, $27, $30, $10
	.byte $0F, $30, $10, $00
	.byte $0F, $31, $21, $1C
	.byte $0F, $36, $17, $07
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $00
pal_4:
	.byte $0F, $30, $31, $21
	.byte $0F, $30, $21, $31
	.byte $0F, $31, $31, $31
	.byte $0F, $20, $10, $00
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $16
pal_5:
	.byte $0F, $20, $10, $00
	.byte $0F, $21, $10, $00
	.byte $0F, $20, $10, $26
	.byte $0F, $21, $31, $30
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $00
pal_6:
	.byte $0F, $30, $10, $00
	.byte $0F, $30, $21, $16
	.byte $0F, $17, $06, $00
	.byte $0F, $30, $01, $12
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $20, $10, $16
pal_7:
	.byte $0F, $20, $10, $14
	.byte $0F, $17, $10, $14
	.byte $0F, $10, $17, $14
	.byte $0F, $27, $10, $14
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $36, $07, $1C
pal_8:
	.byte $0F, $20, $10, $00
	.byte $0F, $30, $21, $16
	.byte $0F, $17, $06, $00
	.byte $0F, $30, $01, $12
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $16, $11, $21
pal_9:
	.byte $0F, $30, $10, $00
	.byte $0F, $30, $00, $16
	.byte $0F, $30, $00, $12
	.byte $0F, $21, $12, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $0A, $0A, $0A
	.byte $0F, $36, $07, $1C
pal_10:
	.byte $0F, $30, $10, $33
	.byte $0F, $30, $16, $33
	.byte $0F, $30, $10, $21
	.byte $0F, $3A, $10, $21
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $36, $07, $1C
pal_11:
	.byte $0F, $30, $10, $00
	.byte $0F, $30, $00, $12
	.byte $0F, $30, $00, $27
	.byte $0F, $30, $01, $12
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $36, $07, $1C
pal_12:
	.byte $0F, $20, $10, $00
	.byte $0F, $21, $10, $00
	.byte $0F, $20, $10, $26
	.byte $0F, $27, $21, $17
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $36, $07, $1C
pal_13:
	.byte $0F, $30, $10, $00
	.byte $0F, $27, $10, $00
	.byte $0F, $27, $17, $16
	.byte $0F, $31, $21, $11
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $16, $27, $20
	.byte $0F, $30, $0F, $26
pal_14:
	.byte $0F, $20, $10, $00
	.byte $0F, $0F, $17, $0F
	.byte $0F, $20, $10, $00
	.byte $0F, $0F, $17, $0F
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $36, $17
	.byte $0F, $20, $10, $00
pal_15:
	.byte $0F, $0F, $0F, $0F
	.byte $0F, $0F, $0F, $0F
	.byte $0F, $0F, $0F, $0F
	.byte $0F, $0F, $0F, $0F
	.byte $0F, $20, $21, $16
	.byte $0F, $20, $27, $27
	.byte $0F, $20, $36, $07
	.byte $0F, $27, $36, $07
player_pose_1:
  jsr reset_pal_ram
  jsr ram_misc_3
  lda flight_status
  and #$40
  bne :++
  lda flight_status
  and #$10
  bne :++++
  jsr scroll_misc_1
  lda flight_status
  and #$08
  bne :+++++
  lda plr_y_inc
  bmi :+
  jsr ram_misc_4     
  bcs :+++
:
  jsr ram_misc_5
ram_misc_12:
  jsr ram_misc_6
  jsr ram_misc_7
  bcc ram_misc_14
  lda plr_y_inc_fraction
  sta $00
  lda plr_y_inc
  sta $01
  jsr flip_bits_1
  lda $00
  sta plr_y_inc_fraction
  lda $01
  sta plr_y_inc
  lda #$00
  sta jump_hold
ram_misc_14:
  jsr plr_x_move_rtn
  jsr new_y_pos
  jsr ram_misc_9
  rts
:
  jsr clear_x_inc
  jmp no_ram_misc_10
:
  jsr ram_misc_10
no_ram_misc_10:
  lda #$00

  sta plr_y_inc_fraction
  sta plr_y_inc
ram_misc_15:
  lda #$00
  sta jump_hold
  jsr ram_misc_11
  jmp ram_misc_12
:
  jsr ram_misc_13
  jmp ram_misc_14
:
  jsr ram_misc_10
  jmp ram_misc_15
ram_misc_10:
  lda flight_status
  and #$DF
  sta flight_status
  lda player_sprite
  and #$F5
  sta player_sprite
  rts
ram_misc_13:
  jsr ram_misc_16
  jsr ram_misc_17
  jsr scroll_misc_1
  lda plr_y_inc
  bmi :+
  ora plr_y_inc_fraction
  bne :++
  jmp jmp_chk_A_press
:
  jsr ram_misc_7
  bcs player_pose_2
jmp_chk_A_press:
  lda controller_last
  lsr
  bcs :+
  lda controller_current
  lsr
  bcs :+
  lda #$00
  sta flight_status
:
  rts
player_pose_2:
  lda #$00
  sta plr_y_inc_fraction
  sta plr_y_inc
  jmp jmp_chk_A_press
ram_misc_9:
  bit flight_status
  bvs b_8f23
  bmi b_8f0b
  lda flight_status
  and #$10
  bne b_8f1e
  lda jump_hold
  bmi b_8f14
  lda flight_status
  and #$08
  bne b_8ec6
  lda plr_y_inc_fraction
  ora plr_y_inc
  bne b_8ef2
b_8ec6:
  lda controller_current
  and #$C0                ; check if left or right is pressed
  bne b_8ed1
  ldx #$02
  jmp b_8ef4
b_8ed1:
  lda plr_x_inc_hi
  and #$80
  rol
  rol
  eor player_direction
  bne b_8ee0
  ldx #$03
  jmp b_8ef4
b_8ee0:
  lda timer_lo_byte
  and #$07
  bne b_8ef2
  lda player_sprite
  tax
  dex
  lsr
  bcs b_8ef4
  inx
  inx
  jmp b_8ef4
b_8ef2:
  ldx player_sprite
b_8ef4:
  lda player_direction
  beq b_8f05
  jmp j_8eff
j_8efb:
  lda player_landed
  bpl b_8f05
j_8eff:
  txa
  and #$7F
  sta player_sprite
  rts
b_8f05:
  txa
  ora #$80
  sta player_sprite
  rts
b_8f0b:
  lda controller_current
  and #$C0
  beq b_8ef2
  jmp b_8ee0
b_8f14:
  ldx #$09
  lda plr_y_inc
  dex
  jmp b_8ef4
b_8f1e:
  ldx #$01
  jmp b_8ef4
b_8f23:
  lda unram_25
  and #$02
  bne b_8f2e
  ldx #$0A
  jmp j_8efb
b_8f2e:
  lda unram_25
  cmp #$10
  bcs b_8f4a
  cmp #$08
  bcs b_8f3d
  ldx unram_26
  jmp j_8efb
b_8f3d:
  lda flight_status
  asl
  php
  lda #$06
  plp
  adc #$00
  tax
  jmp j_8efb
b_8f4a:
  lda flight_status
  asl
  bcs b_8f54
  ldx #$07
  jmp j_8efb
b_8f54:
  ldx #$06
  jmp j_8efb
ram_misc_11:
  lda flight_status
  and #$40
  bne b_9fb3
  lda controller_last
  and #$30
  sta $00
  lda controller_current
  and #$30
  beq b_8fe0
  cmp $00
  bne b_8fe0
  lda flight_status
  and #$80
  bne b_8fe0
  lda flight_status
  and #$08
  bne b_8fe0
  lda flight_status
  bmi b_8f82
  lda controller_current
  and #$10
  bne b_8fe0
  jmp j_8f8d
b_8f82:
  lda controller_current
  and #$20
  bne b_8fe0
  jsr ram_misc_7
  bcs b_8fe0
j_8f8d:
  inc player_landed
  lda player_landed
  and #$18
  cmp #$18
  bcc b_8fe4
  lda player_direction
  clc
  ror
  ror
  sta player_landed
  lda #$40
  ora flight_status
  sta flight_status
  lda #$00
  sta unram_25
  sta plr_x_inc_lo
  sta plr_x_inc_hi
  lda player_sprite
  sta unram_26
  jsr play_transform_sound
b_9fb3:
  inc unram_25
  lda unram_25
  cmp #$08
  bne b_8fbe
  jsr move_pl_y
b_8fbe:
  lda unram_25
  cmp #$18
  bcc b_8fe4
  lda #$00
  sta player_landed
  lda flight_status
  bmi b_8fe5
  lda #$80
  sta flight_status
  lda #$04
  sta player_sprite
  ora unram_13
  sta unram_13
  lda plr_y_pos_hi
  clc
  adc #08
  sta plr_y_pos_hi
  rts
b_8fe0:
  lda #$00
  sta player_landed
b_8fe4:
  rts
b_8fe5:
  lda #$00
  sta flight_status
  sta player_sprite
  lda unram_13
  and #$FB
  sta unram_13
  rts
move_pl_y:
  lda flight_status
  bpl b_8fe4
  lda plr_y_pos_hi
  sec
  sbc #$08
  sta plr_y_pos_hi
  rts
b_8ffe:
  clc
  rts
scroll_misc_1:
  lda state
  lsr
  bcs b_8ffe
  lda #$00
  sta player_un_pos
  lda flight_status
  bpl b_9011
  lda #$02
  sta player_un_pos
b_9011:
  lda plr_x_inc_hi
  bpl b_901b
  lda player_un_pos
  ora #$01
  sta player_un_pos
b_901b:
  lda player_un_pos
  asl
  asl
  asl
  sta player_un_pos
  jsr inc_plr_un_pos
  bcc b_902a
b_9027:
  jmp clear_x_inc
b_902a:
  inc player_un_pos
  inc player_un_pos
  jsr inc_plr_un_pos
  bcs b_9027
  lda flight_status
  bmi b_9049
  inc player_un_pos
  inc player_un_pos
  jsr inc_plr_un_pos
  bcs b_9027
  inc player_un_pos
  inc player_un_pos
  jsr inc_plr_un_pos
  bcs b_9027
b_9049:
  rts
inc_plr_un_pos:
   ldx player_un_pos
   lda plr_y_pos_hi
   clc
   adc plr_pos_tbl,X
   sta plr_y_pos_hi_diff
   lda plr_x_pos_hi
   clc
   adc plr_pos_tbl+1,X
   sta plr_x_pos_hi_old
   jsr lvl_misc_rtn_1
   jsr lvl_misc_rtn_2
   rts
plr_pos_tbl:    ; @$9063
	.byte $0D,$08
	.byte $05,$08
	.byte $F5,$08
	.byte $FD,$08
	.byte $0D,$F7
	.byte $05,$F7
	.byte $F5,$F7
	.byte $FD,$F7
	.byte $05,$10
	.byte $FB,$10
	.byte $00,$00
	.byte $00,$00
	.byte $05,$EF
	.byte $FB,$EF
ram_misc_7:
  lda #$0D
  sta plr_y_pos_hi_diff
  lda flight_status     ; check if truck mode, #$80
  bmi b_9095    ; branch if truck mode
  jsr plr_pos_rtn_1
  jsr lvl_misc_rtn_2
  bcc b_9090
  rts
b_9090:
  lda #$08
  cmp plr_y_pos_hi
  rts
b_9095:       ; truck routine
  lda #$0A
  sta plr_y_pos_hi_diff
  jsr plr_pos_rtn_1
  lda current_level
  lsr
  bcs b_90a6
  lda $00
  cmp #$53
  rts
b_90a6:
  lda $00
  cmp #$77
  rts
plr_pos_rtn_1:
  lda plr_y_pos_hi
  sec
  sbc plr_y_pos_hi_diff
  sta plr_y_pos_hi_diff
  lda plr_x_pos_hi
  sta plr_x_pos_hi_old
  jsr lvl_misc_rtn_1
  rts
ram_misc_4:
  lda #$00
  sta $50
  lda flight_status
  bpl b_90c6
  lda #$01
  sta player_un_pos
b_90c6:
  asl player_un_pos
  asl player_un_pos
  jsr grav_rtn_1
  bcc grav_rtn_0        ; in c player_un_pos if carry is cleared
  rts
grav_rtn_0:
  inc player_un_pos
  inc player_un_pos
grav_rtn_1:
  ldx player_un_pos
  lda plr_y_pos_hi
  clc
  adc grav_tbl_1,X
  sta plr_y_pos_hi_diff
  lda plr_x_pos_hi
  clc
  adc grav_tbl_1+1,X
  sta plr_x_pos_hi_old
  jsr lvl_misc_rtn_1
  jsr lvl_misc_rtn_2
  rts
grav_tbl_1:
  .byte $11,$05
  .byte $11,$FB
  .byte $09,$08
  .byte $09,$F7
ram_misc_6:
  lda jump_hold
  bmi b_9120
  lda controller_current
  lsr
  bcc b_913d
  lda flight_status
  and #$08
  bne b_910f
  lda plr_y_inc_fraction
  ora plr_y_inc
  bne b_913d
b_910f:
  lda flight_status
  bmi b_913d
  lda #$80
  sta jump_hold
  lda flight_status
  ora #$20
  sta flight_status
  jsr play_jump_sound
b_9120:
  lda jump_hold
  and #$40
  lda controller_current
  lsr
  bcc b_913e
  inc jump_hold
  lda jump_hold
  and #$3F
  cmp #$0C
  bcs b_913e
  lda #$00
  sta plr_y_inc_fraction
  lda #$FC
  sta plr_y_inc
b_913d:
  rts
b_913e:
  lda jump_hold
  ora #$40
  sta jump_hold
  jmp ram_misc_5
ram_misc_3:
  lda plr_x_inc_lo
  sta $08
  lda plr_x_inc_hi
  sta $09
  lda unram_15
  sta $0A
  lda unram_16
  sta $0B
  lda player_speed
  sta $00
  lsr
  sta $02
  lda #$00
  sta $01
  lda state
  lsr
  bcs b_916b
  lda jump_hold
  beq b_918a
b_916b:
  lda $00
  sec
  sbc $02
  sta $00
  lda $01
  sbc #$00
  sta $01
  clc
  ror $01
  ror $00
  lda $00
  clc
  adc $02
  sta $00
  lda $01
  adc #$00
  sta $01
b_918a:
  bit controller_current
  bmi right_is_pressed
  bvs left_is_pressed
left_is_pressed:
  jsr flip_bits_0
right_is_pressed:
  jsr ram_misc_18
  lda #$08
  sta plr_x_inc_lo
  lda $09
  sta plr_x_inc_hi
b_919f:
  rts
ram_misc_17:
  lda plr_y_inc_fraction
  sta $08
  lda plr_y_inc
  sta $09
  lda unram_14
  sta $0A
  lda unram_18
  sta $0B
  lda player_speed
  cmp #$18
  bcs b_91b8
  lda #$18
b_91b8:
  sta $00
  lda #$00
  sta $01
  lda controller_current
  asl
  asl
  bmi b_91ca
  asl
  bpl b_919f
  jsr flip_bits_0
b_91ca:
  jsr ram_misc_18
  lda $08
  sta plr_y_inc_fraction
  lda $09
  sta plr_y_inc
  rts
ram_misc_18:
  lda $08
  clc
  adc $00
  sta $00
  sta $02
  lda $09
  adc $01
  sta $01
  sta $03
  jsr flip_bits_1
  lda $0A
  sec
  sbc $00
  lda $0B
  sbc $01
  bcc b_91fe
  lda $02
  sta $08
  lda $03
  sta $09
  rts
b_91fe:
  lda $0A
  sta $00
  lda $0B
  sta $01
  lda $03
  bpl b_920d
  jsr flip_bits_0
b_920d:
  lda $00
  sta $08
  lda $01
  sta $09
  rts
  ram_misc_5:
  lda #$14
  sta $00
  lda #$00
  sta $01
  lda plr_y_inc_fraction
  sta $08
  lda plr_y_inc
  sta $09
  lda unram_14
  sta $0A
  lda unram_18
  sta $0B
  jsr ram_misc_18
  lda $08
  sta plr_y_inc_fraction
  lda $09
  sta plr_y_inc
  beq start_flight
b_923b:
  rts
start_flight:
  lda plr_y_inc_fraction
  cmp #$20
  bcs b_923b
  lda controller_current
  lsr
  bcc b_923b
  lda stage_orientation
  and #$C0
  bne b_923b
  lda power_up
  bpl b_923b
  lda flight_status
  bmi b_923b
  lda #$10
  sta flight_status
  lda #$00
  sta jump_hold
  rts
plr_x_move_rtn:
  lda plr_x_pos_lo
  clc
  adc plr_x_inc_lo
  sta 00
  lda plr_x_pos_hi
  adc plr_x_inc_hi
  sta $01
  lda $00
  clc
  adc unram_6
  sta $00
  sta $02
  lda $01
  adc unram_8
  sta $01
  sta $03
  lda $01
  cmp #$10
  bcc clear_x_inc
  lda state
  lsr
  bcs b_92db
  lda plr_x_prog_hi
  cmp #$0B
  beq b_92e4
  lda current_level
  lsr
  bcs b_92db
  lda sub_state
  bmi b_92db
  lda unram_3
  bmi b_92db
  lda stage_orientation
  and #$C0
  bne b_92db
  lda $01
  sec
  sbc #$80
  sta $04
  bcs scroll_trig_rtn
b_92ad:
  lda $02
  sta plr_x_pos_lo
  lda $03
  sta plr_x_pos_hi
  rts
scroll_trig_rtn:
  clc
  lda plr_x_prog_fr
  adc $00
  sta plr_x_prog_fr
  lda plr_x_prog_lo
  adc $04
  sta plr_x_prog_lo
  sta x_scroll
  lda plr_x_prog_hi
  adc #$00
  sta plr_x_prog_hi
  lda #$00
  sta plr_x_pos_lo
  lda #$80
center_player:
  sta plr_x_pos_hi
  rts
clear_x_inc:
  lda #$00
  sta plr_x_inc_lo
  sta plr_x_inc_hi
  rts
b_92db:
  lda $01
  cmp #$FA
  bcc b_92ad
  jmp clear_x_inc
b_92e4:
  lda $01
  cmp #$90
  bcc b_92ad
  lda $01
  sta state
  rts
new_y_pos:
  lda plr_y_pos_lo
  clc
  adc plr_y_inc_fraction
  sta $00
  sta $02
  lda plr_y_pos_hi
  adc plr_y_inc
  sta $01
  sta $03
  lda stage_orientation
  and #$80
  bne b_9317
  lda $01
  cmp #$E8
  bcc b_9317
  lda #$02
  sta state 
  jsr play_plr_exp_sound  ; @$d9e2
  lda #$00
  sta flash_counter
b_9317:
  lda stage_orientation
  and #$C0
  beq b_933a
  lda plr_y_prog_hi
  bne b_932a
  lda plr_y_prog_lo
  cmp #$04
  bcs b_932a
  jmp j_934a
b_932a:
  lda plr_y_prog_hi
  cmp #$04
  beq b_9361
  jsr ram_misc_19   ; @$93df
  bcc b_93b0
  jsr ram_misc_20
  bcs new_plr_y_pos
b_933a:
  lda $02
  sta plr_y_pos_lo
  lda $03
  sta plr_y_pos_hi
  rts
clear_plr_y_inc:
  lda #$00
  sta plr_y_inc_fraction
  sta plr_y_inc
  rts
j_934a:
  jsr ram_misc_20
  bcs new_plr_y_pos
  lda $01
  cmp #$10
  bcc b_9358
  jmp b_933a
b_9358:
  lda stage_orientation
  and #$40
  beq clear_plr_y_inc
  jmp load_state_40
b_9361:
  jsr ram_misc_19
  bcc b_93b0
  lda $01
  cmp #$F0
  bcs b_936f
  jmp b_933a
b_936f:
  lda stage_orientation
  bpl clear_plr_y_inc
load_state_40:
  lda #$40
  sta state
  rts
new_plr_y_pos:
  clc
  lda plr_y_prog_fr
  adc $00
  sta plr_y_prog_fr
  lda plr_y_prog_lo
  and $04
  sta plr_y_prog_lo
  lda plr_y_prog_hi
  adc #$00
  sta plr_y_prog_hi
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $04
  cmp #$F0
  bcc b_939c
  sbc #$F0
b_939c:
  sta y_scroll_hi
  lda #$00
  sta plr_y_pos_lo
  lda flight_status
  bpl b_93ab
  lda #$90
  sta plr_y_pos_hi
  rts
b_93ab:
  lda #$88
  sta plr_y_pos_hi
  rts
b_93b0:
  clc
  lda plr_y_prog_fr
  adc $00
  sta plr_y_prog_fr
  lda plr_y_prog_lo
  adc $04
  sta plr_y_prog_lo
  lda plr_y_prog_hi
  adc #$ff
  sta plr_y_prog_hi
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  clc 
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $04
  cmp #$F0
  bcc b_93d4
  sbc #$10
b_93d4:
  sta y_scroll_hi
  lda #$00
  sta plr_y_pos_lo
  lda #$40
  sta plr_y_pos_hi
  rts
ram_misc_19:
  lda $01
  sec
  sbc #$40
  sta $04
  rts
ram_misc_20:
  lda flight_status
  bpl b_93f3
  lda $01
  sec
  sbc #$90
  sta $04
  rts
b_93f3:
  lda $01
  sec
  sbc #$88
  sta $04
  rts
reset_pal_ram:
  lda plr_x_inc_lo
  sta $00
  lda plr_x_inc_hi
  sta $01
  sta $02
  jsr flip_bits_1
  lda player_speed
  sta $03
  jsr ram_misc_21
  lda $00
  sta plr_x_inc_lo
  lda $01
  sta plr_x_inc_hi
b_9417:
  rts
ram_misc_16:
  lda plr_y_inc_fraction
  sta $00
  lda plr_y_inc
  sta $01
  sta $02
  jsr flip_bits_1
  lda #$20
  sta $03
  jsr ram_misc_21
  lda $00
  sta plr_y_inc_fraction
  lda $01
  sta plr_y_inc
  rts
ram_misc_21:
  lda $00
  ora $01
  beq b_9417
  lsr $03
  sec
  lda $00
  sbc $30
  sta $00
  lda $01
  sbc #$00
  sta $01
  bcs b_9452
  lda #$00
  sta $00
  sta $01
b_9452:
  lda $02
  bpl b_9417
  jmp flip_bits_0
enemy_misc_rtn_2:
  lda plr_x_pos_hi
  cmp #$F8
  bcs b_9468
  sta player_direction
  lda #$80
  sta controller_current
  jmp player_pose_1
b_9468:
  lda unram_3
  bmi b_9471
  lda #$40
  sta state
  rts
b_9471:
  lda #$20
  sta state
  lda #$00
  sta unram_3
  rts
lvl_misc_rtn_1:
  lda plr_x_prog_lo
  clc
  adc plr_x_pos_hi_old
  sta $00
  lda plr_x_prog_hi
  adc #$00
  sta $01
  lda plr_y_prog_lo
  clc
  adc plr_y_pos_hi_diff
  sta $0E
  lda plr_y_prog_hi
  adc #$00
  sta $0F
lvl_misc_rtn_1a:
  lda $00
  sta plr_x_pos_hi_old
  lda $0E
  sta plr_y_pos_hi_diff
  jsr get_lvl_nmtbl_addr
  lda $00
  and #$30
  lsr
  lsr
  lsr
  lsr
  sta $04
  lda $00
  and #$30
  sec
  sbc $04
  sta $04
b_94b2:
  lda $0E
  sec
  sbc #$F0
  sta $0E
  lda $0F
  sbc #$00
  sta $0F
  bcs b_94b2
  lda $0E
  clc
  adc #$F0
  sta $0F
  lsr
  lsr
  lsr
  lsr
  sta $05
  clc
  lda $02
  adc $04
  sta $02
  lda $03
  adc #$00
  sta $03
  clc
  lda $02
  adc $05
  sta $02
  lda $03
  adc #$00
  sta $03
  ldy #$00
  lda ($02),Y
  sta $00
b_94ee:
  rts
lvl_misc_rtn_2:
  lda #$00
  sta $01
  lda current_level
  lsr
  bcs b_9538
  lda $00
  cmp #$53
  bcc b_94ee
  cmp #$AC
  bcc b_9504
  inc $01
b_9504:
  cmp #$A6
  bcc b_950a
  inc $01
b_950a:
  cmp #$96
  bcc b_9510
  inc $01
b_9510:
  cmp #$7D
  bcc b_9516
  inc $01
b_9516:
  lda $01
  asl
  tax
  lda lvl_misc_jmp_tbl,X    ; @$cc94,x
  sta $09
  lda lvl_misc_jmp_tbl+1,X
  sta $0A
  lda plr_y_pos_hi_diff
  and #$0F
  lsr
  tax
  inx
  lda plr_x_pos_hi_old
  and #$0F
  lsr
  tay
  lda ($09),Y
b_9533:
  lsr
  dex
  bne b_9533
  rts
b_9538:
  lda $00
  cmp #$77
  bcc b_94ee
  cmp #$80
  bcc b_9544
  inc $01
b_9544:
  cmp #$7F
  bcc b_954a
  inc $01
b_954a:
  jmp b_9516
enemy_misc_rtn_11:
  lda sub_state
  and #$40
  bne rtn_jmp_0
  lda current_level
  and #$FE
  tay
  lda rtn_jmp_tbl,y ; @$9565,y
  sta $00
  lda rtn_jmp_tbl+1,Y
  sta $01
  jmp ($0000)
rtn_jmp_tbl:  ; @$9565-9578
	.byte $79,$95
	.byte $79,$95
	.byte $7A,$95
	.byte $79,$95
	.byte $79,$95
	.byte $86,$95
	.byte $79,$95
	.byte $98,$95
	.byte $22,$96
	.byte $7A,$95
rtn_jmp_0:
  rts
  ldy #$00
  jsr j_95aa
  bcs rtn_jmp_0
  lda #$10
  sta state
  lda #$02
  ora sub_state
  sta sub_state
  rts
  ldy #$08
  jsr j_95aa
  bcs rtn_jmp_0
  lda #$10
  sta state
  lda #$04
  ora sub_state
  sta sub_state
  rts
j_95aa:
  lda #<hrdcod_tbl          ; hard coded address(#$FE), low byte *******
  sta $02
  lda #>hrdcod_tbl         ; hard coded address(#$95), high byte *******
  sta $03
j_95b2:
  jsr scroll_plr_up   ; get the offset for the hard coded address
  lda $00
  sec
  sbc ($02),Y
  sta $00
  iny
  lda $01
  iny
  jsr flip_bits_1
  lda $01
  bne set_carry
  lda $00
  cmp #$06
  bcs set_carry
  jsr scroll_plr_rt
  lda $00
  sec
  sbc ($02),Y
  sta $00
  iny
  lda $01
  sbc ($02),Y
  sta $01
  iny
  jsr flip_bits_1
  lda $01
  bne set_carry
  lda $00
  cmp #$06
  bcs set_carry
set_carry:
  sec
  rts
ram_misc_22:
  lda #$0E
  sta $02
  lda #$96
  sta $03
  jmp j_95b2
hrdcod_tbl:   ; @$95FE
	.byte $3C,$01,$F8,$00,$38,$02,$10,$00,$FC,$01,$10,$00,$3C,$01,$F8,$00,$94,$00,$60,$01,$44,$00,$20,$02,$C4,$00,$E0,$02,$44,$00,$20,$0A,$94,$00,$E0,$0A
  lda unram_5
  asl
  asl
  tay
  jsr ram_misc_22
  bcc b_962d
  rts
b_962d:
  lda unram_5
  tay
  lda #$01
  dey
  bmi b_9639
b_9635:
  asl
  dey
  bpl b_9635
b_9639:
  sta $00
  sta unram_4
  inc unram_5
  rts
bkup_lvl_prog_for_side_lvl:
  lda y_scroll_lo
  sta bk_yScrlLo
  lda y_scroll_hi
  sta bk_yScrlHi
  lda plr_y_pos_lo
  sta bk_plrYPosLo
  lda plr_y_pos_hi
  sta bk_plrYPosHi
  lda plr_x_pos_lo
  sta bk_plrXPosLo
  lda plr_x_pos_hi
  sta bk_plrXPosHi
  lda plr_x_prog_fr
  sta bk_plrXProgFr
  lda plr_x_prog_lo
  sta bk_plrXProgLo
  lda plr_x_prog_hi
  sta bk_plrXProgHi
  lda plr_y_prog_fr
  sta bk_plrYProgFr
  lda plr_y_prog_lo
  sta bk_plrYProgLo
  lda plr_y_prog_hi
  sta bk_plrYProgHi
  lda current_level
  sta bk_crnt_lvl
  lda sub_state
  and #$07
  clc
  adc #$14
  sta current_level
  lda sub_state
  ora #$80
  sta sub_state
  rts
load_lvl_prog_bkup:
  lda bk_yScrlLo
  sta y_scroll_lo
  lda bk_yScrlHi
  sta y_scroll_hi
  lda bk_plrYPosLo
  sta plr_y_pos_lo
  lda bk_plrYPosHi
  ldx bk_crnt_lvl
  cpx #$0A        ; compare if level is stage 6
  bne b_96a0      ; go back to same y pos if current level is not 6
  sec
  sbc #$08        ; go down 1 tile
b_96a0:
  sta plr_y_pos_hi
  lda bk_plrXPosLo
  sta plr_x_pos_lo
  lda bk_plrXPosHi
  ldx bk_crnt_lvl
  cpx #$0A        ; compare if level is stage 6
  bne b_96b1      ; go back to same x pos if current level is not 6
  clc
  adc #$18        ; go right 3 tiles
b_96b1:
  sta plr_x_pos_hi
  lda bk_plrXProgFr
  sta plr_x_prog_fr
  lda bk_plrXProgLo
  sta plr_x_prog_lo
  lda bk_plrXProgHi
  sta plr_x_prog_hi
  lda bk_plrYProgFr
  sta plr_y_prog_fr
  lda bk_plrYProgLo
  sta plr_y_prog_lo
  lda bk_plrYProgHi
  sta plr_y_prog_hi
  lda #$40
  sta sub_state       ; load $40 to substate
  lda bk_crnt_lvl
  sta current_level   ; return to current level
  rts
ram_misc_23:
  lda unram_1
  clc
  adc #$01
  sta unram_1
  lda unram_2
  adc #$00
  sta unram_2
  lda sub_state
  and #$20      
  bne b_96f2    ; branch if substate is 20
  lda unram_2
  cmp #$05
  bcc b_96fc
  lda #$A0
  sta sub_state ; load $A0 to substate
  rts
b_96f2:
  lda unram_2
  cmp #$06
  bcc b_96fc
  lda #$10
  sta state
b_96fc:
  rts
wpn_misc_1:
  jsr wpn1_timer_rtn_1
  jsr wpn2_timer_rtn_1
  rts
wpn1_timer_rtn_1:
  lda controller_current
  and #$02              ; check if B is pressed
  bne dec_wpn1_timer
  lda #$00
  sta wpn_timer
  rts
dec_wpn1_timer:
  lda wpn_timer
  beq wpn1_timer_rtn_0
  dec wpn_timer
  rts
wpn1_timer_rtn_0:
  lda #$18      ; start weapon1 timer
  sta wpn_timer
  lda #max_bullets      ; number of max bullets on screen $04
  sta $00
  ldx #$00
  jsr find_empty_wpn_ram
  lda $00
  beq b_9779
  jsr play_sound_wpn
  jsr fire_wpn
  lda flight_status     ; check truck mode
  bmi b_975f            ; jump if truck weapon fire
  lda #$00
  sta wpn_y_inc_lo,X    ; load 0 vertical bullet speed
  sta wpn_y_inc_hi,X
  lda plr_x_inc_lo
  sta $00               ; store bullet speed temporarily to 00
  lda plr_x_inc_hi
  sta $01               ; store bullet speed hi byte temporarily to 01
  jsr flip_bits_1
  lda $01
  clc
  adc #hori_wpn_speed   ; $04
  sta $01
  lda player_direction
  bne b_9752
  jsr flip_bits_0
b_9752:
  lda $00
  sta wpn_x_inc_lo,X
  lda $01
  sta wpn_x_inc_hi,x
b_975f:
  lda #$00
  sta wpn_y_inc_lo,X
  lda #vert_wpn_speed   ; #$FC
  sta wpn_y_inc_hi,X
  lda plr_x_inc_lo
  sta wpn_x_inc_lo,X    ; give the vertical shot players x movement speed
  lda plr_x_inc_hi
  sta wpn_x_inc_hi,X
  lda power_up
  and #$40              ; check for weapon powerup
  bne diag_bullet_rtn
b_9779:
  rts
diag_bullet_rtn:
  lda #max_bullets
  sta $00
  ldx #$00
  jsr find_empty_wpn_ram
  lda $00
  beq b_9779
  jsr fire_wpn
  lda #$80
  sta wpn_status,X      ; activate new bullet
  lda #$00
  sta wpn_y_inc_lo,X
  lda #vert_wpn_speed
  sta wpn_y_inc_hi,X    ; set vertical speed
  lda #$00
  sta $00
  lda #hori_wpn_speed
  sta $01               ; set horizontal speed then check direction
  lda player_direction  ; check direction
  bne b_97a8
  jsr flip_bits_0
b_97a8:
  lda $00
  clc
  adc plr_x_inc_lo      ; add player horizontal speed
  sta wpn_x_inc_lo,X
  lda $01
  adc plr_x_inc_hi
  sta wpn_x_inc_hi,X
  rts
fire_wpn:
  lda #max_bullet_frames    ; $20 bullet frames
  sta bullet_timer,X        ; set bullet timer
  lda #$80 
  sta wpn_status,X          ; set new bullet
wpn_set_pos:
  lda plr_x_prog_fr
  clc
  adc plr_x_pos_lo
  sta wpn_x_pos_lo,X
  lda plr_x_prog_lo
  adc plr_x_pos_hi
  sta wpn_x_pos_hi,X
  lda plr_x_prog_hi
  adc #$00
  sta wpn_x_pos_ex,X
  lda plr_y_pos_hi
  sec
  sbc #$06          ; raise 6px from midsection, subtract 6 from plr y position
  sta $08
  lda plr_y_prog_fr
  clc
  adc plr_y_pos_lo
  sta wpn_y_pos_lo,X
  lda plr_y_prog_lo
  adc $08
  sta wpn_y_pos_hi,X
  lda plr_y_prog_hi
  adc #$00
  sta wpn_y_pos_ex,X
  rts
wpn2_timer_rtn_1:
  lda flight_status   ; check for truck mode
  bpl b_9810          ; exit if not truck
  lda wpn2_timer
  beq wpn2_timer_rtn_2  ; start timer if its 00
  dec wpn2_timer
  rts
wpn2_timer_rtn_2:
  lda controller_last
  lsr                   ; check if we're havent pressed A last frame
  bcs b_9810
  lda controller_current
  lsr
  bcs start_missile
b_9810:
  rts
start_missile:
  lda #missile_frames_int ; $30 frames until next missile can be fired
  sta wpn2_timer
  lda #max_bullets        ; only do 4 bullets at a time by default
  sta $00
  ldx #$00
b_981b:
  lda wpn_status,X
  cmp #$C0
  beq b_9810
  and #$80
  txa
  clc
  adc #$10
  tax
  dec $00
  bne b_981b
  rts
fire_missile:
  jsr play_sound_wpn
  jsr wpn_set_pos
  lda #$C0                ; set active missile status
  sta wpn_status,X  
  lda #$01                ; load missile sprite 
  sta wpn_sprite_type,X 
  lda plr_x_inc_lo
  sta $00
  lda plr_x_inc_hi
  sta $01
  jsr flip_bits_1
  lda $01
  clc
  adc #$06                ; offset the bullet infront of player 6px
  sta $01
  lda player_direction
  bne b_9858
  jsr flip_bits_1
b_9858: 
  lda $00
  sta wpn_x_inc_lo,X
  lda $01
  sta wpn_x_inc_hi,X
  lda #$00
  sta wpn_y_inc_lo,X
  sta wpn_y_inc_hi,X
  lda #max_missile_frames ; missiles stay on screen for default of $40 frames
  sta bullet_timer,X
  jsr play_sound_wpn      ; this seems unnecessary since it was already called in this subroutine ******
  rts
find_empty_wpn_ram:
  lda wpn_status,X
  bpl b_9882
  txa 
  clc
  adc #$10
  tax
  dec $00
  bne find_empty_wpn_ram  ; check next slot based on the max bullet counter
b_9882:
  rts
wpn_hit_rtn:
  ldx #$00
  lda #$0F
  sta $0B
wpn_hit_rtn_a:
  lda wpn_status,X
  bmi b_9891
  jmp j_9907
b_9891: 
  jsr wpn_misc_2
  lda wpn_x_inc_lo,X
  sta $07
  lda wpn_x_inc_hi,X
  sta $08
  jsr wpn_misc_3
  lda wpn_y_inc_lo,X
  sta $07
  lda wpn_y_inc_hi,X
  sta $08
  inx
  inx
  inx
  jsr wpn_misc_3
  dex
  dex
  dex
  lda bullet_timer,X
  tay
  dey
  bne b_98bf
  jsr end_bullet
  tay
b_98bf:
  tya
  sta bullet_timer,X
  lda plr_x_prog_lo
  clc
  adc #$08
  sta $01
  lda plr_x_prog_hi
  adc #$00
  sta $02
  lda wpn_x_pos_hi,X
  sec
  sbc $01
  lda wpn_x_pos_ex,X
  sbc $02
  bcs b_98e0
  jsr end_bullet
b_98e0:
  lda wpn_x_pos_hi,X
  sta $00
  sta plr_x_pos_hi_old
  lda wpn_x_pos_ex,X
  sta $01
  lda wpn_y_pos_hi,X
  sta $0E
  sta plr_y_pos_hi_diff
  lda wpn_y_pos_ex,X
  sta $0f
  txa
  pha
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  pla
  tax
  bcc j_9907
  jsr wpn_misc_5
j_9907:
  txa
  clc
  adc #$10
  tax
  dec $0B
  bmi b_9944
  jmp wpn_hit_rtn_a
wpn_misc_5:             ; something related to explosion and changing the sprite
  lda wpn_status,X
  sta $00
  and #$40
  beq end_bullet
  lda $00
  lsr
  bcs b_9944
  lda $00
  ora #$01
  sta wpn_status,X
  lda #$00
  sta wpn_x_inc_lo,X
  sta wpn_x_inc_hi,X
  sta wpn_y_inc_lo,X
  sta wpn_y_inc_hi,X
  lda #$20
  sta bullet_timer,X
  inc wpn_sprite_type,X
  rts
end_bullet:
  lda #$00
  sta wpn_status,X
b_9944:
  rts
wpn_misc_3:
  lda wpn_x_pos_lo,X
  clc
  adc $07
  sta wpn_x_pos_lo,X
  lda wpn_x_pos_hi,X
  adc $08
  sta wpn_x_pos_hi,X
  lda $08
  bpl b_9963
  lda wpn_x_pos_ex,X
  adc #$ff
  sta wpn_x_pos_ex,X
  rts
b_9963:
  lda wpn_x_pos_ex,X
  adc #$00
  sta wpn_x_pos_ex,X
  rts
wpn_misc_2:
  lda wpn_sprite_type,X
  asl
  tay
  lda wpn_addr_tbl,y
  sta $03
  lda wpn_addr_tbl+1,y
  sta $04
  jmp ($0003)
wpn_addr_tbl:
  .word wpn_addr_a
  .word wpn_addr_b
  .word wpn_addr_c
  .word wpn_addr_c
  .word wpn_addr_a
wpn_addr_a:
  rts
wpn_addr_b:
  lda wpn_status,X
  lsr
  bcs wpn_addr_c
  lda wpn_y_inc_lo,x
  clc
  adc #$20
  sta $03
  lda wpn_y_inc_hi,X
  adc #$00
  sta $04
  lda $03
  sta wpn_y_inc_lo,X
  lda $04
  sta wpn_y_inc_hi,X
b_99a8:
  rts
wpn_addr_c:
  lda bullet_timer,X
  cmp #$10
  bne b_99a8        ; exit if 10, something about missiles offscreen
  inc wpn_sprite_type,X
  lda wpn_status,X
  ora #$02
  sta wpn_status,X
  rts
wpn_misc_4:
  ldx #$00
  lda #$0F        ; check all 0f slots
  sta $0B
wpn_misc_4a:
  lda wpn_status,X
  bpl next_wpn_ram
  lda wpn_x_pos_hi,X
  sec
  sbc plr_x_prog_lo
  sta $02

  lda wpn_x_pos_ex,X
  sbc plr_x_prog_hi
  bne next_wpn_ram
  lda wpn_y_pos_hi,X
  sec
  sbc plr_y_prog_lo
  sta $01
  lda wpn_y_pos_ex,x
  sbc plr_y_prog_hi
  bne next_wpn_ram
  lda wpn_sprite_type,X
  sta $00
  stx $0E
  jsr wpn_misc_6
  ldx $0E
next_wpn_ram:
  txa
  clc
  adc #$10
  tax
  dec $0B
  bpl wpn_misc_4a
  rts
wpn_misc_6:
  lda #<wpn_addr_tbl_2  ; #$B2
  sta $09
  lda #>wpn_addr_tbl_2  ; #$9D ***** some code address lookup table
  jmp j_9a7a
wpn_lookup_rtn:
  lda stage_boss
  asl
  tay
  lda stage_boss_table_2,Y
  sta $09
  lda stage_boss_table_2+1,Y
  sta $0A
  jsr ram_misc_24
  bcc b_9a28
b_9a19:
  ldx $0F
  cpx #$E4
  bcs b_9a28
  jsr load_sprites
  stx $0F
  dec $05
  bpl b_9a19
b_9a28:
  rts
stage_boss_table_2:
  .word stage_boss_table_2a   ; @$9df2 ****
  .word stage_boss_table_2b   ; @$9ef2 ****
player_bullet_enemy_routine:
  ldx #$00
  stx $0F
  jsr player_sprite_rtn
  jsr wpn_misc_4
  jsr enemy_status_chk
  ldx $0F               ; update OAM data starting at $0740
j_9a3c:
  cpx #$E4
  bcs b_9a4c
  lda #$f0
  sta sprite1_y_pos,X
  inx
  inx
  inx
  inx
  jmp j_9a3c
b_9a4c:
  rts
player_sprite_rtn:
  lda player_sprite
  sta $00
  lda flight_status
  bpl b_9a64        ; branch if not truck
  and #$40
  bne b_9a64        ; branch if transforming
  lda rodimus_ram
  lsr
  bcc b_9a64        ; branch if rodimus not enabled
  lda $00
  ora #$08
  sta $00
b_9a64:
  lda flight_status
  ora #$01
  sta flight_status
  lda #<lvl_data_tbl      ; $00
  sta $09
  lda #>lvl_data_tbl      ; $9B is this a hard coded address?
  sta $0A
  lda plr_y_pos_hi
  sta $01
  lda plr_x_pos_hi
  sta $02
j_9a7a:
  jsr ram_misc_24
  bcc b_9a88
b_9a7f:
  jsr load_sprites
  dec $05
  bpl b_9a7f
  stx $0F
b_9a88:
  lda flight_status
  and #$FE
  sta flight_status
  rts
ram_misc_24:
  lda $00
  asl
  tay
  lda ($09),Y
  sta $03
  iny
  lda ($09),Y
  sta $04
  lda #$00
  sta $06
  sta $07
  tay
  ldx $0F
  lda ($03),Y
  beq b_9ac4
  sec
  sbc #$01
  sta $05
  iny
  lda $00
  bpl b_9ac3
  lda #$40
  sta $06
  lda #$ff
  sta $07
  lda $02
  sec
  sbc #$07
  sta $02
  sec
b_9ac3:
  rts
b_9ac4:
  clc
  rts
load_sprites:
  lda ($03),Y
  clc
  adc $01
  sta sprite1_y_pos,X   ; Store Y Position for this Sprite
  inx
  iny
  lda ($03),Y
  sta sprite1_y_pos,X   ; Store Address for this Sprite
  inx
  iny
  lda $06
  eor ($03),Y
  sta sprite1_y_pos,X   ; X_Direction
  lda current_level
  cmp #$10
  bne b_9af1
  lda flight_status
  lsr
  bcc b_9af1
  lda sprite1_y_pos,X
  ora #$20
  sta sprite1_y_pos,X
b_9af1:
  inx
  iny
  lda ($03),Y
  eor $07               ; flip all bits?
  clc
  adc $02
  sta sprite1_y_pos,X   ; store x position for this sprite
  inx
  iny
  rts
lvl_data_tbl:           ; @$9B00-9DB1
	.byte $24,$9B,$49,$9B,$62,$9B,$83,$9B,$A8,$9B,$CD,$9B,$F2,$9B,$0B,$9C,$30,$9C,$51,$9C,$6E,$9C,$6F,$9C,$98,$9C,$C1,$9C,$EA,$9C
	.byte $03,$9D,$44,$9D,$85,$9D,$09,$F0,$10,$00,$F8,$F0,$11,$00,$00,$F8,$14,$00,$F8,$F8,$15,$00,$00,$00,$12,$00,$F8,$00,$13,$00
	.byte $00,$08,$16,$00,$F8,$08,$17,$00,$00,$05,$18,$00,$F0,$06,$F0,$19,$00,$FC,$F8,$1A,$00,$FC,$00,$1B,$00,$FC,$08,$1C,$00,$FC
	.byte $F4,$1D,$00,$F4,$08,$1E,$00,$F4,$08,$F0,$10,$00,$F8,$F0,$11,$00,$00,$F8,$14,$00,$F8,$F8,$15,$00,$00,$00,$52,$00,$F8,$00
	.byte $13,$00,$00,$08,$53,$00,$F8,$08,$17,$00,$00,$09,$F0,$2E,$00,$F8,$F0,$2F,$00,$00,$F8,$30,$00,$F8,$F8,$31,$00,$00,$F8,$32
	.byte $00,$08,$00,$33,$00,$F8,$00,$34,$00,$00,$08,$35,$00,$FA,$08,$36,$00,$02,$09,$FA,$37,$00,$F0,$FA,$38,$00,$F8,$FA,$39,$00
	.byte $00,$FA,$3A,$00,$08,$02,$0F,$00,$E8,$02,$3B,$00,$F0,$02,$3C,$00,$F8,$02,$3D,$00,$00,$02,$3E,$00,$08,$09,$F9,$37,$00,$F0
	.byte $F9,$38,$00,$F8,$F9,$39,$00,$00,$F9,$3A,$00,$08,$01,$0F,$00,$E8,$01,$4E,$00,$F0,$01,$4F,$00,$F8,$01,$50,$00,$00,$01,$51
	.byte $00,$08,$06,$F8,$48,$00,$F5,$F8,$49,$00,$FD,$00,$4A,$00,$F9,$00,$4B,$00,$01,$08,$4C,$00,$F4,$08,$4D,$00,$00,$09,$F8,$3F
	.byte $00,$F8,$00,$40,$00,$F0,$00,$41,$00,$F8,$00,$42,$00,$00,$00,$43,$00,$08,$08,$44,$00,$F0,$08,$45,$00,$F8,$08,$46,$00,$00
	.byte $08,$47,$00,$08,$08,$F0,$1F,$00,$00,$F8,$20,$00,$F8,$F8,$21,$00,$00,$00,$22,$00,$F8,$00,$23,$00,$00,$00,$24,$00,$08,$08
	.byte $25,$00,$F8,$08,$26,$00,$00,$07,$F0,$27,$00,$FC,$F0,$28,$00,$04,$F8,$29,$00,$FC,$F8,$2A,$00,$04,$00,$2B,$00,$FC,$00,$2C
	.byte $00,$04,$08,$2D,$00,$FC,$00,$0A,$F0,$55,$00,$F5,$F0,$56,$00,$FD,$F0,$57,$00,$05,$F8,$58,$00,$F5,$F8,$59,$00,$FD,$F8,$5A
	.byte $00,$05,$00,$5B,$00,$F9,$00,$5C,$00,$01,$08,$5D,$00,$F9,$08,$5E,$00,$01,$0A,$FA,$6A,$00,$F0,$FA,$6B,$00,$F8,$FA,$6C,$00
	.byte $00,$FA,$6D,$00,$08,$FA,$6E,$00,$10,$02,$6F,$00,$F0,$02,$70,$00,$F8,$02,$71,$00,$00,$02,$72,$00,$08,$02,$73,$00,$10,$0A
	.byte $F9,$6A,$00,$F0,$F9,$6B,$00,$F8,$F9,$6C,$00,$00,$F9,$6D,$00,$08,$F9,$6E,$00,$10,$01,$74,$00,$F0,$01,$75,$00,$F8,$01,$76
	.byte $00,$00,$01,$77,$00,$08,$01,$78,$00,$10,$06,$F0,$E0,$00,$F8,$F0,$E1,$00,$00,$F8,$E2,$00,$F8,$F8,$E3,$00,$00,$00,$E4,$00
	.byte $F8,$00,$E5,$00,$00,$10,$F0,$79,$00,$F0,$F0,$7A,$00,$F8,$F0,$7A,$40,$00,$F0,$79,$40,$08,$F8,$7B,$00,$F0,$F8,$7C,$00,$F8
	.byte $F8,$7C,$40,$00,$F8,$7B,$40,$08,$00,$7B,$80,$F0,$00,$7C,$80,$F8,$00,$7C,$C0,$00,$00,$7B,$C0,$08,$08,$79,$80,$F0,$08,$7A
	.byte $80,$F8,$08,$7A,$C0,$00,$08,$79,$C0,$08,$10,$F0,$7D,$00,$F0,$F0,$7E,$00,$F8,$F0,$7E,$40,$00,$F0,$7D,$40,$08,$F8,$7F,$00
	.byte $F0,$F8,$80,$00,$F8,$F8,$80,$40,$00,$F8,$7F,$40,$08,$00,$7F,$80,$F0,$00,$80,$80,$F8,$00,$80,$C0,$00,$00,$7F,$C0,$08,$08
	.byte $7D,$80,$F0,$08,$7E,$80,$F8,$08,$7E,$C0,$00,$08,$7D,$C0,$08,$0B,$F0,$5F,$00,$F5,$F0,$60,$00,$FD,$F0,$61,$00,$05,$F8,$62
	.byte $00,$F5,$F8,$63,$00,$FD,$F8,$64,$00,$05,$00,$65,$00,$F5,$00,$66,$00,$FD,$00,$67,$00,$05,$08,$68,$00,$F8,$08,$69,$00,$00
wpn_addr_tbl_2:         ; @$9DB2-9DF1
	.byte $BC,$9D,$C1,$9D,$C6,$9D,$D7,$9D,$ED,$9D,$01,$FC,$F3,$01,$FC,$01,$FC,$84,$01,$FC,$04,$F8,$8C,$C0,$F8,$00,$8B,$00,$F8,$F8,$8B,$C0
	.byte $00,$00,$8C,$00,$00,$04,$F8,$87,$00,$F8,$00,$89,$00,$F8,$F8,$88,$00,$00,$00,$8A,$00,$00,$01,$FC,$81,$00,$FC,$01,$FC,$54,$00,$FC
stage_boss_table_2a:    ; @$9DF2-9EF1
	.byte $7E,$9F,$7E,$9F,$8B,$9F,$8B,$9F,$A0,$9F,$B9,$9F,$D2,$9F,$D2,$9F,$DF,$9F,$E8,$9F,$F1,$9F,$F1,$9F,$FA,$9F,$FA,$9F,$03,$A0,$03,$A0
	.byte $10,$A0,$10,$A0,$10,$A0,$10,$A0,$47,$A0,$4C,$A0,$51,$A0,$51,$A0,$10,$A0,$10,$A0,$56,$A0,$56,$A0,$7C,$A0,$7C,$A0,$89,$A0,$89,$A0
	.byte $92,$A0,$92,$A0,$9B,$A0,$9B,$A0,$30,$A3,$30,$A3,$A8,$A0,$A8,$A0,$F8,$A0,$09,$A1,$1A,$A1,$1A,$A1,$23,$A1,$23,$A1,$34,$A1,$34,$A1
	.byte $3D,$A1,$3D,$A1,$4A,$A1,$4A,$A1,$AC,$A1,$AC,$A1,$B9,$A1,$B9,$A1,$CE,$A1,$CE,$A1,$CE,$A1,$CE,$A1,$76,$A2,$76,$A2,$87,$A2,$87,$A2
	.byte $C6,$9D,$D7,$9D,$CE,$A1,$CE,$A1,$C6,$9D,$E8,$9D,$6E,$9C,$6E,$9C,$47,$A0,$4C,$A0,$3B,$A4,$3B,$A4,$FD,$A1,$06,$A2,$FD,$A1,$06,$A2
	.byte $3D,$A3,$3D,$A3,$6E,$9C,$6E,$9C,$0F,$A2,$0F,$A2,$20,$A2,$20,$A2,$21,$A2,$32,$A2,$43,$A2,$58,$A2,$6D,$A2,$6D,$A2,$4A,$A1,$4A,$A1
	.byte $7E,$9F,$7E,$9F,$7E,$9F,$7E,$9F,$7E,$9F,$7E,$9F,$7E,$9F,$7E,$9F,$94,$A2,$94,$A2,$A1,$A2,$A1,$A2,$AE,$A2,$AE,$A2,$BB,$A2,$BB,$A2
	.byte $C8,$A2,$C8,$A2,$D5,$A2,$D5,$A2,$E2,$A2,$E2,$A2,$EF,$A2,$EF,$A2,$FC,$A2,$FC,$A2,$09,$A3,$09,$A3,$16,$A3,$16,$A3,$23,$A3,$23,$A3
stage_boss_table_2b:    ; @$9EF2-9FF1
	.byte $1D,$A0,$1D,$A0,$10,$A0,$10,$A0,$10,$A0,$10,$A0,$10,$A0,$10,$A0,$10,$A0,$10,$A0,$2E,$A0,$33,$A0,$2E,$A0,$33,$A0,$38,$A0,$38,$A0
	.byte $3D,$A0,$42,$A0,$D1,$A0,$D1,$A0,$D6,$A0,$E7,$A0,$38,$A0,$38,$A0,$3D,$A0,$42,$A0,$4F,$A1,$4F,$A1,$38,$A0,$38,$A0,$3D,$A0,$42,$A0
	.byte $60,$A1,$60,$A1,$71,$A1,$82,$A1,$93,$A1,$93,$A1,$98,$A1,$9D,$A1,$A2,$A1,$A2,$A1,$A7,$A1,$A7,$A1,$6E,$9C,$6E,$9C,$FE,$A3,$0F,$A4
	.byte $18,$A4,$18,$A4,$29,$A4,$32,$A4,$4C,$A4,$51,$A4,$C6,$9D,$D7,$9D,$C6,$9D,$D7,$9D,$C6,$9D,$D7,$9D,$C6,$9D,$D7,$9D,$C6,$9D,$D7,$9D
	.byte $C6,$9D,$D7,$9D,$C6,$9D,$E8,$9D,$C6,$9D,$E8,$9D,$03,$FC,$C0,$41,$04,$FC,$C1,$41,$FC,$FC,$C2,$41,$F4,$05,$F4,$C4,$41,$FC,$F4,$C3
	.byte $41,$04,$FC,$C5,$01,$F4,$FC,$C6,$41,$FC,$FC,$C5,$41,$04,$06,$F4,$C8,$41,$00,$FC,$CC,$41,$00,$04,$D0,$41,$00,$F4,$C9,$41,$F8,$FC
	.byte $CD,$41,$F8,$04,$D1,$41,$F8,$06,$F4,$CA,$41,$00,$FC,$CE,$41,$00,$04,$D2,$41,$00,$F4,$CB,$41,$F8,$FC,$CF,$41,$F8,$04,$D3,$41,$F8
	.byte $03,$FC,$FA,$42,$F4,$FC,$F9,$42,$FC,$FC,$F8,$42,$04,$02,$F8,$F7,$01,$FC,$00,$E9,$01,$FC,$02,$F8,$F7,$01,$FC,$00,$E8,$01,$FC,$02
lvl_data_tbl_contd:   ; @$9FF2-A455
	.byte $F8,$E0,$02,$FC,$00,$E1,$02,$FC,$02,$FC,$E2,$01,$F8,$FC,$E3,$01,$00,$03,$F6,$F0,$01,$FC,$FE,$F1,$01,$F8,$FE,$F2,$01,$00,$03,$FC
	.byte $82,$01,$F4,$FC,$83,$01,$FC,$FC,$82,$41,$04,$04,$F8,$BC,$03,$F8,$F8,$BD,$03,$00,$00,$BE,$03,$F8,$00,$BF,$03,$00,$01,$FC,$EA,$21
	.byte $FC,$01,$FC,$EB,$21,$FC,$01,$FC,$EE,$03,$FC,$01,$FC,$B0,$22,$FC,$01,$FC,$B1,$22,$FC,$01,$FC,$EC,$22,$FC,$01,$FC,$ED,$22,$FC,$01
	.byte $FC,$E8,$22,$FC,$03,$FC,$EB,$41,$F4,$FC,$EA,$41,$FC,$FC,$E9,$41,$04,$06,$F0,$E0,$01,$F8,$F0,$E0,$41,$00,$F8,$E2,$01,$F8,$F8,$E2
	.byte $41,$00,$00,$E1,$01,$FC,$08,$E3,$01,$FC,$03,$FC,$EB,$42,$F4,$FC,$EA,$42,$FC,$FC,$E9,$42,$04,$02,$FC,$FC,$02,$FC,$04,$FD,$02,$FC
	.byte $02,$FC,$FE,$02,$F8,$FC,$FE,$42,$00,$03,$F4,$E7,$22,$FC,$FC,$E5,$22,$FC,$04,$E6,$22,$FC,$0A,$F0,$D6,$62,$00,$F0,$D7,$62,$F8,$F8
	.byte $D8,$62,$00,$F8,$D9,$62,$F8,$00,$DA,$62,$00,$00,$DB,$62,$F8,$08,$DC,$62,$00,$08,$DD,$62,$F8,$00,$DE,$62,$08,$08,$DF,$62,$08,$01
	.byte $FC,$C7,$03,$FC,$04,$F8,$C3,$02,$F8,$F8,$C4,$02,$00,$00,$C5,$02,$F8,$00,$C6,$02,$00,$04,$F8,$C6,$C2,$F8,$F8,$C5,$C2,$00,$00,$C4
	.byte $C2,$F8,$00,$C3,$C2,$00,$04,$FC,$9F,$02,$F4,$FC,$9D,$02,$FC,$FC,$9F,$42,$04,$04,$9E,$02,$FC,$04,$FC,$9C,$02,$F4,$FC,$9D,$02,$FC
	.byte $FC,$9C,$42,$04,$04,$9E,$02,$FC,$02,$FC,$9A,$02,$F8,$FC,$9B,$02,$00,$04,$F5,$B1,$43,$F8,$F5,$B0,$43,$00,$FD,$B3,$43,$F8,$FD,$B2
	.byte $43,$00,$02,$FC,$B8,$02,$F8,$FC,$B9,$02,$00,$03,$F8,$F4,$02,$F8,$F8,$F5,$02,$00,$00,$F6,$02,$FC,$01,$FC,$BF,$02,$FC,$04,$F8,$EE
	.byte $02,$F8,$F8,$EE,$42,$00,$00,$EF,$02,$F8,$00,$EF,$42,$00,$04,$04,$FA,$03,$F8,$FC,$F8,$03,$F8,$FC,$F9,$03,$00,$F4,$F7,$03,$00,$04
	.byte $F8,$B7,$02,$F8,$F8,$B8,$02,$00,$00,$B9,$02,$F8,$00,$BA,$02,$00,$04,$F8,$BB,$02,$F8,$F8,$BC,$02,$00,$00,$BD,$02,$F8,$00,$BE,$02
	.byte $00,$01,$FD,$E5,$03,$FD,$01,$FC,$D4,$02,$FC,$01,$FC,$D5,$02,$FC,$01,$FD,$E6,$03,$FD,$01,$FC,$E7,$03,$FC,$03,$FC,$C0,$42,$04,$FC
	.byte $C1,$42,$FC,$FC,$C2,$42,$F4,$05,$FC,$8E,$02,$F8,$04,$8F,$02,$F8,$FC,$8D,$02,$00,$FC,$86,$02,$08,$F4,$85,$02,$00,$04,$F8,$68,$02
	.byte $F8,$00,$69,$02,$F8,$F8,$68,$42,$00,$00,$69,$42,$00,$04,$FC,$F1,$02,$F0,$FC,$F2,$02,$F8,$FC,$F2,$42,$00,$FC,$F1,$42,$08,$03,$FC
	.byte $F5,$02,$F4,$FC,$F6,$02,$FC,$FC,$F5,$02,$04,$02,$F8,$B4,$02,$FC,$00,$B5,$02,$FC,$02,$F8,$B6,$02,$FC,$00,$B7,$02,$FC,$04,$F8,$B0
	.byte $02,$F8,$F8,$B1,$02,$00,$00,$B2,$02,$F8,$00,$B3,$02,$00,$00,$04,$F8,$D4,$02,$F8,$F8,$D5,$02,$00,$00,$D8,$02,$F8,$00,$D9,$02,$00
	.byte $04,$F8,$D4,$02,$F8,$F8,$D5,$02,$00,$00,$D6,$02,$F8,$00,$D7,$02,$00,$05,$F8,$90,$02,$F0,$F8,$91,$02,$F8,$F8,$92,$02,$00,$00,$93
	.byte $02,$F8,$00,$94,$02,$00,$05,$F8,$91,$02,$F8,$F8,$92,$02,$00,$00,$97,$02,$F0,$00,$98,$02,$F8,$00,$94,$02,$00,$02,$F8,$9B,$03,$FC
	.byte $00,$9C,$03,$FC,$04,$F8,$DC,$43,$F8,$F8,$DB,$43,$00,$00,$DE,$43,$F8,$00,$DD,$43,$00,$03,$FC,$A1,$41,$F4,$FC,$A7,$41,$FC,$FC,$A0
	.byte $41,$04,$03,$FC,$A1,$41,$F4,$FC,$A2,$41,$FC,$FC,$A0,$41,$04,$03,$FC,$A1,$41,$F4,$FC,$A3,$41,$FC,$FC,$A0,$41,$04,$03,$FC,$A1,$41
	.byte $F4,$FC,$A4,$41,$FC,$FC,$A0,$41,$04,$03,$FC,$A1,$41,$F4,$FC,$A5,$41,$FC,$FC,$A0,$41,$04,$03,$FC,$A1,$41,$F4,$FC,$A6,$41,$FC,$FC
	.byte $A0,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$A9,$41,$FC,$FC,$A8,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$AA,$41,$FC,$FC,$A8,$41,$04,$03,$FC,$A8
	.byte $01,$F4,$FC,$A9,$41,$FC,$FC,$A8,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$AB,$41,$FC,$FC,$A8,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$AC,$41,$FC
	.byte $FC,$A8,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$A9,$41,$FC,$FC,$A8,$41,$04,$03,$FC,$A8,$01,$F4,$FC,$A9,$41,$FC,$FC,$A8,$41,$04,$03,$FC
	.byte $D0,$02,$F4,$FC,$D1,$02,$FC,$FC,$D0,$42,$04,$30,$E8,$DF,$42,$E0,$E8,$DE,$42,$E8,$E8,$DD,$42,$F0,$E8,$DC,$42,$F8,$E8,$DB,$42,$00
	.byte $E8,$DA,$42,$08,$E8,$D9,$42,$10,$E8,$D8,$42,$18,$F0,$FF,$42,$E0,$F0,$FE,$42,$E8,$F0,$FD,$42,$F0,$F0,$FC,$42,$F8,$F0,$FB,$42,$00
	.byte $F0,$FA,$42,$08,$F0,$F9,$42,$10,$F0,$F8,$42,$18,$F8,$B7,$42,$E0,$F8,$B6,$42,$E8,$F8,$B5,$42,$F0,$F8,$B4,$42,$F8,$F8,$B3,$42,$00
	.byte $F8,$B2,$42,$08,$F8,$B1,$42,$10,$F8,$B0,$42,$18,$00,$BF,$42,$E0,$00,$BE,$42,$E8,$00,$BD,$42,$F0,$00,$BC,$42,$F8,$00,$BB,$42,$00
	.byte $00,$BA,$42,$08,$00,$B9,$42,$10,$00,$B8,$42,$18,$08,$C7,$42,$E0,$08,$C6,$42,$E8,$08,$C5,$42,$F0,$08,$C4,$42,$F8,$08,$C3,$42,$00
	.byte $08,$C2,$42,$08,$08,$C1,$42,$10,$08,$C0,$42,$18,$10,$CF,$42,$E0,$10,$CE,$42,$E8,$10,$CD,$42,$F0,$10,$CC,$42,$F8,$10,$CB,$42,$00
	.byte $10,$CA,$42,$08,$10,$C9,$42,$10,$10,$C8,$42,$18,$04,$F8,$90,$01,$F8,$F8,$91,$01,$00,$00,$92,$01,$F8,$00,$93,$01,$00,$02,$F8,$94
	.byte $01,$FC,$00,$95,$01,$FC,$04,$F8,$96,$01,$F8,$F8,$97,$01,$00,$00,$98,$01,$F8,$00,$99,$01,$00,$02,$FC,$BA,$02,$F8,$FC,$BA,$02,$00
	.byte $02,$FC,$BB,$01,$F8,$FC,$BB,$01,$00,$04,$FC,$F2,$01,$F4,$FC,$FF,$01,$FC,$FC,$F2,$41,$04,$04,$FB,$01,$FC,$01,$FC,$EA,$01,$FC,$01
	.byte $FC,$EB,$01,$FC
enemy_misc_rtn_7:
  lda stage_orientation
  and #$C0
  beq b_a460
  jsr lvl_misc_rtn_3
  rts
b_a460:
  jsr lvl_misc_rtn_4
  jsr dec_frm_cnt_96
  rts
lvl_misc_rtn_4:
  jsr lvl_misc_rtn_5
  lda plr_x_prog_hi
  clc
  adc #$01
  sta $03
  lda plr_x_prog_lo
  sta $02
  lda $00
  sec
  sbc $02
  lda $01
  sbc $03
  bcc b_a4c7
  lda plr_x_prog_lo
  clc
  adc #$80
  sta $02
  lda plr_x_prog_hi
  adc #$01
  sta $03
  lda $00
  sec
  sbc $02
  lda $01
  sbc $03
  bcc b_a499
  rts
b_a499:
  lda #$0F
  sta $00 
lvl_misc_rtn_7:
  ldx #$00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_a4c9 
  lda ($09),Y
  sta eny_spr_x_pos_lo,X
  iny
  lda ($09),Y
  sta eny_spr_x_pos_hi,X
  iny
  lda ($09),Y
  sta eny_spr_y_pos_lo,X
  iny
  lda ($09),Y
  sta eny_spr_y_pos_hi,X
  iny
  lda ($09),Y
  sta eny_spr_type,X
  iny
  jsr ram_misc_25
b_a4c7:
  inc subtitle_timer
b_a4c9:
  rts
lvl_misc_rtn_5:
  lda current_level
  asl
  tax
  lda lvl_addr_tbl_1,X    ; @$bc6d
  sta $09
  lda lvl_addr_tbl_1+1,X
  sta $0A
  lda subtitle_timer
  sta $00
  asl
  asl
  clc
  adc $00
  tay
  lda ($09),Y
  sta $00
  iny
  lda ($09),Y
  sta $01
  dey
  rts
dec_frm_cnt_96:
  lda frame_counter_96
  beq start_frm_cnt_96
  dec frame_counter_96
  rts
start_frm_cnt_96:
  lda #$60
  sta frame_counter_96
  lda unram_17
  sta $00
  ldx #$00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_a549
  jsr ram_misc_2
  lda unram_97
  and #$01
  sta $02
  lda current_level
  asl
  tay
  lda lvl_addr_tbl_2,Y    ; @$BFE0
  sta $00
  lda lvl_addr_tbl_2+1,Y
  sta $01
  lda plr_x_prog_hi
  asl
  clc
  adc $02
  tay
  lda #$40
  sta $02
  lda #$00
  sta $03
  lda $02
  sta eny_spr_y_pos_lo,X
  lda $03
  sta eny_spr_y_pos_hi,X
  lda ($00),Y
  sta $0B
  cmp #$FF
  beq b_a549
  and #$C0
  bne b_a54a
  lda $0B
  sta eny_spr_type,X
  jsr enemy_new_pos
b_a549:
  rts
b_a54a:
  lda $0B
  and #$3F
  sta eny_spr_type,X
  lda #$00
  sta $04
  jsr set_new_enemy
  jsr enemy_new_pos
  lda current_level
  asl
  tay
  lda enemy_addr_tbl_1,y  ; $@C0C6
  sta $05
  lda enemy_addr_tbl_1+1,Y
  sta $06
  lda plr_x_prog_hi
  tay
  lda ($05),Y
  sta $01
b_a570:
  lda unram_17
  asl
  asl
  asl
  asl
  clc
  adc #$40
  tax
  lda #$0B
  sec
  sbc unram_17
  sta $00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_a549
  lda $0B
  and #$40
  beq b_a59b
  lda $02
  clc
  adc #$10
  sta $02
  lda $03
  adc #$00
  sta $03
b_a59b:
  lda $02
  sta eny_spr_y_pos_lo,X
  lda $03
  sta eny_spr_y_pos_hi,X
  lda $0B
  bpl b_a5b0
  lda $04
  clc
  sta $04
b_a5b0:
  lda $04
  sta eny_exp_timer,X
  lda $0B
  and #$BF
  sta eny_spr_type,X
  jsr enemy_new_pos
  jsr set_new_enemy
  dec $01
  bne b_a570
  rts
enemy_new_pos:
  lda plr_x_prog_lo
  clc
  adc #$80
  sta eny_spr_x_pos_lo,X
  lda plr_x_prog_hi
  adc #$01
  sta eny_spr_x_pos_hi,X
  jsr set_new_enemy
  rts
level_sub_a:
  lda #$00
  sta subtitle_timer
  sta unram_7
  lda stage_orientation
  and #$C0
  bne b_a60f
  lda #$0F
  sta $0C
b_a5ea:
  jsr lvl_misc_rtn_5
  lda plr_x_prog_hi
  clc
  adc #$01
  sta $03
  lda plr_x_prog_lo
  sta $02
  lda $00
  sec
  sbc $02
  lda $01
  sbc $03
  bcs b_a60a
  lda #$0F
  sta $00
  jsr lvl_misc_rtn_7
b_a60a:
  dec $0C
  bpl b_a5ea
  rts
b_a60f:
  jsr lvl_misc_rtn_8
  bne b_a619
  lda #$00
  sta unram_7
  rts
b_a619:
  lda plr_y_prog_lo
  sta $02
  clc
  adc #$0F
  sta $04
  lda plr_y_prog_hi
  sta $03
  adc #$00
  sta $05
  jsr lvl_misc_rtn_9
  bcs b_a632
  jsr lvl_misc_rtn_10
b_a632:
  inc unram_7
  jmp b_a60f
lvl_misc_rtn_3:
  lda #$04
  sta $08
lvl_misc_rtn_11:
  jsr lvl_misc_rtn_8
  bne b_a647
  lda #$00
  sta unram_7
  jmp lvl_misc_rtn_11
b_a647:
  lda plr_y_prog_lo
  sta $04
  sec
  sbc #$40
  sta $02
  lda plr_y_prog_hi
  sta $05
  sbc #$00
  sta $03
  jsr lvl_misc_rtn_9
  bcs b_a663
  jsr lvl_misc_rtn_10
  jmp b_a685
b_a663:
  lda plr_y_prog_lo
  clc
  adc #$f0
  sta $02
  lda plr_y_prog_hi
  adc #$00
  sta $03
  lda plr_y_prog_lo
  clc
  adc #$30
  sta $04
  lda plr_y_prog_hi
  adc #$01
  sta $05
  jsr lvl_misc_rtn_9
  bcs b_a685
  jsr lvl_misc_rtn_10
b_a685:
  inc unram_7
  dec $08
  bne lvl_misc_rtn_11
  rts
lvl_misc_rtn_8:
  lda current_level
  and #$FE
  tay
  lda lvl_addr_tbl_3,Y  ; @$c130
  sta $00
  lda lvl_addr_tbl_3+1,Y
  sta $01
  lda unram_7
  asl
  sta $09
  asl
  clc
  adc $09
  clc
  adc $00
  sta $00
  lda $01
  adc #$00
  sta $01
  ldy #$01
  lda ($00),Y
  cmp #$ff
  rts
lvl_misc_rtn_9:
  dey 
  lda ($00),Y
  sec
  sbc $02
  iny 
  lda ($00),Y
  sbc $03
  bcc b_a6cf
  dey
  lda ($00),Y
  sec
  sbc $04
  iny
  lda ($00),Y
  sbc $05
  rts
b_a6cf:
  sec
  rts
lvl_misc_rtn_10:
  ldy #$05
  lda ($00),Y
  asl
  asl
  asl
  asl
  tax
  lda eny_spr_status,X
  bpl b_a6e0
  rts
b_a6e0:
  jsr ram_misc_25
  lda #$00
  sta eny_spr_x_pos_fr,X
  sta eny_spr_y_pos_fr,X
  ldy #$00
  lda ($00),Y
  sta eny_spr_y_pos_lo,X
  iny
  lda ($00),Y
  sta eny_spr_y_pos_hi,X
  iny
  lda ($00),Y
  sta eny_spr_x_pos_lo,X
  iny
  lda ($00),Y
  sta eny_spr_x_pos_hi,X
  iny
  lda ($00),Y
  sta eny_spr_type,X
  rts
lvl_misc_rtn_6:
  lda eny_spr_status,X
  bpl b_a719
  txa
  clc
  adc #$10
  tax
  dec $00
  bne lvl_misc_rtn_6
b_a719:
  rts
ram_misc_25:
  lda #$00
  sta eny_exp_timer,X
set_new_enemy:
  lda #$00
  sta eny_exp_timer,X
  lda #$00
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
  sta eny_frozen_timer,X
  sta eny_boss_wpn_timer,X
  sta eny_spr_substatus,X
  lda #$80
  sta eny_spr_status,X      ; activate new enemy
clear_sprite_ram:
  lda #$00
  tax
b_a73f:
  sta eny_spr_status,X
  inx
  bne b_a73f
b_a745:
  sta wpn_status,X
  inx
  bne b_a745
  rts
eny_spr_clear_data:
  lda #$00
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
  inc eny_exp_timer,x
  lda eny_exp_timer,x
  cmp #$20
  bcc b_a7a0
  lda #$00
  sta eny_spr_status,X
  lda stage_boss
  beq b_a7a1
  lda eny_spr_type,X
  beq b_a792
  cmp #$07
  beq b_a792
  cmp #$09
  beq b_a792
  cmp #$0B
  beq b_a792
  cmp #$0E
  beq b_a792
  cmp #$10
  beq b_a792
  cmp #$12
  beq b_a792
  cmp #$14
  beq b_a792
  cmp #$15
  beq b_a7a0
b_a792:
  lsr unram_19
  bne b_a7a0
  lda #$01
  sta state
  lda #$00
  sta flash_counter
  sta unram_27
b_a7a0:
  rts
b_a7a1:
  lda eny_spr_type,X
  cmp #$12
  beq b_a7b7
  cmp #$1B
  bne b_a7a0
  lda #$04
  sta state
  lda #$00
  sta flash_counter
  sta unram_27
  rts
b_a7b7:                   ; this gets loaded at the pre-stage screen
  lda #$80
  sta eny_spr_status,X
  lda #$28
  sta eny_spr_type,X
  lda #$80
  sta eny_spr_x_pos_lo,X
  lda #$00
  sta eny_spr_x_pos_hi,X
  sta eny_spr_y_pos_hi,X
  lda #$58
  sta eny_spr_y_pos_lo,X
  rts
enemy_sprite_rtn:
  ldx #$00
  lda #$0F
  sta $0C
b_a7da:
  stx $0D
  lda eny_spr_status,X
  bpl b_a820
  lda #$A8
  pha
  lda #$20
  pha
  lda eny_spr_status,X
  and #$10
  bne b_a83e
  lda eny_spr_status,X
  and #$40
  beq b_a7f8
  jmp eny_spr_clear_data
b_a7f8:
  lda eny_spr_substatus,X
  and #$10
  bne dec_boss_wpn_timer_9
  lda stage_boss
  asl
  tay
  lda eny_misc_jmp_tbl,Y  ; @$aa6e jump table
  sta $02
  lda eny_misc_jmp_tbl+1,Y
  sta $03
  lda eny_spr_type,X
  bmi b_a82c
  asl
  tay
  lda ($02),Y
  sta $00
  iny
  lda ($02),Y
  sta $01
  jmp ($0000)
b_a820:
  nop
  lda #$0D
  clc
  adc #$10
  tax
  dec $0C
  bpl b_a7da
  rts
b_a82c:
  lda eny_exp_timer,X
  beq b_a835
  dec eny_exp_timer,X
  rts
b_a835:
  lda eny_spr_type,X
  and #$1F
  sta eny_spr_type,X
  rts
b_a83e:
  inc eny_exp_timer,X
  lda eny_exp_timer,X
  cmp #$40
  bcc b_a85e
  lda eny_spr_status,X
  and #$EF
  sta eny_spr_status,X
  lda eny_frozen_timer,X
  sta eny_spr_type,X
  lda #$00
  sta eny_exp_timer,X
  sta eny_frozen_timer,X
b_a85e:
  rts
dec_boss_wpn_timer_9:
  lda eny_boss_wpn_timer,X
  beq b_a868
  dec eny_boss_wpn_timer,X
  rts
b_a868:
  lda eny_spr_substatus,X
  and #$E7
  sta eny_spr_substatus,X
  rts
enemy_misc_rtn_8:
  ldx #$00
  lda #$0F
  sta $04
j_a877:
  lda eny_spr_status,X
  bpl b_a8fa
  lda eny_spr_substatus,X
  and #$10
  bne b_a8fa
  lda eny_x_inc_lo,X
  sta $00
  lda eny_x_inc_hi,X
  sta $01
  jsr enemy_misc_rtn_15
  lda eny_y_inc_lo,X
  sta $00
  lda eny_y_inc_hi,X
  sta $01
  inx
  inx
  inx
  jsr enemy_misc_rtn_15
  dex
  dex
  dex
  lda plr_x_prog_lo
  clc
  adc #$08
  sta $00
  lda plr_x_prog_hi
  adc #$00
  sta $01
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bcc b_a8f5
  lda plr_x_prog_lo
  clc
  adc #$88
  sta $00
  lda plr_x_prog_hi
  adc #$01
  sta $01
  lda eny_spr_x_pos_lo,x
  sec
  sbc $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bcs b_a8f5
  lda eny_spr_y_pos_lo,X
  sec
  sbc plr_y_prog_lo
  sta $00
  lda eny_spr_y_pos_hi,X
  sbc plr_y_prog_hi
  sta $01
  bpl b_a907
  jsr flip_bits_1
  lda $01
  bne b_a8f5
  lda $00
  cmp #$70
  bcc b_a8fa
b_a8f5:
  lda #$00
  sta eny_spr_status,X
b_a8fa:
  txa
  clc
  adc #$10
  tax
  dec $04
  bmi b_a906
  jmp j_a877
b_a906:
  rts
b_a907:
  lda $01
  sec
  sbc #$01
  sta $01
  bcc b_a8fa
  bne b_a8f5
  lda $00
  cmp #$70
  bcc b_a8fa
  jmp b_a8f5
enemy_misc_rtn_15:
  ldy #$00
  lda $01
  bpl b_a922
  dey
b_a922:
  sty $02
  lda eny_spr_x_pos_fr,X
  clc
  adc $00
  sta eny_spr_x_pos_fr,X
  lda eny_spr_x_pos_lo,X
  adc $01
  sta eny_spr_x_pos_lo,X
  lda eny_spr_x_pos_hi,X
  adc $02
  sta eny_spr_x_pos_hi,X
  rts
enemy_status_chk:
  lda #$00
  sta $08
  lda timer_lo_byte
  and #$03
  asl
  asl
  asl
  asl
  tax
  stx $0E
  lda #$0F
  sta $0C
b_a951:
  ldx $0E
  lda eny_spr_status,X
  bpl b_a98a
  lda eny_spr_status,X
  and #$10
  beq b_a966
  lda eny_exp_timer,X
  and #$02
  bne b_a98a
b_a966:
  lda eny_spr_x_pos_lo,X
  sec
  sbc plr_x_prog_lo
  sta $02
  lda eny_spr_x_pos_hi,X
  sbc plr_x_prog_hi
  bne b_a98a
  lda eny_spr_y_pos_lo,X
  sec
  sbc plr_y_prog_lo
  sta $01
  lda eny_spr_y_pos_hi,X
  sbc plr_y_prog_hi
  bne b_a98a
  jsr load_enemies
  jsr wpn_lookup_rtn
b_a98a:
  lda $0E
  clc
  adc #$10
  sta $0E
  lda timer_lo_byte
  and #$01
  beq b_a99e
  lda $0E
  sec
  sbc #$20
  sta $0E
b_a99e:
  dec $0C
  bpl b_a951
  ldx $08
  lda #$f0
  sta some_ram_start,x ; @$0400,x
  rts
load_enemies:
  lda eny_spr_status,X
  and #$40
  beq b_a9c7
  ldy #$40
  lda eny_exp_timer,X
  and #$10
  bne b_a9bc
  ldy #$44
b_a9bc:
  lda eny_exp_timer,X
  and #$08
  beq b_aa02
  iny
  jmp b_aa02
b_a9c7:
  lda eny_spr_status,X
  and #$10
  beq b_a9db
  lda eny_exp_timer,X
  cmp #$20
  bcc b_a9db
  lda eny_frozen_timer,X
  jmp j_a9de
b_a9db:
  lda eny_spr_type,X
j_a9de:
  asl
  tay
  lda eny_spr_status,X
  and #$10
  bne b_aa02
  lda eny_spr_status,X
  and #$08
  beq b_a9f3
  iny
  iny
  jmp b_aa02
b_a9f3:
  lda unram_3
  bmi b_a9fb
  lda state
  bne b_aa02
b_a9fb:
  lda timer_lo_byte
  and #$08
  bne b_aa02
  iny
b_aa02:
  sty $00
  lda eny_spr_substatus,X
  bmi b_aa0f
  lda $00
  ora #$80
  sta $00
b_aa0f:
  rts
enemy_misc_rtn_4:
  inc flash_counter
  lda flash_counter
  cmp #$C0
  bcs b_aa69
  and #$0F
  bne b_aa68
  lda unram_27
  cmp #$07
  bcs b_aa68
  inc unram_27
  lda #$0F
  sta $00
  ldx #$00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_aa68
  jsr ram_misc_25
  lda #$00
  sta eny_spr_x_pos_hi,X
  sta eny_spr_y_pos_hi,X
  lda #$20
  sta eny_spr_type,X
  lda #$C0
  sta eny_spr_status,X
  lda current_level
  and #$FE
  tay
  lda eny_pos_addr_tbl,y  ; @$c95f,y enemy pos addr tbl
  sta $02
  lda eny_pos_addr_tbl+1,Y
  sta $03
  lda unram_27
  asl
  tay
  lda ($02),Y
  sta eny_spr_x_pos_lo,X
  iny
  lda ($02),Y
  sta eny_spr_y_pos_lo,X
  iny
  jsr play_boss_exp_sound
b_aa68:
  rts
b_aa69:
  lda #$40
  sta state
  rts
eny_misc_jmp_tbl:   ; @$AA6E-AA71
  .byte $71,$AA,$F2,$AA
enemy_lookup_tbl:   ; @$aa72-ab27
	.byte $5C,$B2,$79,$B2,$CE,$B2,$23,$B3,$45,$B3,$55,$B3,$6B,$B3,$77,$B3,$F0,$B3,$5C,$B6,$B9,$B6,$22,$B4,$6A,$B6,$78,$B6,$2A,$B7,$64,$B7
	.byte $87,$B7,$AC,$B7,$7B,$BB,$1C,$B8,$D3,$B8,$DF,$B8,$E8,$B8,$0F,$B9,$2A,$B9,$32,$B9,$96,$B9,$A1,$B9,$3F,$AB,$3F,$AB,$1D,$BB,$1D,$BB
	.byte $3F,$AB,$3D,$BA,$3F,$AB,$82,$BA,$A6,$BA,$0F,$BC,$49,$BA,$5D,$BA,$8E,$BB,$3F,$AB,$DA,$BA,$69,$BA,$9B,$BA,$E6,$BA,$0C,$BB,$32,$B9
	.byte $41,$BB,$41,$BB,$41,$BB,$41,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB,$72,$BB
	.byte $3C,$B4,$F0,$B3,$04,$B4,$0E,$B4,$18,$B4,$2D,$B5,$70,$B5,$AB,$B4,$C2,$B5,$77,$B8,$C7,$B8,$3E,$B9,$49,$B9,$5B,$B9,$6E,$B9,$79,$B9
	.byte $D0,$B9,$78,$B6,$E1,$B9,$78,$B6,$FA,$B9,$13,$BA,$2C,$BA,$E5,$BB,$97,$BB,$FC,$BB,$1B,$BC
b_ab28:
  lda eny_y_inc_lo,X    ; @$ab28
  sta $06
  lda eny_y_inc_hi,X
  sta $07
  jsr ram_misc_8
  lda $06
  sta eny_y_inc_lo,X
  lda $07
  sta eny_y_inc_hi,X
  rts
enemy_misc_rtn_18:
  lda eny_x_inc_lo,X
  sta $06
  lda eny_x_inc_hi,X
  sta $07
  jsr ram_misc_8
  lda $06
  sta $00
  lda $07
  sta $01
  lda $00
  sta eny_x_inc_lo,X
  lda $01
  sta eny_x_inc_hi,X
  rts
enemy_misc_rtn_16:
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01
  beq b_ab7e
  lsr $05
  jmp ram_misc_26
ram_misc_8:
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01
  beq b_ab7e
ram_misc_26:
  jsr flip_bits_0
b_ab7e:
  lda $06
  clc
  adc $00
  sta $00
  sta $02
  lda $07
  adc $01
  sta $01
  sta $03
  jsr flip_bits_1
  lda $01
  cmp $05
  bcc b_abac
  lda eny_spr_substatus,X
  and #$01
  beq b_aba3
  lda $03
  bpl b_abac
b_aba3:
  lda eny_spr_substatus,X
  eor #$01
  sta eny_spr_substatus,X
  rts
b_abac:
  lda $02
  sta $06
  lda $03
  sta $07
  rts
enemy_misc_rtn_3:
  lda eny_spr_substatus,X
  sta $08
  jsr b_ab28
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_abf2
  ldy #$00
  lda eny_spr_y_pos_lo,X
  clc
  adc $09
  sta $04
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $05
  jsr scroll_plr_up
  lda $04
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $05
  jsr scroll_plr_up
  lda $04
  sec
  sbc $00
  lda $05
  sbc $01
  bcc b_abe6
  iny
b_abe6:
  sty $00
  lda eny_spr_substatus,X
  and #$FE
  ora $00
  sta eny_spr_substatus,X
b_abf2:
  rts
enemy_misc_rtn_5:
  lda eny_spr_x_pos_lo,X
  sec
  sbc plr_x_prog_lo
  sta $01
  lda eny_spr_x_pos_hi,X
  sbc plr_x_prog_hi
  bne b_ac10
  lda $01
  cmp #$C0
  bcc b_ac1b
  lda #$00
b_ac08:
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
b_ac10:
  lda #$80
  sta eny_x_inc_lo,X
  lda #$FE
  sta eny_x_inc_hi,X
  rts
b_ac1b:
  jsr scroll_plr_up
  lda $0
  sec
  sbc #$0F
  sta $00
  lda $01
  sbc #$00
  sta $01
  lda eny_spr_y_pos_lo,X
  sec
  sbc $00
  lda eny_spr_y_pos_hi,X
  sbc $01
  bcs b_ac08
  lda #$00
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  lda #$80
  sta eny_y_inc_lo,X
  lda #$04
  sta eny_y_inc_hi,X
  rts   
b_ac4b:
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx #$0D
  bcs b_ac66
  lda #$00
  sta eny_y_inc_lo,X
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  lda #$02
  sta eny_y_inc_hi,X
  rts
b_ac66:
  lda #$00
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
  rts
chk_eny_substatus:        ; @$ac6f
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$02
  beq b_ac7d
  jsr flip_bits_0
b_ac7d:
  lda eny_x_inc_lo,X
  clc
  adc $00
  sta $00
  sta $02
  lda eny_x_inc_hi,X
  adc $01
  sta $01
  sta $03
  bpl b_acaf
  jsr flip_bits_1
  lda $01
  cmp $05
  bcc b_aca4
  lda eny_spr_substatus,X
  and #$FD
  sta eny_spr_substatus,X
  rts
b_aca4:
  lda $02
  sta eny_x_inc_lo,X
  lda $03
  sta eny_x_inc_hi,X
  rts
b_acaf:
  lda eny_spr_substatus,X
  ora #$02
  sta eny_spr_substatus,X
  rts
eny_pu_misc:        ; @$ acb8
  lda stage_boss
  asl
  tay
  lda eny_pu_tbl,y   ; @$c898,y
  sta $04
  lda eny_pu_tbl+1,Y
  sta $05
  lda eny_x_inc_hi,X
  asl
  tay
  lda ($04),y
  sta $0
  lda #$00
  sta $01
  lda eny_x_inc_hi,X
  bpl b_acf5
  jsr flip_bits_0
  lda $02
  sec
  sbc #$01
  sta $02
  lda $03
  sbc #$00
  eor #$ff
  sta eny_x_inc_hi,X
  lda $02
  eor #$ff
  sta eny_x_inc_lo,X
  jmp b_acff
b_acf5:
  lda $02
  sta eny_x_inc_lo,X
  lda $03
  sta eny_x_inc_hi,x
b_acff:
  lda eny_spr_x_pos_lo,X
  clc
  adc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  adc $01
  sta $01
  lda eny_spr_y_pos_lo,X
  sta $0E
  lda eny_spr_y_pos_hi,X
  sta $0F
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx $0D
  bcc b_ad32
  lda eny_x_inc_lo,X
  eor #$ff
  sta eny_x_inc_lo,X
  lda  eny_x_inc_hi,X
  eor #$ff
  sta eny_x_inc_hi,X
b_ad32:
  rts
ram_misc_35:
  lda stage_boss
  asl
  tay
  lda eny_pu_tbl,Y
  sta $04
  lda eny_pu_tbl+1,Y
  sta $05
  lda eny_spr_type,X
  asl
  tay
  iny
  lda ($04),Y
  sta $00
  lda #$00
  sta $01
  lda eny_y_inc_hi,X
  bpl b_ad71
  jsr flip_bits_0
  lda $02
  sec
  sbc #$01
  sta $02
  lda $03
  sbc #$00
  eor #$ff
  sta eny_y_inc_hi,X
  lda $02
  eor #$ff
  sta eny_y_inc_lo,X
  jmp j_ad7b
b_ad71:
  lda $02
  sta eny_y_inc_lo,X
  lda $03
  sta eny_y_inc_hi,X
j_ad7b:
  lda eny_spr_y_pos_lo,X
  clc
  adc $00
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc $01
  sta $0F
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx $0D
  bcc b_adae
  lda eny_y_inc_lo,X
  eor #$ff
  sta eny_y_inc_lo,X
  lda eny_y_inc_hi,X
  eor #$ff
  sta eny_y_inc_hi,X
b_adae:
  rts
dec_boss_wpn_timer:
  lda eny_boss_wpn_timer,X
  beq b_adb8
  dec eny_boss_wpn_timer,X
b_adb7:
  rts
b_adb8:
  jsr scroll_plr_up
  lda $00
  sec
  sbc eny_spr_y_pos_lo,X
  sta $00
  lda $01
  sbc eny_spr_y_pos_hi,X
  bne b_adb7
  lda $00
  cmp #$04
  bcs b_adb7
  jsr ram_misc_27
  bcc b_adb7
  lda unram_10
  sta eny_boss_wpn_timer,X
  lda #$30
  sta bos_timer,Y
  lda #$00
  sta $00
  lda #$04
  sta $01
  lda eny_spr_substatus,X
  bmi b_adef
  jsr flip_bits_0
b_adef:
  lda $00
  sta bos_x_inc_lo,Y
  lda $01
  sta bos_x_inc_hi,Y
  lda #$00
  sta bos_y_inc_lo,Y
  sta bos_y_inc_hi,Y
  rts
dec_boss_wpn_timer_2:
  lda eny_boss_wpn_timer,x
  beq b_ae0b
  dec eny_boss_wpn_timer,x
b_ae0a:
  rts
b_ae0b:
  jsr ram_misc_27
  bcc b_ae0a
  sty $0B
  jsr ram_misc_28
  ldy $0B
  lda $0A
  and #$f0
  beq b_ae43
  lda #$20
  bit $0A
  bmi b_ae31
  bvs b_ae37
  bne b_ae3d
  lda $09
  bpl b_ae43
b_ae2b:
  lda #$00
  sta bos_status,Y
  rts
b_ae31:
  lda $08
  bpl b_ae43
  bmi b_ae2b
b_ae37:
  lda $08
  bmi b_ae43
  bpl b_ae2b
b_ae3d:
  lda $09 
  bmi b_ae43
  bpl b_ae2b
b_ae43:
  lda $04
  sta bos_x_inc_lo,Y
  lda $05
  sta bos_x_inc_hi,Y
  lda $00
  sta bos_y_inc_lo,Y
  lda $01
  sta bos_y_inc_hi,Y
  lda unram_10
  sta eny_boss_wpn_timer,X
  lda #$30
  sta bos_timer,Y
  rts
ram_misc_28:
  jsr ram_misc_29
  lda $00
  sec
  sbc eny_spr_x_pos_lo,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_hi,X
  sta $01
  sta $08
  jsr flip_bits_1
  lda $00
  sta $06
  lda $02
  sec
  sbc eny_spr_y_pos_lo,X
  sta $00
  lda $03
  sbc eny_spr_y_pos_hi ,X
  sta $01
  sta $09
  jsr flip_bits_1
  lda $06
  sec
  sbc $00
  bcs b_aeb8
  lda $00
  sta $02
  lda $06
  sta $01
  lda #$00
  sta $00
  sta $03
  lsr $03
  ror $02
  jsr ram_misc_30
  lda #$00
  sta $02
  lda #$02
  sta $03
  jmp j_aedd
b_aeb8:
  lda $06
  sta $02
  lda $00
  sta $01
  lda #$00
  sta $00
  sta $03
  lsr $03
  ror $02
  jsr ram_misc_30
  lda $00
  sta $02
  lda $01
  sta $03
  lda #$00
  sta $00
  lda #$02
  sta $01
j_aedd:
  lda $08
  bpl b_aee4
  jsr flip_bits_0
b_aee4:
  lda $00
  sta $04
  lda $01
  sta $05
  lda $02
  sta $00
  lda $03
  sta $01
  lda $09
  bpl b_aefb
  jsr flip_bits_0
b_aefb:
  rts
dec_boss_wpn_timer_3:
  lda eny_boss_wpn_timer,X
  beq b_af05
  dec eny_boss_wpn_timer,X
  rts
b_af05:
  lda #$00
  sta $04
  lda #$02
  sta $05
  jsr ram_misc_31
  rts
dec_boss_wpn_timer_4:
  lda eny_boss_wpn_timer,X
  beq b_af1a
  dec eny_boss_wpn_timer,X
  rts
b_af1a:
  lda #$00
  sta $04
  lda #$02
  sta $05
  jsr ram_misc_32
  rts
ram_misc_32:
  lda $04
  sta $00
  lda $05
  sta $01
  jsr flip_bits_0
  lda $00
  sta $04
  lda $01
  sta $05
ram_misc_31:
  jsr ram_misc_27
  bcc b_af5a
  lda #$00
  sta bos_x_inc_lo,Y
  sta bos_x_inc_hi,Y
  lda $04
  sta bos_y_inc_lo,Y
  lda $05
  sta bos_y_inc_hi,Y
  lda #$40
  sta bos_timer,Y
  lda unram_10
  sta eny_boss_wpn_timer,X
b_af5a:
  rts
dec_boss_wpn_timer_5:     ; ******
  lda eny_boss_wpn_timer,X
  beq b_af64
  dec eny_boss_wpn_timer,X
  rts
b_af64:
  jsr scroll_plr_rt
  lda $00
  sec
  sbc eny_spr_x_pos_lo,X
  lda $01
  sbc eny_spr_x_pos_hi,X
  bcs b_af80
  jmp j_af94
dec_boss_wpn_timer_6:     ; ******
  lda eny_boss_wpn_timer,X
  beq b_af80
  dec eny_boss_wpn_timer,X
  rts
b_af80:
  lda #$00
  sta $04
  lda #$02
  sta $05
  jmp j_af9c
dec_boss_wpn_timer_7:     ; ******
  lda eny_boss_wpn_timer,X
  beq j_af94
  dec eny_boss_wpn_timer,X
  rts
j_af94:
  lda #$00
  sta $04
  lda #$fe
  sta $05
j_af9c:               ; this section of the subroutine is repeated above ****
  jsr ram_misc_27
  bcc b_afbd
  lda #$00
  sta bos_y_inc_lo,Y
  sta bos_y_inc_hi,Y
  lda $04
  sta bos_x_inc_lo,Y
  lda $05
  sta bos_x_inc_hi,Y
  lda #$40
  sta bos_timer,Y
  lda unram_10
  sta eny_boss_wpn_timer,X
b_afbd:
  rts
dec_boss_wpn_timer_8:
  lda eny_boss_wpn_timer,X
  beq b_afc7
  dec eny_boss_wpn_timer,X
  rts
b_afc7:
  lda #$03
  sta $0B
b_afcb:
  jsr ram_misc_27
  bcc b_b00f
  lda #$00
  sta $00
  lda #$02
  sta $01
  lda $0B
  and #$01
  bne b_afe1
  jsr flip_bits_0
b_afe1:
  lda $00
  sta bos_x_inc_lo,Y
  lda $01
  sta bos_x_inc_hi,Y
  lda #$00
  sta $00
  lda #$02
  sta $01
  lda $0B
  and #$02
  bne b_affc
  jsr flip_bits_0
b_affc:
  lda $00
  sta bos_y_inc_lo,Y
  lda $01
  sta bos_y_inc_hi,Y
  lda #$20
  sta bos_timer,Y
  dec $0B
  bpl b_afcb
b_b00f:
  lda unram_10
  sta eny_boss_wpn_timer,X
  rts
ram_misc_34:
  ldy #$00
b_b017:
  lda bos_status,Y
  bpl b_b027
  tya
  clc
  adc #$10
  tay
  cpy #$C0
  bcc b_b017
  ldy #$ff
b_b027:
  rts
ram_misc_27:
  jsr ram_misc_33
  lda eny_spr_status,X
  and #$20
  bne b_b0a8
  lda eny_spr_x_pos_lo,X
  sec
  sbc plr_x_prog_lo
  lda eny_spr_x_pos_hi,X
  sbc plr_x_prog_hi
  bne b_b0a8
  lda eny_spr_y_pos_lo,X
  sec
  sbc plr_y_prog_lo
  lda eny_spr_y_pos_hi,X
  sbc plr_y_prog_hi
  bne b_b0a8
  lda stage_boss
  asl
  tay
  lda mid_tbl_b,y    ; @$b1a2,y
  sta $00
  lda mid_tbl_b+1,Y
  sta $01
  lda eny_spr_type,X
  asl
  tay
  lda ($00),Y
  sta $03
  iny
  lda ($00),y
  sta $02
  lda $03
  sta $00
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  bmi b_b078
  jsr flip_bits_0
b_b078:
  jsr ram_misc_34
  cpy #$ff
  beq b_b0a8
  lda eny_spr_x_pos_lo,X
  clc
  adc $01
  sta bos_x_pos_hi,Y
  lda eny_spr_x_pos_hi,X
  adc $01
  sta bos_x_pos_ex,Y
  lda eny_spr_y_pos_lo,X
  clc
  adc $02
  sta bos_y_pos_hi,Y
  lda $02
  bpl b_b0aa
  lda eny_spr_y_pos_hi,X
  adc #$ff
  sta bos_y_pos_ex,Y
  jmp b_b0b2
b_b0a8:
  clc
  rts
b_b0aa:
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta bos_y_pos_ex,Y
b_b0b2:
  lda #$80
  sta bos_status,Y
  lda #$04
  sta bos_sprite_type,Y
  sec
  rts
scroll_plr_rt:
  lda plr_x_prog_lo
  clc
  adc plr_x_pos_hi
  sta $00
  lda plr_x_prog_hi
  adc #$00
  sta $01
  rts
scroll_plr_up:
  lda plr_y_prog_lo
  clc
  adc plr_y_pos_hi
  sta $00
  lda plr_y_prog_hi
  adc #$00
  sta $01
  rts
ram_misc_29:
  jsr scroll_plr_up
  lda $00
  sta $02
  lda $01
  sta $03
  jsr scroll_plr_rt
  rts
ram_misc_33:
  lda current_level
  sta level_backup
  lda unram_22
  sec
  sbc level_backup
  bcc b_b0ff
  cmp #$10
  bcc b_b0ff
  cmp #$80
  bcs b_b104
  sta unram_10
  rts
b_b0ff:
  lda #$10
  sta unram_10
  rts
b_b104:
  sta unram_10
  lda eny_spr_status,X
  ora #$20
  sta eny_spr_status,X
  rts
enemy_misc_rtn_19:
  lda unram_20
  and #$03
  asl
  asl
  asl
  asl
  asl
  clc
  adc #$80
  sta $00
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01
  bne b_b14e
  lda y_scroll_lo
  sec
  sbc $00
  sta y_scroll_lo
  lda y_scroll_hi
  sbc $01
  cmp #$f0
  bcc b_b139
  sbc #$10
b_b139:
  sta y_scroll_hi
  bpl b_b143
  lda y_scroll_hi
  cmp #$E0
  bcc b_b173
b_b143:
  lda $00
  sta eny_y_inc_lo,X
  lda $01
  sta eny_y_inc_hi,X
  rts
b_b14e:
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $01
  cmp #$f0
  bcc b_b15f
  sbc #$f0
b_b15f:
  sta y_scroll_hi
  bmi b_b167
  cmp #$10
  bcs b_b16d
b_b167:
  jsr flip_bits_0
  jmp b_b143
b_b16d:
  jsr b_b143
  jmp b_b176
b_b173:
  jsr b_b167
b_b176:
  lda eny_spr_substatus,X
  eor #$01
  sta eny_spr_substatus,X
enemy_misc_rtn_12:
  lda current_level
  cmp #$0E
  beq b_b18a
  cmp #$12
  beq b_b18a
  rts
b_b18a:
  lda timer_lo_byte
  and #$08
  bne b_b199
  lda #$0F
  sta stage_boss
  lda #$00
  sta unram_11
  rts
b_b199:
  lda #$00
  sta stage_boss
  lda #$0F
  sta unram_11
  rts
mid_tbl_b:          ; @$B1A2-B1A5
  .word mid_tbl_b_2 ; @$B1A6
  .word mid_tbl_b_3 ; @$B226
mid_tbl_b_2:        ; @$B1A6-B225
  .byte $0C,$03,$0C,$F9,$00,$00,$00,$04,$00,$00,$00,$00,$0C,$00,$00,$F7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$03,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$06,$F8,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$0C,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$08,$04,$08,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
mid_tbl_b_3:        ; @$B226-B25B
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  lda #$08  ; @$B25C, give enemy a powerup?
  sta $00
  lda #$02
  sta $05
  jsr b_ab28
  lda #80
  sta eny_x_inc_lo,X
  lda #$FE
  sta eny_x_inc_hi,X
  lda #$30
  sta unram_22
  jsr dec_boss_wpn_timer
  rts
; @$B279
  lda #$40
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc 
  adc #$02
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx $0D
  bcc b_b2b1
  lda #$00
  sta eny_y_inc_lo,X
  lda #$fe 
  sta eny_y_inc_hi,X
  rts
b_b2b1:
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$04
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr b_ac4b
  rts
  lda #$00
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$0A
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0f
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx $0d
  bcc b_b306
  lda #$00
  sta eny_y_inc_lo,X
  lda #$fe
  sta eny_y_inc_hi,X
  rts
b_b306:
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$0C
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr b_ac4b
  rts
; @$B323
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr chk_eny_substatus
  lda #$18
  sta $00
  lda #$03
  sta $05
  jsr b_ab28
  lda #$50
  sta unram_22
  lda #$10
  sta $0A
  jsr dec_boss_wpn_timer_2  ; same as the first ****
  rts
  lda #$40
  sta $00
  lda #$04
  sta $05
  lda #$18
  sta $09
  jsr enemy_misc_rtn_3
  rts
  lda #$08
  sta $00
  lda #$02
  sta $05
  jsr b_ab28
  lda #$00
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X     ; give enemy powerup?? ***
  rts
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_5
; @$B377
  lda eny_spr_x_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr b_ac4b
  bcc b_b3ef
  lda #$04
  sta $00
  lda #$00
  sta $01
  lda eny_x_inc_hi,X
  bpl b_b3a5
  jsr flip_bits_0
b_b3a5:
  lda eny_spr_x_pos_lo,X
  clc
  adc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  adc $01
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx #$0d
  bcs b_b3dd
  lda eny_x_inc_lo,X
  eor #$ff
  sta eny_x_inc_lo,X
  lda eny_x_inc_hi,X
  eor #$ff
  sta eny_x_inc_hi,X
b_b3dd:
  lda #$00
  sta $02
  lda #$02
  sta $03
  jsr eny_pu_misc   ; @$ACB8
  lda #$40
  sta unram_22
  jsr dec_boss_wpn_timer_4
b_b3ef:
  rts
  lda #$04
  sta $00
  lda #$01
  sta $05
b_b3f8:
  jsr b_ab28
j_b3fb:
  lda eny_spr_substatus,X
  ora #$08
  sta eny_spr_substatus,X
  rts
  lda #$04
  sta $00
  lda #$01
  sta $05
  bne b_b3f8
  lda #$0C
  sta $00
  lda #$01
  sta $05
  bne b_b3f8
  lda #$08
  sta $00
  lda #$02
  sta $05
  bne b_b3f8
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_misc_rtn_13
  lda #$40
  sta  eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  rts
  jsr enemy_misc_rtn_6
dec_boss_wpn_timer_10:
  lda eny_boss_wpn_timer,x
  beq b_b448
  dec eny_boss_wpn_timer,x
  rts
b_b448:
  lda #$0F
  sta $00
  ldx #$00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_b4aa
  jsr ram_misc_25
  stx $00
  ldx $0D
  ldy $00
  lda eny_spr_x_pos_lo,X
  sta eny_spr_x_pos_lo,Y
  lda eny_spr_x_pos_hi,X
  sta eny_spr_x_pos_hi,Y
  lda eny_spr_y_pos_lo,X
  sta eny_spr_y_pos_lo,Y
  lda eny_spr_y_pos_hi,X
  sta eny_spr_y_pos_hi,Y
  lda #$05
  sta $00
  jsr ram_misc_2
  lda unram_97
  and #$01
  bne b_b487
  lda #$06
  sta $00
b_b487:
  lda $00
  sta eny_spr_type,Y
  jsr ram_misc_2
  lda unram_97
  sta eny_y_inc_lo,Y
  lda #$C0
  sta unram_22
  lda unram_19
  and #$02
  beq b_b4a2
  lda #$f0
  sta unram_22
b_b4a2:
  jsr ram_misc_33
  lda unram_10
  sta eny_boss_wpn_timer,X
b_b4aa:
  rts
  lda #$80
  sta unram_22
  lda #$08
  sta $0B
b_b4b3:
  lda #$00
  sta $0E
  lda #$10
  sta $0F
j_b4bb:
  jsr enemy_misc_rtn_6
dec_boss_wpn_timer_11:
  lda eny_boss_wpn_timer,X
  beq b_b4c7
  dec eny_boss_wpn_timer,X
  rts
b_b4c7:
  lda #$0F
  sta $00
  ldx #$00
  jsr lvl_misc_rtn_6
  lda $00
  beq b_b50f
  jsr play_sound_j
  jsr ram_misc_25
  stx $00
  ldx $0d
  ldy $00
  lda eny_spr_x_pos_lo,X
  sec
  sbc $0E
  sta eny_spr_x_pos_lo,Y
  lda eny_spr_x_pos_hi,X
  sbc #$00
  sta eny_spr_x_pos_hi,Y
  lda eny_spr_y_pos_lo,X
  clc
  adc #$0F
  sta eny_spr_y_pos_lo,Y
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta eny_spr_y_pos_hi,Y
  lda $0B
  sta eny_spr_type,Y
  jsr ram_misc_33
  lda unram_10
  sta eny_boss_wpn_timer,X
b_b50f:
  rts
 enemy_misc_rtn_6:
  lda eny_spr_substatus,X
  ora #$80
  sta eny_spr_substatus,X
  ldy #$38
  lda timer_lo_byte
  and #$10
  bne b_b52a
  ldy #$26
  lda timer_lo_byte
  and #$30
  bne b_b52a
  ldy #$21
b_b52a:
  sty unram_12
  rts
  lda eny_spr_substatus,X
  and #$04
  bne b_b560
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  jsr scroll_plr_rt
  lda #$C0
  sta eny_x_inc_lo,X
  lda #$00
  sta eny_x_inc_hi,X
  lda eny_spr_x_pos_lo,X
  sbc $01
  bcc b_b560
  lda #$40
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
b_b560:
  lda #$20
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_misc_rtn_13
  rts
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda eny_y_inc_lo,X
  sta $06
  lda eny_y_inc_hi,X
  sta $07
  lda eny_spr_substatus,X
  sta $08
  jsr enemy_misc_rtn_16
  lda $06
  sta eny_y_inc_lo,X
  lda $07
  sta eny_y_inc_hi,X
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_b5c1
  jsr scroll_plr_rt
  lda #$80
  sta eny_x_inc_lo,X
  lda #$00
  sta eny_x_inc_hi,X
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bcc b_b5c1
  lda #$80
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
b_b5c1:
  rts
  lda #$C0
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda eny_spr_substatus,X
  and #$04
  beq b_b5e4
  lda #$00
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,x
  sta eny_x_inc_lo,X
  lda #$fe
  sta eny_x_inc_hi,X
  rts
b_b5e4:
  lda #$0C
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_17
  jsr scroll_plr_rt
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bne b_b627
  lda $00
  cmp #$50
  bcs b_b627
  jsr scroll_plr_up
  lda eny_spr_y_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_y_pos_hi,X
  sbc $01
  bne b_b627
  lda $00
  cmp #$04
  bcs b_b627
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b627:
  lda #$C0
  sta unram_22
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
enemy_misc_rtn_17:
  lda eny_spr_substatus,X
  sta $08
  jsr b_ab28
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_b65b
  ldy #$00
  lda eny_spr_y_pos_lo,X
  sec
  sbc #$60
  bcc b_b64f
  iny
b_b64f:
  sty $00
  lda eny_spr_substatus,X
  and #$FE
  ora $00
  sta eny_spr_substatus,X
b_b65b:
  rts
  lda #$06
  sta $00
  lda #$01
  sta $05
  jsr enemy_misc_rtn_18
  jmp j_b3fb
  lda #$80
  sta $02
  lda #$00
  sta $03
  jsr eny_pu_misc
  jmp j_b3fb
  lda eny_spr_substatus,X
  and #$04
  bne b_b6b8
  lda #$00
  sta eny_x_inc_lo,X
  lda #$FE
  sta eny_x_inc_hi,X
  jsr scroll_plr_rt
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bne b_b6b8
j_b699:
  jsr ram_misc_28
  lda $04
  sta eny_x_inc_lo,X
  lda $05
  sta eny_x_inc_hi,X
  lda $00
  sta eny_y_inc_lo,X
  lda $01
  sta eny_y_inc_hi,X
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b6b8:
  rts
  lda eny_spr_substatus,X
  and #$04
  bne b_b714
  lda #$00
  sta eny_x_inc_lo,X
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  lda #$02
  sta eny_y_inc_hi,X
  jsr scroll_plr_up
  lda $00
  sec
  sbc#$10
  sta $00
  lda $01
  sbc #$00
  sta $01
  lda eny_spr_y_pos_lo,X
  sec
  sbc $00
  lda eny_spr_y_pos_hi,X
  sbc $01
  bcc b_b713
  lda eny_spr_y_pos_lo,X
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_hi,X
  sta $0E
  lda eny_spr_y_pos_hi,X
  sta $0F
  jsr lvl_misc_rtn_1a
  jsr lvl_misc_rtn_2
  ldx $0D
  bcs b_b713
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b713:
  rts
b_b714:
  lda #$80
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr ram_misc_35
  rts
  lda #$00
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda #$00
  sta $00
  sta $01
  lda eny_spr_y_pos_lo,X
  cmp #$28
  beq b_b74e
  lda #$20
  sta $00
  lda #$00
  sta $01
  bcc b_b74e
  jsr flip_bits_0
b_b74e:
  lda $00
  sta eny_y_inc_lo,X
  lda $01
  sta eny_y_inc_hi,X
  lda #$38
  sta unram_22
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
  jsr scroll_plr_rt
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_b786
  lda $00
  cmp #$40
  bcs b_b786
  inc eny_spr_type,X      ; increment enemy sprite type ***
b_b786:
  rts
  lda #$80
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda #$20
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_misc_rtn_13
  lda #$A0
  sta unram_22
  lda #$00
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
  lda eny_spr_substatus,x
  and #$04
  bne b_b7db
  jsr scroll_plr_rt
  lda $00
  sec
  sbc eny_spr_x_pos_lo,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_hi,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_b7da
  lda $00
  cmp #$50
  bcs b_b7da
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b7da:
  rts
b_b7db:
  lda eny_spr_substatus,X
  and #$01
  beq b_b7fe
  lda eny_boss_wpn_timer,X
  beq b_b7f5
  dec eny_boss_wpn_timer,X
  lda #$00
  sta eny_y_inc_lo,X
  lda #$01
  sta eny_y_inc_hi,X
  rts
b_b7f5:
  lda eny_spr_substatus,X
  and #$fe
  sta eny_spr_substatus,X
  rts
b_b7fe:
  lda eny_boss_wpn_timer,X
  cmp #$1A
  bcs b_b813
  inc eny_boss_wpn_timer,X
  lda #$00
  sta eny_y_inc_lo,X
  lda #$ff
  sta eny_y_inc_hi,X
  rts
b_b813:
  lda eny_spr_substatus,X
  ora #$01
  sta eny_spr_substatus,X
  rts
  lda eny_spr_substatus,X
  and #$04
  bne b_b84e
  jsr scroll_plr_rt
  lda $00
  sec
  sbc eny_spr_x_pos_lo,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_hi,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_b84d
  lda $00
  cmp #$48
  bcs b_b84d
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  jsr play_sound_k
b_b84d:
  rts
b_b84e:
  lda eny_exp_timer,X
  cmp #$10
  bcs b_b863
  lda #$00
  sta eny_y_inc_lo,X
  lda #$fe
  sta eny_y_inc_hi,X
  inc eny_exp_timer,X
  rts
b_b863:
  lda #$00
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
  lda #$B0
  sta unram_22
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
  jsr enemy_misc_rtn_6
  inc eny_exp_timer,X
  jsr enemy_misc_rtn_19
  lda eny_boss_wpn_timer,X
  beq b_b889
  dec eny_boss_wpn_timer,X
  rts
b_b889:
  lda #$50
  sta unram_22
  jsr ram_misc_27
  bcc b_b8c6
  lda #$00
  sta bos_x_inc_lo,Y
  lda  #$fe
  sta bos_x_inc_hi,Y
  lda eny_exp_timer,X
  sec
  sbc #$80
  sta $00
  lda #$00
  sbc #$00
  sta $01
  asl $00
  rol $01
  asl $00
  rol $01
  lda $0
  sta bos_y_inc_lo,Y
  lda $01
  sta bos_y_inc_hi,Y
  lda #$40
  sta bos_timer,Y
  lda unram_10
  sta eny_boss_wpn_timer,X
b_b8c6:
  rts
  lda #$40
  sta unram_22
  lda #$00
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
  lda #$10
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_18
  rts
  lda eny_spr_substatus,X
  ora #$08
  sta eny_spr_substatus,X
  rts
  lda #$00
  sta eny_x_inc_lo,X
  lda #$fe
  sta eny_x_inc_hi,X
  lda eny_spr_x_pos_lo,x
  sta $00
  lda eny_spr_x_pos_hi,X
  sta $01
  lda eny_spr_y_pos_lo,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_hi,X
  adc #$00
  sta $0F
  jsr b_ac4b
  rts
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr chk_eny_substatus
  lda #$20
  sta $00
  lda #$02
  sta $05
  lda #$0C
  sta $09
  jsr enemy_misc_rtn_13
  rts
  lda #$60
  sta unram_22
  jsr dec_boss_wpn_timer_5
  rts
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr ram_misc_35
  rts
  lda #$80
  sta unram_22
  lda #$0C
  sta $0B
  jmp b_b4b3
  lda eny_spr_substatus,X
  and #$04
  bne b_b953
  jmp j_b699
b_b953:
  lda #$B0
  sta unram_22
  jsr dec_boss_wpn_timer_3
  rts
  lda #$05
  sta $00
  lda #$01
  sta $05
  jsr b_ab28
  lda #$80
  sta unram_22
  jsr dec_boss_wpn_timer_8
  rts
  lda #$98
  sta unram_22
  lda #$0F
  sta $0B
  jmp b_b4b3
  lda #$00
  sta eny_x_inc_lo,X
  lda #$FF
  sta eny_x_inc_hi,X
  lda #$0C
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_17
  lda #$90
  sta unram_22
  jsr dec_boss_wpn_timer
  rts
  lda #$00
  sta eny_x_inc_lo,X
  lda #$fe
  sta eny_x_inc_hi,X
  rts
  lda #$00
  sta eny_x_inc_lo,X
  lda #$03
  sta eny_x_inc_hi,X
  lda #$80
  sta eny_spr_substatus,X
  lda plr_x_prog_lo
  clc
  adc #$40
  sta $00
  lda plr_x_prog_hi
  adc #$01
  sta $01
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  bcc b_b9cf
  lda #$00
  sta eny_spr_status,X
b_b9cf:
  rts
  inc eny_exp_timer,X
  jsr enemy_misc_rtn_19
  lda #$78
  sta unram_22
  lda #$11
  sta $0B
  jmp b_b4b3
  inc eny_exp_timer,X
  jsr enemy_misc_rtn_19
  lda #$80
  sta unram_22
  lda #$19
  sta $0F
  lda #$12
  sta $0E
  jmp j_b4bb
  inc eny_exp_timer,X
  jsr enemy_misc_rtn_19
  lda #$50
  sta unram_22
  lda #$13
  sta $0B
  lda #$0C
  sta $0F
  lda #$12
  sta $0E
  jmp j_b4bb
  inc eny_exp_timer,X
  jsr enemy_misc_rtn_19
  lda #$80
  sta unram_22
  lda #$13
  sta $0B
  lda #$18
  sta $0F
  lda #$27
  sta $0E
  jmp j_b4bb
  lda #$B8
  sta unram_22
  lda #$05
  sta $0B
  lda #$00
  sta $0E
  sta $0f
  jmp dec_boss_wpn_timer_11
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr eny_pu_misc
  rts
  lda #$60
  sta unram_22
  lda #$80
  sta $0A
  jsr dec_boss_wpn_timer_2
  lda eny_spr_substatus,X
  ora #$80
  sta eny_spr_substatus,X
  rts
  lda #$60
  sta unram_22
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
  lda eny_spr_substatus,X
  and #$20
  sta eny_spr_substatus,X
  lda #$60
  sta unram_22
  lda #$2C
  sta $0B
  lda #$00
  sta $0E
  sta $0F
  jmp dec_boss_wpn_timer_11
  lda eny_spr_substatus,X
  and #$20
  sta eny_spr_substatus,X
  lda #$80
  sta unram_22
  lda #$24
  sta $0B
  lda #$00
  sta $0E
  sta $0F
  jmp dec_boss_wpn_timer_11
  lda #$00
  sta eny_y_inc_lo,X
  lda #$fe
  sta eny_x_inc_hi,X
  rts
  lda eny_spr_substatus,X
  and #$04
  bne b_bac0
  lda #$80
  sta eny_y_inc_lo,X
  lda #$fe
  sta eny_x_inc_hi,X
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  rts
b_bac0:
  lda #$00
  sta eny_x_inc_lo,X
  lda #$ff
  sta eny_x_inc_hi,X
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_misc_rtn_13
  rts
  lda #$60
  sta unram_22
  lda #$10
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
hidden_boss_rtn:      ; this part of the code wasnt used up to BB1C
  lda #$00
  sta $02
  lda #$02
  sta $03
  jsr eny_pu_misc
  lda eny_x_inc_hi,X
  and #$80
  sta eny_spr_substatus,X
  lda #$38
  sta unram_22
  lda #$2E
  sta $0B
  lda #$00
  sta $0E
  lda #$10
  sta $0F
  jmp dec_boss_wpn_timer_11
  lda #$00
  sta eny_x_inc_lo,X
  sta eny_x_inc_hi,X
  sta eny_y_inc_lo,X
  lda #$03
  sta eny_y_inc_hi,X
  rts                 ; hidden boss code end
  lda eny_spr_substatus,X
  and #$04
  bne b_bb32
  lda #$C0
  sta eny_exp_timer,X
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  rts
b_bb32:
  lda eny_exp_timer,X
  beq b_bb3b
  dec eny_exp_timer,X
  rts
b_bb3b:
  lda #$00
  sta eny_spr_status,X
  rts
  lda #$C0
  sta $00
  lda #$01
  sta $01
  lda unram_20
  cmp #$03
  bcc b_bb51
  lda #$FF
b_bb51:
  and #$03
  asl
  asl
  asl
  asl
  asl
  asl
  clc
  adc $00
  sta $00
  lda #$00
  adc $01
  sta $01
  jsr flip_bits_0
  lda $00
  sta eny_x_inc_lo,X
  lda $01
  sta eny_x_inc_hi,X
  rts
  lda eny_spr_substatus,X
  ora #$20
  sta eny_spr_substatus,X
  rts
  lda #$00
  sta $02
  lda #$02
  sta $03
  jsr eny_pu_misc
  lda #$40
  sta unram_22
  jsr dec_boss_wpn_timer_3
  rts
  lda eny_spr_substatus,X
  ora #$20
  sta eny_spr_substatus,X
  rts
  lda eny_spr_substatus,X
  ora #$80
  sta eny_spr_substatus,X
  and #$04
  bne b_bbe0
  lda #$01
  sta state
  jsr scroll_plr_rt
  lda $00
  sec
  sbc eny_spr_x_pos_lo,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_hi,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_bbdf
  lda $00
  cmp #$30
  bcs b_bbdf
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  lda #$00
  sta state
  lda eny_spr_status,X
  ora #$10
  sta eny_spr_status,X
  lda #$17
  sta eny_frozen_timer,X
b_bbdf:
  rts
b_bbe0:
  lda $00
  sta state
  rts
  lda #$01
  sta state
  jsr scroll_plr_rt
  lda $00
  clc
  adc #$30
  sta eny_spr_x_pos_lo,X
  lda $01
  adc #$00
  sta eny_spr_x_pos_hi,X
  rts
  lda #$80
  sta eny_x_inc_lo,X
  lda #$FD
  sta eny_x_inc_hi,X
  lda #$00
  sta eny_y_inc_lo,X
  sta eny_y_inc_hi,X
  rts
  lda #$80
  sta $02
  lda #$00
  sta $03
  jsr ram_misc_35
  rts
  lda current_level
  and #$02
  bne b_bc32
  lda eny_spr_y_pos_lo,X
  cmp #$04
  bcs b_bc31
  lda #$00
  sta eny_spr_status,X
  lda #$ff
  sta state
b_bc31:
  rts
b_bc32:
  lda eny_spr_substatus,X
  and #$04
  bne b_bc58
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  jsr ram_misc_28
  lda $04
  sta eny_x_inc_lo,X
  lda $05
  sta eny_x_inc_hi,X
  lda $00
  sta eny_y_inc_lo,X
  lda $01
  sta eny_y_inc_hi,X
b_bc58:
  lda eny_spr_y_pos_lo,X
  cmp plr_y_pos_hi
  bcc b_bc31
  lda #$00
  sta eny_spr_status,X
  lda #$0F
  sta state
  lda #$00
  sta flash_counter
  rts
lvl_addr_tbl_1: ; @$BC6D-BFDF
	.byte $CF,$BC,$1A,$BD,$24,$BD,$83,$BD,$EB,$BE,$92,$BD,$AB,$BD,$00,$BE,$19,$BE,$82,$BE,$EB,$BE,$9B,$BE,$B4,$BE,$F0,$BE,$EB,$BE,$09,$BF,$22,$BF,$8B,$BF,$EB,$BE,$A4,$BF,$BD,$BF,$A7,$BC,$BD,$BF,$BB,$BC,$C7,$BF,$EB,$BE,$EB,$BE,$EB,$BE,$D6,$BF
	.byte $80,$00,$38,$00,$1A,$80,$00,$38,$00,$1A,$80,$00,$38,$00,$1A,$FF,$FF,$FF,$FF,$00,$30,$00,$00,$00,$1A,$80,$00,$00,$00,$1A,$D0,$00
	.byte $00,$00,$1A,$FF,$FF,$FF,$FF,$00,$80,$02,$80,$00,$04,$80,$03,$80,$00,$30,$60,$04,$80,$00,$04,$80,$04,$80,$00,$30,$00,$05,$70,$00
	.byte $29,$80,$05,$80,$00,$30,$60,$06,$80,$00,$04,$80,$06,$80,$00,$30,$80,$07,$80,$00,$33,$80,$08,$80,$00,$04,$00,$09,$80,$00,$01,$00
	.byte $0A,$70,$00,$29,$80,$0A,$80,$00,$04,$00,$0B,$70,$00,$29,$FF,$FF,$FF,$FF,$00,$90,$00,$50,$00,$00,$FF,$FF,$FF,$FF,$00,$D0,$00,$A0
	.byte $00,$07,$D8,$01,$6F,$00,$18,$60,$02,$30,$00,$29,$80,$02,$78,$00,$07,$80,$02,$30,$00,$30,$68,$03,$A7,$00,$18,$80,$03,$68,$00,$30
	.byte $17,$04,$38,$00,$29,$80,$05,$78,$00,$30,$40,$06,$B8,$00,$07,$68,$06,$77,$00,$18,$A0,$06,$50,$00,$33,$A8,$06,$28,$00,$29,$28,$07
	.byte $28,$00,$29,$00,$09,$60,$00,$1A,$00,$0A,$30,$00,$30,$08,$0A,$78,$00,$07,$48,$0B,$B7,$00,$18,$FF,$FF,$FF,$FF,$00,$90,$00,$50,$00
	.byte $00,$D0,$00,$70,$00,$00,$FF,$FF,$FF,$FF,$00,$18,$00,$90,$00,$01,$50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$C8,$00,$58,$00,$0E,$FF
	.byte $FF,$FF,$FF,$00,$A0,$02,$58,$00,$30,$C0,$03,$48,$00,$30,$78,$04,$74,$00,$11,$88,$04,$58,$00,$0F,$98,$04,$58,$00,$0F,$D0,$04,$60
	.byte $00,$29,$A0,$05,$68,$00,$33,$78,$06,$74,$00,$11,$90,$06,$40,$00,$29,$80,$07,$60,$00,$29,$88,$07,$58,$00,$0F,$80,$08,$68,$00,$30
	.byte $30,$08,$74,$00,$11,$90,$09,$40,$00,$29,$F8,$09,$58,$00,$0F,$28,$0B,$48,$00,$0F,$FF,$FF,$FF,$FF,$00,$18,$00,$90,$00,$01,$50,$00
	.byte $40,$00,$04,$78,$00,$80,$00,$02,$A0,$00,$5E,$00,$09,$FF,$FF,$FF,$FF,$FF,$A0,$00,$78,$00,$08,$40,$01,$78,$00,$08,$D0,$01,$58,$00
	.byte $2B,$C8,$02,$BC,$00,$0C,$20,$03,$30,$00,$29,$40,$03,$88,$00,$30,$50,$03,$B0,$00,$29,$B0,$03,$78,$00,$23,$10,$04,$B0,$00,$29,$18
	.byte $05,$40,$00,$33,$C0,$05,$98,$00,$08,$40,$06,$48,$00,$30,$E0,$06,$60,$00,$08,$90,$07,$58,$00,$2B,$20,$08,$BC,$00,$0C,$20,$08,$48
	.byte $00,$30,$30,$09,$B0,$00,$29,$38,$09,$78,$00,$23,$80,$09,$B0,$00,$29,$90,$0A,$58,$00,$2B,$FF,$FF,$FF,$FF,$00,$18,$00,$60,$00,$01
	.byte $50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$BB,$00,$4A,$00,$12,$FF,$FF,$FF,$FF,$00,$18,$00,$90,$00,$01,$50,$00,$40,$00,$04,$78,$00
	.byte $80,$00,$02,$C8,$00,$58,$00,$07,$FF,$FF,$FF,$FF,$00,$20,$02,$80,$00,$30,$40,$04,$70,$00,$29,$A0,$04,$E0,$00,$13,$00,$05,$80,$00
	.byte $30,$40,$06,$70,$00,$29,$A0,$06,$E0,$00,$13,$40,$08,$70,$00,$29,$E0,$08,$80,$00,$33,$60,$08,$E0,$00,$13,$E0,$09,$60,$00,$1A,$17
	.byte $0B,$70,$00,$29,$FF,$FF,$FF,$FF,$00,$18,$00,$90,$00,$01,$50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$BA,$00,$5B,$00,$14,$FF,$FF,$FF
	.byte $FF,$00,$18,$00,$90,$00,$01,$50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$C8,$00,$58,$00,$0B,$FF,$FF,$FF,$FF,$00,$A8,$00,$A7,$00,$18
	.byte $68,$01,$97,$00,$18,$70,$01,$47,$00,$18,$80,$01,$30,$00,$30,$28,$02,$97,$00,$18,$48,$02,$47,$00,$18,$D8,$02,$98,$00,$18,$60,$03
	.byte $20,$00,$29,$A8,$03,$C0,$00,$2F,$B8,$03,$C0,$00,$19,$C8,$03,$C0,$00,$19,$00,$04,$78,$00,$30,$90,$05,$20,$00,$29,$58,$07,$78,$00
	.byte $0F,$68,$07,$78,$00,$0F,$80,$07,$80,$00,$33,$C8,$07,$28,$00,$0F,$D8,$07,$28,$00,$0F,$50,$08,$60,$00,$29,$30,$09,$20,$00,$29,$FF
	.byte $FF,$FF,$FF,$00,$18,$00,$90,$00,$01,$50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$C5,$00,$44,$00,$15,$FF,$FF,$FF,$FF,$00,$18,$00,$90
	.byte $00,$01,$50,$00,$40,$00,$04,$78,$00,$80,$00,$02,$A8,$00,$54,$00,$10,$FF,$FF,$FF,$FF,$00,$80,$00,$38,$00,$2D,$FF,$FF,$FF,$FF,$00
	.byte $80,$00,$58,$00,$12,$E0,$00,$C0,$00,$3E,$FF,$FF,$FF,$FF,$00,$80,$00,$CC,$00,$18,$FF,$FF,$FF,$FF,$00
lvl_addr_tbl_2: ; @$BFE0-C0C5
	.byte $1A,$C0,$AE,$C0,$36,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$4E,$C0,$AE,$C0,$66,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$7E,$C0,$AE,$C0,$AE,$C0,$AE,$C0
	.byte $96,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0,$AE,$C0
	.byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$03,$01,$03,$01,$03,$01,$03,$05,$85,$05,$05,$85,$85,$85,$85,$00,$00,$06,$81,$00,$00,$00,$00
	.byte $01,$03,$01,$03,$03,$01,$03,$03,$03,$03,$06,$06,$06,$06,$06,$06,$85,$85,$85,$85,$00,$00,$00,$00,$24,$24,$FF,$FF,$8A,$8A,$8A,$8A
	.byte $8A,$8B,$FF,$FF,$8B,$8B,$8B,$8B,$8A,$8A,$8A,$8A,$0B,$24,$00,$24,$FF,$FF,$0B,$0B,$FF,$24,$0D,$24,$0D,$24,$FF,$24,$FF,$FF,$0D,$FF
	.byte $8B,$8B,$8B,$8B,$06,$06,$86,$86,$03,$03,$03,$16,$03,$16,$03,$16,$03,$06,$03,$06,$03,$00,$16,$97,$16,$00,$06,$97,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$0A,$0A,$FF,$FF,$FF,$FF,$FF,$FF,$0B,$0B,$0B,$0B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
enemy_addr_tbl_1: ; @$C0C6-C12F
	.byte $00,$C1,$00,$C1,$00,$C1,$00,$C1,$0C,$C1,$00,$C1,$0C,$C1,$0C,$C1,$00,$C1,$0C,$C1,$00,$C1,$00,$C1,$18,$C1,$00,$C1,$0C,$C1,$00,$C1
	.byte $24,$C1,$0C,$C1,$00,$C1,$0C,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1,$00,$C1
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02,$01,$01,$01,$01,$02,$02,$01,$02
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02
lvl_addr_tbl_3: ; @$C130-C233
	.byte $44,$C1,$44,$C1,$46,$C1,$44,$C1,$44,$C1,$46,$C1,$44,$C1,$C0,$C1,$44,$C1,$C0,$C1
	.byte $FF,$FF,$57,$00,$E8,$00,$18,$00,$18,$01,$70,$00,$21,$01,$18,$01,$80,$00,$21,$02,$18,$01,$90,$00,$21,$03,$68,$01,$B0,$00,$14,$05
	.byte $68,$01,$20,$00,$29,$06,$A8,$01,$DC,$00,$27,$08,$08,$02,$70,$00,$21,$09,$08,$02,$80,$00,$21,$0A,$37,$02,$E8,$00,$18,$0B,$67,$02
	.byte $18,$00,$18,$0D,$98,$02,$DC,$00,$27,$0E,$08,$03,$E8,$00,$29,$0F,$27,$03,$E8,$00,$18,$00,$48,$03,$B0,$00,$14,$02,$68,$03,$24,$00
	.byte $26,$03,$98,$03,$E8,$00,$29,$05,$E8,$03,$64,$00,$26,$06,$28,$04,$DC,$00,$27,$07,$38,$04,$B0,$00,$14,$08,$FF,$FF,$77,$00,$80,$00
	.byte $21,$00,$88,$00,$BC,$00,$27,$01,$D8,$00,$E8,$00,$29,$03,$37,$01,$24,$00,$26,$04,$67,$01,$80,$00,$21,$05,$78,$01,$BC,$00,$27,$06
	.byte $98,$01,$14,$00,$26,$07,$18,$02,$30,$00,$29,$09,$27,$02,$68,$00,$21,$0B,$60,$02,$BC,$00,$27,$0C,$88,$02,$14,$00,$26,$0D,$00,$03
	.byte $BC,$00,$27,$0E,$18,$03,$D8,$00,$29,$0F,$37,$03,$C0,$00,$21,$00,$70,$03,$14,$00,$26,$01,$98,$03,$80,$00,$21,$02,$08,$04,$24,$00
	.byte $26,$03,$88,$04,$80,$00,$21,$04,$88,$04,$68,$00,$21,$05,$FF,$FF
enemy_misc_rtn_10:    ; @$C234
  lda timer_lo_byte
  and #$01
  beq b_c23d
  jmp j_c629
b_c23d:
  ldx #$00
b_c23f:
  stx $0E
  lda wpn_status,X
  bpl b_c249
  jsr j_c254
b_c249:
  lda $0E
  clc
  adc#$10
  tax
  cpx #$40
  bcc b_c23f
  rts
j_c254:
  lda #$0F
  sta $04
  ldy #$00
j_c25a:
  sty $0F
  lda eny_spr_status,Y
  bmi b_c264
b_c261:
  jmp j_c2ec
b_c264:
  and #$10
  bne b_c261
  lda eny_spr_status,Y
  and #$40
  bne b_c261
  lda stage_boss
  asl
  tay
  lda eny_pu_tbl,Y
  sta $00
  lda eny_pu_tbl+1,Y
  sta $01
  ldy $0F
  lda eny_spr_type,Y
  asl
  tay
  lda ($00),Y
  sta $02
  iny
  lda ($00),Y
  sta $03
  ldy $0F
  lda wpn_status,X
  and #$01
  beq b_c2a4
  lda $02
  clc
  adc #$08
  sta $02
  lda $03
  clc
  adc #$08
  sta $03
b_c2a4:                 ; weapon/enemy hit detection 
  lda #$00
  sta $00
  sta $01
  lda eny_spr_x_pos_lo,Y
  sec
  sbc wpn_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_hi,Y
  sbc wpn_x_pos_ex,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne j_c2ec
  lda #$00
  sta $00
  sta $01
  lda eny_spr_y_pos_lo,Y
  sec
  sbc wpn_y_pos_hi,X
  sta $00
  lda eny_spr_y_pos_hi,Y
  sbc wpn_y_pos_ex,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne j_c2ec
  lda $00
  cmp $03
  bcc b_c2fa
j_c2ec:
  lda $0F
  clc
  adc #$10
  tay
  dec $04
  bmi b_c2f9
  jmp j_c25a
b_c2f9:
  rts
b_c2fa:
  lda #$01
  sta $08
  lda wpn_status,X
  and #$40
  beq b_c309
  lda #$03
  sta $08
b_c309:
  lda #$00
  sta wpn_status,X
  lda eny_spr_substatus,Y
  and #$20
  bne b_c35c
  lda eny_frozen_timer,Y
  clc
  adc $08
  sta eny_frozen_timer,Y
  sta $08
  lda stage_boss
  asl
  tay
  lda enemy_addr_tbl_2,Y
  sta $06
  lda enemy_addr_tbl_2+1,y
  lda $07
  ldy $0F
  lda eny_spr_type,Y
  asl
  tay
  lda ($06),Y
  bmi b_c365
  and #$40
  bne b_c39a
  iny
  lda ($06),Y
  cmp $08
  bcs b_c35f
  jsr play_sound_c
  ldy $0F
  lda eny_spr_type,Y
  jsr ram_misc_36
  lda #$00
  sta eny_exp_timer,Y
  lda eny_spr_status,Y
  ora #$40
  sta eny_spr_status,Y
b_c35c:
  jmp j_c2ec
b_c35f:
  jsr play_sound_d
  jmp j_c2ec
b_c365:
  ldy $0F
  and #$3f
  sta eny_frozen_timer,Y
  lda eny_spr_type,Y
  jsr ram_misc_36
  jsr play_enemy_hit_sound
  lda eny_spr_status,Y
  ora #$10
  sta eny_spr_status,Y
  lda eny_spr_type,Y
  cmp #$33
  beq b_c3b0
  cmp #$30
  beq b_c3bf
enemy_stop:
  lda #$00
  sta eny_x_inc_lo,Y
  sta eny_x_inc_hi,Y
  sta eny_y_inc_lo,Y
  sta eny_y_inc_hi,Y
  sta eny_exp_timer,Y
  rts
b_c39a:
  lda ($06),Y
  and #$3F
  asl
  asl
  ldy $0F
  sta eny_boss_wpn_timer,Y
  lda eny_spr_substatus,Y
  ora #$18
  sta eny_spr_substatus,Y
  jmp enemy_stop
b_c3b0:
  lda current_level
  lsr
  tay
  lda mid_tbl_2,Y
  ldy $0F
  sta eny_frozen_timer,Y
  jmp enemy_stop
b_c3bf:
  jsr ram_misc_2
  lda unram_97
  and #$07
  tay
  lda eny_frozen_timer_tbl,Y
  sta $00
  lda $00
  cmp #$35
  bne b_c3e4
  lda current_level
  cmp #$00
  beq b_c3e0
  cmp #$02
  beq b_c3e0
  cmp #$0C
  bne b_c3e4
b_c3e0:
  lda #$34
  sta $00
b_c3e4:
  lda $00
  ldy $0F
  sta eny_frozen_timer,Y
  jmp enemy_stop
eny_frozen_timer_tbl:     ; @$C3EE-C3F5
  .byte $34,$35,$36,$37,$38,$34,$35,$36
enemy_misc_rtn_9:
  lda flight_status
  and #$F7
  sta flight_status
  ldx #$00
  stx unram_6
  sta unram_8
  lda #$0F
  sta $0C
j_c406:
  lda eny_spr_status,X
  bpl b_c40f
  and #$50
  beq b_c412
b_c40f:
  jmp j_c494
b_c412:
  lda stage_boss
  asl
  tay
  lda eny_pu_tbl,Y
  sta $00
  lda eny_pu_tbl+1,Y
  sta $01
  lda #$06
  sta $04
  lda #$0C
  sta $05
  lda flight_status
  bpl b_c434
  lda #$0E
  sta $04
  lda #$06
  sta $05
b_c434:
  lda eny_spr_type,X
  asl
  tay
  lda ($00),Y
  clc
  adc $04
  sta $02
  iny
  lda ($00),Y
  clc
  adc $05
  sta $03
  lda eny_spr_substatus,X
  and #$08
  beq b_c452
  jmp j_c564
b_c452:
  jsr scroll_plr_rt
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  sta $01
  jsr flip_bits_1
  lda $01
  bne j_c494
  jsr scroll_plr_up
  lda eny_spr_y_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_y_pos_hi,X
  sbc $01
  sta $01
  jsr flip_bits_1
  lda $01
  bne j_c494
  lda $00
  cmp $03
  bcs j_c494
  lda state 
  beq b_c4df
j_c494:
  txa
  clc
  adc #$10
  tax
  dec $0C
  bmi b_c4a0
  jmp j_c406
b_c4a0:
  rts
b_c4a1:
  lda power_up
  and #$20
  beq b_c4d3
  lda eny_spr_type,X
  jsr ram_misc_36
  lda #$00
  sta eny_exp_timer,X
  lda eny_spr_status,X
  ora #$40
  sta eny_spr_status,X
  inc hits_taken
  lda #$00
  sta bos_status,X
  lda hits_taken
  cmp #$04
  bcc j_c494
  lda power_up
  and #$DF
  sta power_up
  jsr play_sound_a
  jmp j_c494
b_c4d3:
  lda #$02
  sta state
  lda #$00
  sta flash_counter
  jsr play_plr_exp_sound
  rts
b_c4df:
  lda eny_spr_type,X
  cmp #$1E
  beq b_c51d
  cmp #$1F
  beq b_c52e
  cmp #$29
  beq j_c494
  cmp #$23
  beq j_c494
  cmp #$34
  beq b_c4a1
  ldy #$40
  cmp #$35
  bcc b_c53c
  ldy #$80
  cmp #$36
  bcc b_c53c
  cmp #$37
  bcc b_c549
  cmp #$38
  bcc b_c558
  beq b_c544
  sec
  sbc #$39
  sta $00
  sec 
  lda #$00
b_c514:
  ror
  dec $00
  bpl b_c514
  ora rodimus_ram
  sta rodimus_ram
b_c51d:
  lda #$00
  sta eny_spr_status,X
  jsr play_powerup_sound
  lda eny_spr_type,X
  jsr ram_misc_36
  jmp j_c494
b_c52e:
  lda #$64
  sta incScoreLo
  lda #$00
  sta incScoreHi
  jsr ram_misc_37
  jmp b_c51d
b_c53c:
  tya
  ora power_up
  sta power_up
  jmp b_c51d
b_c544:
  inc lives
  jmp b_c51d
b_c549:
  lda power_up
  and #$3F
  sta power_up
  lda flight_status
  and #$EF
  sta flight_status
  jmp b_c51d
b_c558:
  jsr play_sound_f
  lda #$00
  sta hits_taken
  ldy #$20
  jmp b_c53c
j_c564:
  lda $03
  clc
  adc #$04
  sta $03
  jsr scroll_plr_up
  lda #$00
  sta $06
  lda eny_spr_y_pos_lo,X
  sec
  sbc $00
  sta $00
  sta $04
  lda eny_spr_y_pos_hi,X
  sbc $01
  sta $01
  sta $05
  jsr flip_bits_1
  lda $01
  bne b_c5dd
  lda $00
  cmp $03
  bcs b_c5dd
  lda $05
  bne b_c5a5
  lda $03
  sec
  sbc $04
  sta $08
  bcs b_c5a5
  lda #$ff
  sta $06
b_c5a5:
  lda $02
  sec
  sbc #$02
  sta $04
  jsr scroll_plr_rt
  lda eny_spr_x_pos_lo,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_hi,X
  sbc $01
  sta$01
  sta $07
  jsr flip_bits_1
  lda $01
  bne b_c5dd
  lda $00
  cmp $04
  bcc b_c5e0
  cmp $02
  bcs b_c5dd
  lda plr_x_inc_hi
  eor $07
  cmp b_c5dd
  lda #$00
  sta plr_x_inc_lo
  sta plr_x_inc_hi
b_c5dd:
  jmp j_c494
b_c5e0:
  lda $06
  bne b_c5f3
  lda plr_y_inc
  bpl b_c5dd
  lda #$00
  sta plr_y_inc_fraction
  sta plr_y_inc
  sta jump_hold
  jmp j_c494
b_c5f3:
  lda jump_hold
  bpl b_c5fb
  lda plr_y_inc
  bmi b_c5dd
b_c5fb:
  ldy #$00
  lda $08
  cmp #$02
  bcc b_c605
  ldy #$10
b_c605:
  sty $00
  lda eny_y_inc_lo,X
  sec
  sbc $00
  sta plr_y_inc_fraction
  lda eny_y_inc_hi,X
  sbc #$00
  sta plr_y_inc
  lda eny_x_inc_lo,X
  sta unram_6
  lda eny_x_inc_hi,X
  sta unram_8
  lda flight_status
  ora #$08
  sta flight_status
  jmp j_c494
j_c629:
  ldx #$00
b_c62b:
  lda bos_status,X
  bpl b_c69a
  lda #$05
  sta $02
  lda #$0C
  sta $03
  lda flight_status
  bpl b_c644
  lda #$0C
  sta $02
  lda #$06
  sta $03
b_c644:
  jsr scroll_plr_rt
  lda $00
  sec
  sbc bos_x_pos_hi,X
  sta $00
  lda $01
  sbc bos_x_pos_ex,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_c69a
  jsr scroll_plr_up
  lda $00
  sec
  sbc bos_y_pos_hi,X
  sta $00
  lda $01
  sbc bos_y_pos_ex,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne b_c69a
  lda $00
  cmp $03
  bcs b_c69a
  lda state
  bne b_c69a
  lda power_up
  and #$20
  bne b_c6a4
  lda #$02
  sta state
  lda #$00
  sta flash_counter
  sta unram_27
  jsr play_plr_exp_sound
  rts
b_c69a:
  txa
  clc
  adc #$10
  tax
  cpx #$C0
  bcc b_c62b
  rts
b_c6a4:
  inc hits_taken
  lda #$00
  sta bos_status,X
  lda hits_taken
  cmp #$04
  bcc b_c69a
  lda power_up
  and #$DF
  sta power_up
  jsr play_sound_a
ram_misc_36:
  sta $0B
  txa
  pha
  tya
  pha
  lda stage_boss
  asl
  tay
  lda mid_tbl_start,Y
  sta $09
  lda mid_tbl_start+1,Y
  sta $0A
  lda $0B
  asl
  tay
  lda ($09),Y
  sta incScoreLo
  iny
  lda ($09),Y
  sta incScoreHi
  jsr ram_misc_37
  pla
  tay
  pla
  tax
  rts














;======================================================================================================================================
mid_tbl_start:    ; @$C6E6-C911
	.byte $EA,$C6,$62,$C7,$0A,$00,$1E,$00,$1E,$00,$32,$00,$64,$00,$1E,$00,$32,$00,$28,$00,$00,$00,$00,$00,$28,$00,$32,$00,$00,$00,$1E,$00
	.byte $00,$00,$64,$00,$1E,$00,$32,$00,$64,$00,$2C,$01,$1E,$00,$64,$00,$28,$00,$32,$00,$32,$00,$14,$00,$1E,$00,$F4,$01,$00,$00,$00,$00
	.byte $F4,$01,$00,$00,$00,$00,$1E,$00,$00,$00,$88,$13,$32,$00,$88,$13,$64,$00,$64,$00,$10,$27,$64,$00,$64,$00,$88,$13,$88,$13,$88,$13
	.byte $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$64,$00,$64,$00,$00,$00,$64,$00,$64,$00,$64,$00,$64,$00,$64,$00,$64,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$0A,$00,$0A,$00,$2C,$01,$14,$00,$90,$01,$32,$00,$E8,$03,$14,$00,$64,$00,$B8,$0B,$14,$00,$10,$27,$00,$F0
	.byte $F4,$01,$00,$F0,$D0,$07,$88,$13
mid_tbl_2:
  .byte $00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0
eny_pu_tbl:
  .byte $9C,$C7,$1C,$C8   ; cant just get the data directly...
  .byte $0A,$03,$0A,$03,$06,$0A,$0A,$03,$04,$08
	.byte $04,$08,$08,$04,$08,$08,$0C,$04,$0C,$04,$04,$04,$04,$04,$0C,$04,$08,$04,$0A,$04,$04,$08,$08,$04,$04,$0C,$0C,$04,$08,$10,$0C,$04
	.byte $08,$04,$08,$05,$08,$04,$08,$08,$04,$04,$0A,$03,$08,$08,$00,$00,$00,$00,$08,$08,$04,$04,$00,$00,$08,$08,$10,$04,$00,$00,$04,$04
	.byte $0C,$04,$04,$08,$04,$08,$00,$00,$04,$04,$08,$08,$00,$00,$08,$08,$08,$08,$04,$08,$04,$04,$0A,$04,$0A,$04,$0A,$04,$0A,$04,$04,$04
	.byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$06,$06,$0C,$04,$0C,$04,$0C,$04,$0C,$04
	.byte $04,$05,$04,$05,$04,$06,$04,$04,$04,$06,$06,$06,$04,$06,$04,$04,$08,$08,$04,$06,$04,$04,$04,$08,$08,$08,$04,$06,$04,$04,$04,$06
	.byte $04,$06,$0C,$04,$06,$06,$06,$06,$08,$02
enemy_addr_tbl_2: ; @$C850
  .byte $54,$C8,$D4,$C8,$82,$00,$82,$00,$00,$00,$00,$00,$7F,$FF,$00,$00,$00,$00,$00,$02,$00,$0F
	.byte $00,$0F,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$03,$00,$0A,$00,$00,$00,$02,$00,$05,$00,$0A,$95,$00,$00,$0A,$00,$00,$00,$00,$00,$02
	.byte $00,$02,$9B,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$02,$7F,$FF,$00,$FF,$00,$00,$7F,$FF,$00,$02,$00,$02,$00,$FF
	.byte $9F,$00,$00,$02,$00,$FF,$00,$30,$00,$00,$9F,$00,$9E,$00,$80,$00,$B7,$00,$B8,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$00,$00,$00,$00,$03,$00,$00
	.byte $00,$03,$00,$05,$00,$03,$00,$00,$00,$0A,$00,$04,$00,$00,$00,$09,$00,$30,$00,$03,$00,$30,$00,$04,$00,$04,$7F,$00,$00,$00,$00,$00
	.byte $00,$30,$39,$3A,$00,$3B,$3C,$00,$3D,$00,$3F,$00
chr_rom_bank_tbl: ; @$C912-C92E
  .byte $00,$00,$00,$00,$00,$02,$01,$01,$01,$00,$00,$02,$00,$00,$01,$02,$02,$00,$01,$02,$03,$00,$03,$00,$03,$00,$03,$00,$00
stage_boss_table:     ; @$C92F-C943
  .byte $00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01
untbl_1:
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$01   ; padding?
stage_misc_tbl_1:; @$rom495c-496e/memory c94c
  .byte $01,$01,$03,$01,$01,$01,$01,$01,$01,$01
untbl_2:
  .byte $01,$01,$01,$01,$01,$01,$01,$01,$01
eny_pos_addr_tbl:
	.byte $73,$C9,$83,$C9,$93,$C9,$A3,$C9,$B3,$C9,$93,$C9,$B3,$C9,$93,$C9
	.byte $B3,$C9,$C3,$C9,$80,$40,$90,$60,$A0,$50,$80,$60,$90,$50,$A0,$40
	.byte $90,$30,$90,$70,$80,$40,$A0,$60,$C0,$60,$C0,$80,$A0,$40,$80,$60
	.byte $E0,$60,$D0,$70,$C0,$60,$E0,$50,$D0,$80,$B0,$70,$B0,$50,$E0,$80
	.byte $D0,$50,$B0,$90,$A0,$30,$C0,$50,$E0,$40,$A0,$80,$E0,$80,$A0,$70
	.byte $D0,$50,$90,$50,$D0,$A0,$B0,$80,$A0,$60,$D0,$50,$D0,$70,$A8,$30
	.byte $D0,$38,$C0,$20,$C0,$50,$B0,$80,$E0,$70,$D0,$30,$A0,$30,$C0,$20
	.byte $A0,$60,$B0,$50
player_y_pos_tbl:     ; @$C9D3, y and x values alternate, 2 bytes per level
  .byte $50
player_x_pos_tbl:     ; @$C9D4-C9FA
	.byte $10,$50,$10,$50,$10,$50,$10,$90,$28,$50,$10,$50,$10,$50,$10,$50,$10,$50,$10
	.byte $50,$28,$50,$10,$50,$10,$50,$10,$30,$34,$50,$10,$60,$10,$50,$10,$90,$60,$50,$10
stage_tbl_1:          ; @$C9FB-CA0C
	.byte $A0,$10,$C0,$08,$80,$10,$50,$10,$A0,$10,$50,$10,$80,$50,$50,$10,$C0,$10
stage_tbl_2:          ; @$CA0D-CA10
  .byte $32,$FB,$F2,$FD
player_speed_tbl:     ; @$CA11-CA1A
  .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20
stage_tbl_0:          ; @$CA1B-CA2CCC76
	.byte $20,$20,$0C,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
stage_tbl_3:          ; @$CA2D-CBC2
  .byte $69,$CA,$9A,$CA,$9E,$CA,$CF,$CA,$D3,$CA,$D7,$CA,$DB,$CA,$0C,$CB,$10,$CB,$41,$CB,$D3,$CA,$D7,$CA,$45,$CB,$76
	.byte $CB,$7A,$CB,$D7,$CA,$7E,$CB,$AF,$CB,$7A,$CB,$B3,$CB,$B7,$CB,$BF,$CB,$B7,$CB,$BF,$CB,$BB,$CB,$BF,$CB,$BB,$CB,$BF,$CB,$BF,$CB
  .byte $00,$00,$01,$02,$03,$06,$07,$01,$02,$03,$04,$05,$00,$05,$00
	.byte $01,$02,$03,$1A,$06,$07,$05,$00,$01,$02,$03,$04,$05,$06,$07,$05,$06,$07,$01,$02,$03,$1A,$1A,$06,$07,$01,$02,$03,$04,$05,$04,$05,$1A,$1A,$1A,$50,$51,$52,$16,$0A,$0A,$0B,$0D,$0E,$0B,$0D
	.byte $0E,$11,$0F,$10,$11,$0B,$0D,$0E,$08,$08,$0A,$0A,$0B,$0D,$0E,$0A,$0B,$0F,$10,$0B,$0C,$0C,$0C,$12,$0C,$12,$13,$13,$12,$0C,$08,$0F,$10,$10,$11,$0C,$0C,$0C,$08,$0A,$0A,$0A,$50,$51,$52,$53
	.byte $14,$15,$1C,$1D,$4E,$4E,$1E,$1F,$17,$18,$19,$1B,$17,$18,$19,$1B,$19,$18,$17,$19,$17,$18,$19,$1B,$24,$25,$20,$21,$22,$23,$22,$23,$24,$25,$26,$27,$20,$21,$22,$23,$24,$25,$26,$27,$24,$25
	.byte $26,$27,$17,$18,$19,$1B,$26,$27,$20,$21,$21,$4E,$4E,$44,$45,$37,$36,$38,$37,$38,$38,$2D,$2E,$38,$36,$38,$2F,$30,$31,$32,$33,$34,$36,$38,$37,$2B,$2C,$38,$38,$37,$38,$36,$38,$38,$2D,$2E
	.byte $36,$38,$2F,$30,$31,$32,$33,$34,$36,$38,$2D,$2E,$38,$36,$37,$2B,$2C,$2C,$4E,$4E,$2A,$3F,$00,$01,$02,$03,$04,$05,$06,$07,$05,$00,$01,$02,$03,$04,$05,$06,$07,$05,$1A,$04,$05,$1A,$04,$05
	.byte $04,$05,$1A,$04,$05,$00,$01,$02,$03,$1A,$04,$05,$00,$05,$04,$05,$00,$01,$02,$03,$1A,$09,$1A,$1A,$1A,$4E,$4E,$42,$43,$3B,$3C,$3D,$3E,$47,$48,$49,$4F,$54,$55,$4F,$54,$55,$4F,$54,$55,$4F
	.byte $4B,$4C,$4D,$4F,$46,$47,$48,$49,$4A,$48,$49,$49,$48,$4F,$54,$55,$55,$55,$55,$4F,$49,$48,$49,$4A,$48,$4F,$54,$55,$4F,$54,$55,$4F,$54,$55,$55,$55,$4E,$4E,$40,$41,$4E,$4E,$28,$29,$39,$56
	.byte $56,$3A,$57,$58,$58,$59,$1A,$1A,$1A,$1A
stage_tbl_4:          ; @$CBC3-CC76
  .byte $C6,$E0,$12,$E1,$5E,$E1,$AA,$E1,$F6,$E1,$42,$E2,$8E,$E2,$DA,$E2,$26,$E3,$C6,$F3,$72,$E3,$BE,$E3,$0A,$E4,$56,$E4,$A2,$E4,$EE,$E4,$3A,$E5,$86,$E5
	.byte $D2,$E5,$1E,$E6,$12,$F4,$5E,$F4,$D2,$F8,$4E,$E7,$9A,$E7,$E6,$E7,$7E,$E8,$32,$E8,$AA,$F4,$F6,$F4,$42,$F5,$8E,$F5,$CA,$E8,$16,$E9,$62,$E9,$AE,$E9,$FA,$E9,$46,$EA,$92,$EA,$DE,$EA,$DA,$F5
	.byte $26,$F6,$72,$F6,$2A,$EB,$76,$EB,$C2,$EB,$0E,$EC,$5A,$EC,$A6,$EC,$F2,$EC,$3E,$ED,$8A,$ED,$D6,$ED,$D6,$ED,$22,$EE,$6E,$EE,$BA,$EE,$6A,$E6,$B6,$E6,$06,$EF,$52,$EF,$9E,$EF,$EA,$EF,$BE,$F6
	.byte $0A,$F7,$56,$F7,$A2,$F7,$EE,$F7,$3A,$F8,$86,$F8,$36,$F0,$82,$F0,$CE,$F0,$1A,$F1,$66,$F1,$B2,$F1,$FE,$F1,$4A,$F2,$E2,$F2,$96,$F2,$1E,$F9,$6A,$F9,$B6,$F9,$02,$FA,$2E,$F3,$7A,$F3,$02,$E7
	.byte $4E,$FA,$9A,$FA,$E6,$FA
stage_orientation_table:  ; @$CC77
	.byte $00,$00,$00,$00,$40,$00,$00,$01,$00,$01,$80,$00,$00,$01,$80,$00,$00,$01,$40,$01
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_misc_jmp_tbl:   ; @$CC94
  .byte $9E,$CC,$A6,$CC,$AE,$CC,$B6,$CC,$BE,$CC
  ; level 1,2,4,6(vert_down),7,8(vert_down),9
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    ; level 5
  .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
    ; level 10
  .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
    ; level 3(vert_up)
	.byte $00,$00,$00,$00,$FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00
clear_ram:          ; @$CCC6
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003           ; ready chr ram 3
  sta $8003           ; set chr ram 3
  jsr ppu_misc_1
  jsr clear_ram_b
  lda #$00              ; load y position 0
  sta y_scroll_lo
  sta y_scroll_hi
  lda #$FE              ; load title to scroll from the right
  sta x_scroll
  jmp ppu_scroll
clear_ram_b:
  lda #$23
  sta PPU_ADDR
  lda #$C0
  sta PPU_ADDR
  ldx #$00
:
  lda title_tbl,X
  sta PPU_VRAM_IO
  inx
  cpx #$40          ; $40 bytes of seemingly nothing to the screen, maybe top of title screen, but why? ***
  bcc :-
  lda #$1C
  sta $00
  lda #$D0
  sta $01
  jmp send_palette_to_ram
ppu_misc_1:
  lda #$24
  sta $03
  lda #$05
  sta $02
  lda #$21
  sta $01
  lda #$02
  sta $00
ppu_clear_loop:
  lda PPU_STATUS
  lda $01
  sta PPU_ADDR
  lda $00
  sta PPU_ADDR
  ldy #$00
:
  lda $03
  sta PPU_VRAM_IO
  inc $03
  iny
  cpy #$1C
  bcc :-
  dec $02
  bpl :+
  rts
:
  lda $00
  clc
  adc #$20
  sta $00
  lda $01
  adc #$00
  sta $01
  jmp ppu_clear_loop
title_timer_rtn:
  lda #$10
  sta rtn_trk_a
  lda #$00
  sta rtn_trk_b
  jsr set_PPU_CTRL_a
:                             
  jsr get_player_input
  lda controller_p1_current
  and #$0C                    ; is start or select pressed
  bne :-                      ; loop back if it is
  jsr disable_audio_channels
  lda #$20
  sta rtn_trk_a
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta plr_x_prog_hi
  sta state
  sta which_player
  sta subtitle_timer
  sta frame_counter_96
  sta y_scroll_hi
  lda #$FE
  sta x_scroll
  jsr set_PPU_MASK_a
:
  lda state
  bmi :+
  jmp :-
:
  jsr disable_audio_channels
  jsr play_title_theme          ; @$D944
  lda #$80
  sta rtn_trk_a
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta state
  sta which_player
:
  lda timer_hi_byte
  cmp #$04                  ; title is complete when timer high byte is $04
  bcs :++
  bit state
  bmi :+
  jmp :-
:
  jsr disable_audio_channels
  lda sel_status
  sta which_player
  jsr set_PPU_CTRL_b
  lda #$00
  sta rtn_trk_a
  pla
  pla
  jmp title_loop_jmp        ; loop back if timer hi byte is less than 4 @$815F
:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda #$00
  sta rtn_trk_a
  lda #$FF
  sta rtn_trk_b
  rts
scroll_logo:
  lda x_scroll
  beq :+
  dec x_scroll
  dec x_scroll
  rts
:
  inc subtitle_timer
  lda subtitle_timer
  cmp #$0C
  bcs :+
  rts
:
  lda #$00                ; ready timer for next subtitle
  sta subtitle_timer
  lda frame_counter_96
  cmp #$18
  bcs :++
  tay
  lda #$3C
  sta $00
  lda #$D0
  sta $01
  ldx #$01
:
  tya
  lsr
  clc
  adc #$0A
  sta $02
  lda #$22
  adc #$00
  sta $03
  jsr :++
  dex
  bpl :-
  tya
  sta frame_counter_96
  jsr play_subtitle_sound  ; @$D960
  rts
:
  lda #$54
  sta $00
  lda #$D0
  sta $01
  jsr write_text
  jsr write_player
  lda #$67
  sta $00
  lda #$D0
  sta $01
  jsr write_text
  jsr ppu_scroll
  lda hiScoreLo
  sta $00
  lda hiScoreMid
  sta $01
  lda hiScoreHi
  sta $02
  lda #$C0
  sta $0E
  lda #$98
  sta $0F
  jsr draw_score    ; @$88F2 draw the high score to screen
  lda #$80
  sta state
  rts
:
  lda $03
  sta PPU_ADDR
  lda $02
  sta PPU_ADDR
  lda ($00),Y
  sta PPU_VRAM_IO
  iny
  lda $02
  clc
  adc #$20
  sta $02
  lda $03
  sta PPU_ADDR
  lda $02
  sta PPU_ADDR
  lda ($00),y
  sta PPU_VRAM_IO
  iny 
  rts
screen_misc_rtn_2:
  lda sel_status        ; do something with player status
  bpl :+
  jsr :+++
  lda #$B7                  ; load title sprite y position
  sta sprite1_y_pos         ; load y position to first sprite after score
  jmp :++
:
  jsr :++
:
  lda #$1A
  sta ram_PPU_Mask
  sta PPU_MASK
  rts
:
  ldx #$03
:
  lda cursor_tbl,X ;@$ce93
  sta cursor_tbl,x
  dex
  bpl :-
  rts
cursor_tbl:
  .byte $A7,$8F,$00,$50       ; oam info for title screen cursor
screen_misc_rtn_1:
  lda controller_current
  and #$04
  bne :++                     ; branch if select is pushed at title
  lda controller_current
  and #$08 
  bne :+++                    ; branch if start is pushed at title
:
  rts
:
  lda controller_p1_last
  and #$04
  bne :--                     ; branch if select was pushed last frame
  lda sel_status
  eor #$FF                    ; swap 1 or 2 player modes in sel_status, 00 or FF
  sta sel_status
  rts
:
  lda #$80
  sta state
  rts
write_player:
  lda #$10              ; first write '2 players' then '1 player'
  sta PPU_CTRL
  lda #$22              ; draw player at x pos 22
  sta PPU_ADDR
  lda #$EC              ; draw player at y pos EC
  sta PPU_ADDR
  lda #$D2              ; draw '2' at start of '2 players'
  sta PPU_VRAM_IO
  jsr draw_player       ; draw player here
  lda #$EC              ; draw 's' to end of '2 players'
  sta PPU_VRAM_IO
  lda PPU_STATUS
  lda #$22
  sta PPU_ADDR
  lda #$AC
  sta PPU_ADDR
  lda #$D1              ; draw '1' at start of '1 player'
  sta PPU_VRAM_IO
draw_player:            ; draw the 'player' part for '1 player' and '2 players'
  lda #$20
  sta PPU_VRAM_IO       ; draw a space before player
  ldx #$00
:
  lda write_player_tbl,x
  sta PPU_VRAM_IO
  inx
  cpx #$06              ; write 6 letters of 'player'
  bcc :-
  rts
write_player_tbl:
  .byte $E9,$E5,$DA,$F2,$DE,$EB       ;"PLAYER"
write_stage_num:
  lda #$20              ; draw a space
  sta PPU_VRAM_IO
  lda current_level
  lsr
  cmp #$09
  bcc :+
  lda #$D1              ; draw a '1' for level 10
  sta PPU_VRAM_IO
  lda #$FF
:
  clc
  adc #$D1              ; draw the level number by adding the number to where the '1' tile is located 
  sta PPU_VRAM_IO
:
  rts
pre_stage_screen:
  lda current_level
  and #$01
  bne :-                ; return if we're on a boss
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003             ; load palette 3
  sta $8003
  lda #$54              ; ready the palette address lo byte
  sta $00
  lda #$D3              ; ready the palette address hi byte
  sta $01
  jsr send_palette_to_ram
  lda #$5F
  sta $00
  lda #$D0
  sta $01
  jsr write_text
  jsr write_stage_num
  lda #$21              ; write which player is up
  sta PPU_ADDR
  lda #$CB
  sta PPU_ADDR
  ldx #$D1              ; ready to write '1'
  lda which_player
  beq :+                ; branch if player 1
  inx                   ; increment x if player 2 to write 2
:
  stx PPU_VRAM_IO
  jsr draw_player
  jsr draw_lives
  jsr ppu_scroll
  jsr write_pl1_score
  ldy #$0B
  lda  rodimus_ram
  lsr
  bcc :+                ; skip loading rodimus palette unless he's enabled in bit0 of  rodimus_ram
  jsr load_rodimus_palette
  ldy #$11
:
  sty player_sprite
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta plr_y_prog_fr
  sta plr_y_prog_lo
  sta plr_y_prog_hi
  sta flight_status
  lda #$98
  sta plr_y_pos_hi
  lda #$60
  sta plr_x_pos_hi
  lda #$08
  sta rtn_trk_a
  jsr play_sound_tf_theme
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
:
  lda timer_hi_byte
  beq :-                    ; loop until sound is finished playing?
  lda #$00
  sta rtn_trk_a
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  rts
draw_lives:
  lda lives
  sta $00
  lda #$00
  sta $01
  sta $02
  jsr ram_misc_1
  lda #$22
  sta PPU_ADDR
  lda #$6E
  sta PPU_ADDR
  lda #$FA              ; draw an x for "number of lives x player sprite"
  sta PPU_VRAM_IO
  lda #$20              ; draw a space
  sta PPU_VRAM_IO
  lda $06
  and #$F0
  lsr
  lsr
  lsr
  lsr
  clc
  adc #$D0
  sta PPU_VRAM_IO
  lda $06
  and #$0F
  clc
  adc #$D0
  sta PPU_VRAM_IO
  rts
title_tbl: ;CFDC-D075
 	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$01,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $0F,$30,$10,$02,$0F,$30,$10,$16,$0F,$30,$10,$16,$0F,$36,$16,$20,$0F,$20,$21,$16,$0F,$30,$21,$30,$0F,$30,$26,$30,$0F,$36,$07,$1C   ; palette info
	.byte $04,$06,$05,$07,$08,$0A,$09,$0B,$0C,$0E,$0D,$0F,$10,$12,$11,$13,$14,$16,$15,$17,$18,$1A,$19,$1B       ; subtitle tiles
  .byte $22,$68,$07,$E1,$E2,$F5,$EC,$DC,$E8,$EB,$DE     ; 'HI-SCORE'
  .byte $20,$EB,$04,$EC,$ED,$DA,$E0,$DE     ; x position, y position, length, "Stage"
  .byte $23,$4A,$0B,$F4,$ED,$DA,$E4,$DA,$EB,$DA,$20,$D1,$D9,$D8,$D6   ;"©TAKARA 1986"  
rodimus_check:              ; this is where the end screen stuff starts, maybe
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003                 ; load chr bank 3
  sta $8003
  lda  rodimus_ram
  and #$FE
  eor #$FE
  beq :+            ; branch if we got all rodimus letters and rodimus isnt enabled
  jmp no_rodimus    ; skip loading the rodimus stuff
:                   ; start of loading rodimus stuff
  lda rodimus_ram   
  lsr               ; shift right, if rodimus is activated there will be a carry
  bcs :+            ; branch if rodimus is already enabled (if rodimus_ram = 01)
  lda #$06          ; write "YUKE RODIMUS !"
  sta $02           ; load y offset for fetching text 
  lda #$D0
  sta $03           ; load low byte for address of end screen text
  lda #$D1
  sta $04           ; load high byte for address of end screen text
  lda #$23
  sta $05           ; x address of line break
  lda #$E8
  sta $06           ; y address of line break
  jsr fetch_text    ; routine to fetch text
  lda #$80          ; sprite x position 80
  sta plr_x_pos_hi  ; text screen sprite x position
  lda #$28
  sta plr_y_pos_hi  ; text screen sprite y position
  lda #$0B
  sta player_sprite ; load stage start sprite
  jmp :++++
:
  lda #$00
  sta rodimus_ram
  lda #$01          ; write score
  sta $02
  lda #$6C
  sta $03
  lda #$D2
  sta $04
  lda #$23
  sta $05
  lda #$D0
  sta $06
  jsr fetch_text
  lda #$A8
  sta $0F
  lda #$C8
  sta $0E
  lda which_player
  bne :+                ; write player 2 score instead of 1
  jsr write_pl1_score_b ; @$88CF write pl1 score
  jmp :++               ; skip writing player 2 score
:
  jsr write_pl2_score_b
:
  lda #$80              ; load sprite x position of 80
  sta plr_x_pos_hi      ; speed acts as the x position on the text screens
  sta plr_y_pos_hi
  lda #$0B              ; load Magnus stage/end screen sprite
  sta player_sprite
  jmp :+
no_rodimus:
  lda #$07              ; write "destron wo.."
  sta $02
  lda #$8C
  sta $03
  lda #$D2
  sta $04
  lda #$23
  sta $05
  lda #$C8
  sta $06
  jsr fetch_text
  lda #$80              ; set sprite x position
  sta plr_x_pos_hi
  lda #$28              ; set sprite y position
  sta plr_y_pos_hi
  lda #$0E              ; load prime head
  sta player_sprite
:
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta plr_y_prog_fr
  sta plr_y_prog_lo
  sta plr_y_prog_hi
  sta plr_y_pos_lo
  sta plr_x_pos_lo
  lda #$08
  sta rtn_trk_a
  jsr play_sound_e
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
:
  lda controller_p1_current
  and #$08
  bne :++          ; branch out if start is pushed
  lda timer_hi_byte
  cmp #$F0
  bcs :++          ; branch out if timer is up, 0F at the hi byte is pretty long
  ldx #$20
  lda timer_lo_byte
  and #$08
  bne :+          ; load $20 to stage_boss every 256 frames at frame 8
  ldx #$16        ; load $16 to stage_boss every frame, except frame 8
:
  stx stage_boss
  lda timer_hi_byte
  cmp #$01
  bne :--         ; loop back and check if controller pressed start on the second loop of the timer, only?***
  jsr flip_rodimus_ram  ; check if rodimus ram is FF, show magnus 
  jmp :--         ; jump back and check for start press
:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda #$00
  sta rtn_trk_a
  rts
flip_rodimus_ram:   ; if rodimus ram is FF, show magnus, but flip to rodimus on the 8th frame in the timer low byte
  lda rodimus_ram
  eor #$FF          ; check if ff and branch if it is
  beq show_mag_flash_rod
  rts
show_mag_flash_rod:
  ldy #$02
  lda  timer_lo_byte
  and #$08
  bne show_rodimus
:
  lda magnus_pal_tbl,y
  sta player_palette_ram,Y  ; store magnus palette to ram
  dey
  bpl :-                    ; load 3 bytes of the palette colours
  lda #$0B
  sta player_sprite         ; load magnus sprite
  rts
show_rodimus:
  lda rodimus_palette,Y
  sta player_palette_ram,Y  ; store rodimus palette to ram
  dey
  bpl show_rodimus          ; load 3 bytes of the palette colours
  lda #$11
  sta player_sprite         ; load rodimus sprite
  rts
fetch_text:
  lda $02
  asl
  tay
  lda ($03),y
  sta $00
  iny
  lda ($03),y
  sta $01
  jsr write_text
  dec $02
  bpl fetch_text
  lda #$54
  sta $00
  lda #$D3
  sta $01
  jsr send_palette_to_ram
  lda $05
  sta PPU_ADDR
  lda $06
  sta PPU_ADDR
  ldx #$00
  lda #$FF
:
  sta PPU_VRAM_IO
  inx
  cpx #$08
  bcc :-
  jmp ppu_scroll
end_text_tbl: ; @$D1D0-D353
	.byte $DE,$D1,$F3,$D1,$07,$D2,$1B,$D2,$32,$D2,$42,$D2,$53,$D2                                                     ; text lookup table for the following text, second ending
	.byte $21,$07,$11,$E6,$DA,$E0,$E7,$EE,$EC,$20,$F0,$DA,$20,$EC,$DA,$E2,$E0,$E8,$20,$E7,$E8                         ; 'MAGNUS WA SAIGO NO'      Magnus won the final battle
	.byte $21,$47,$10,$ED,$DA,$ED,$DA,$E4,$DA,$E2,$20,$E7,$E2,$20,$E4,$DA,$ED,$ED,$DA,$F6                             ; 'TATAKAI NI KATTA'
	.byte $21,$87,$10,$EC,$E1,$E2,$E4,$DA,$EC,$E1,$E2,$20,$20,$DA,$EB,$DA,$ED,$DA,$E7,$DA                             ; 'SHIKASHI  ARATANA'       However, a new battle aproaches!
	.byte $21,$C7,$13,$ED,$DA,$ED,$DA,$E4,$DA,$E2,$20,$E0,$DA,$20,$E6,$DE,$E7,$E8,$E6,$DA,$DE,$E7,$E2                 ; 'TATAKAI GA MENOMAENI'
	.byte $22,$07,$0C,$EC,$DE,$E6,$DA,$ED,$ED,$DE,$20,$E2,$EB,$EE,$20,$F9                                             ; 'SEMATTE IRU !'
	.byte $22,$67,$0D,$F2,$EE,$E4,$DE,$20,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$20,$F9                                         ; 'YUKE RODIMUS !'          Go, Rodimus!
	.byte $22,$C6,$15,$DA,$ED,$ED,$DA,$DC,$E4,$F9,$20,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$DC,$E8,$E6,$EF,$E8,$F2,$F9         ; 'ATTACK! RODIMUSCOMVOY!'  Attack! Rodimus Convoy!
	.byte $70,$D2,$82,$D2                                                                                             ; text lookup table for the following text
	.byte $21,$49,$0E,$DC,$E8,$E7,$E0,$EB,$DA,$ED,$EE,$E5,$DA,$ED,$E2,$E8,$E7,$F9                                     ; 'CONGRATULATION!'
	.byte $22,$A9,$06,$EC,$DC,$E8,$EB,$DE,$20,$F5                                                                     ; 'SCORE -'
	.byte $9C,$D2,$AC,$D2,$C2,$D2,$D4,$D2,$EE,$D2,$07,$D3,$20,$D3,$3B,$D3                                             ; text lookup table for the following text, normal ending
	.byte $20,$E9,$0C,$E4,$E2,$E7,$E4,$F2,$EE,$20,$EC,$E1,$E2,$EB,$DE,$E2                                             ; 'KINKYU SHIREI'           Emergency order
	.byte $21,$46,$12,$DD,$DE,$EC,$ED,$E8,$EB,$E8,$E7,$20,$E0,$DA,$20,$DA,$EB,$DA,$ED,$DA,$E7,$DA                     ; 'DESTORON GA ARATANA'     Destron has revived and become even more powerful, using a new power
	.byte $21,$86,$0E,$DC,$E1,$E2,$E4,$DA,$EB,$DA,$20,$DD,$DE,$20,$F2,$E8,$EB,$E2                                     ; 'CHIKARA DE YORI'
	.byte $21,$C6,$16,$E4,$F2,$E8,$EE,$EB,$F2,$E8,$E4,$EE,$E7,$E2,$20,$F2,$E8,$E6,$E2,$E0,$DA,$DE,$ED,$ED,$DA,$F6     ; 'KYOURYOKUNI YOMIGAETTA.'
	.byte $22,$06,$15,$F7,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$F8,$20,$E7,$E8,$20,$DE,$E7,$DE,$EB,$EE,$E0,$E8,$E7,$F5         ; ''RODIMUS~ NO ENERUGON-'  Retrieve Rodimus's energon cubes and destroy Destron once more
	.byte $22,$46,$15,$E4,$F2,$EE,$DB,$EE,$20,$F0,$E8,$20,$ED,$E8,$EB,$E2,$20,$DF,$EE,$ED,$DA,$ED,$DA,$DB,$E2         ; 'KYUBU WO TORI FUTATABI'
	.byte $22,$86,$17,$DD,$DE,$EC,$ED,$E8,$EB,$E8,$E7,$20,$F0,$E8,$20,$E0,$DE,$E4,$E2,$E1,$DA,$20,$EC,$DE,$F2,$E8,$F6 ; 'DESTORON WO GEKIHA SEYO'
	.byte $23,$06,$15,$EC,$DC,$EB,$DA,$E6,$DB,$E5,$DE,$F9,$20,$EE,$E5,$ED,$EB,$DA,$E6,$DA,$E0,$E7,$EE,$EC,$F9         ; 'SCRAMBLE! ULTRAMAGNUS!'  Sramble! Ultra Magnus!
palette_table_2:    ; @$D354-D373
	.byte $0F,$0F,$0F,$20
	.byte $0F,$0F,$0F,$0F
	.byte $0F,$0F,$0F,$0F
	.byte $0F,$0F,$0F,$20
	.byte $0F,$20,$21,$16
	.byte $0F,$20,$10,$00
	.byte $0F
magnus_pal_tbl:
  .byte $20,$21,$16
	.byte $0F,$20,$10,$00
title_sub_finish:
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003
  sta $8003               ; load CHR bank 3
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta state
  sta unram_23
  lda #$08
  sta rtn_trk_a
  lda #$0A
  sta player_sprite
  lda #$54
  sta $00
  lda #$D3
  sta $01
  jsr send_palette_to_ram
  lda #$C9
  sta $00
  lda #$D3
  sta $01
  jsr write_text
  jsr ppu_scroll
  jsr play_game_over_sound
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
:
  lda controller_p1_last
  eor #$0B                    ; is start or B pressed?
  bne :+                      ; branch if it is
  lda #$FF
  sta unram_23
:
  lda timer_hi_byte
  beq :--                     ; loop back if timer_hi_byte is 00
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  rts
game_over_tbl:               ; @$D3C9 - D3D3
  .byte $21,$6B,$09,$E0,$DA,$E6,$DE,$20,$20,$E8,$EF,$DE,$EB       ; "GAME OVER"
start_pushed_at_title:
  jsr reset_current_player_ram    ; @$8352
  lda #$0E
  sta player_sprite               ; load prime head
  lda #$04
  sta rtn_trk_a
  lda #$00
  sta stage_orientation
  sta state
  sta plr_x_prog_fr
  sta plr_x_prog_lo
  sta plr_x_prog_hi
  lda #$38
  sta plr_y_pos_hi
  lda #$80
  sta plr_x_pos_hi                 ; used for sprite x position
  lda #$01
  sta current_level
  jsr clear_sprite_ram
  jsr level_sub_a
  jsr brain_wave               ; load the mid brain wave at the title screen
  jsr disable_audio_channels
  jsr play_sound_brain_wave
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
:
  lda state
  beq :-
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr clear_screen
  jsr clear_oam_ram
  jsr clear_sprite_ram
  lda #$1C
  sta $00
  lda #$D0
  sta $01
  jsr send_palette_to_ram
  lda #$00
  sta state
  lda #$80
  sta plr_x_pos_hi              ; center player on the screen
  sta plr_y_pos_hi
  lda #$0B                      ; load Magnus sprite
  sta player_sprite
  lda #$17
  sta current_level             ; level 17 is where the brain waves come together on magnus
  jsr level_sub_a
  jsr disable_audio_channels
  jsr play_sound_brain_wave
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
:
  lda state
  bpl :-
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  lda #$00
  sta state
  rts
brain_wave:
  lda #$FE
  sta $00
  sta $01
  ldx #$00
  ldy #$02
b_d46a:
  lda #$00
  sta eny_x_inc_lo,x
  lda $00
  sta eny_x_inc_hi,x
  lda #$00
  sta eny_y_inc_lo,x
  lda $01
  sta eny_y_inc_hi,x
  lda $00
  clc
  adc #$02
  sta $00
  txa
  clc
  adc #$10
  tax
  dey
  bpl b_d46a
  rts
disable_audio_channels:
  txa
  pha
  tya
  pha
  ldx #$00
  stx APU_CHANCTRL
  stx apu_status_ram_6
b_d49a:
  lda #$FF                ; Load $FF to all channel_status in RAM
  sta audio_ram_0,X
  txa
  clc
  adc #$10
  tax
  cmp #$80
  bne b_d49a
  pla
  tay
  pla
  tax
  rts
clear_audio_channels:
  lda #$00
  sta apu_status_ram_0
  sta apu_status_ram_1
  sta apu_status_ram_2
  sta apu_status_ram_3
b_d4bb:
  tax
  lda audio_ram_1,X
  sta apu_status_ram_4
  tay
  cmp #$02
  bcc b_d4cf
  beq b_d4cd
  ora #$40
  bne b_d4cf
b_d4cd:
  ora #$80
b_d4cf:
  sta apu_status_ram_5
  lda audio_ram_0,X
  cmp #$FF
  beq b_d512
  lda apu_status_ram_0,Y
  lda audio_ram_0,X
  beq b_d51b
  inc audio_ram_C,X
  lda audio_ram_C,X
  sec
  sbc audio_ram_B,X
  bcc b_d4f6
  sta audio_ram_C,X
b_d4f6:
  dec audio_ram_5,X
  bpl b_d509
  lda audio_ram_4,X
  sta audio_ram_5,X
  jsr inc_audio_ram_6
  dec audio_ram_7,X
  beq b_d50f
b_d509:
  jsr set_sq1_vol_b
  jmp b_d512
b_d50f:
  jsr check_audio_ram
b_d512:
  txa
  clc
  adc #$10
  cmp #$80
  bne b_d4bb
  rts
b_d51b:
  lda audio_ram_2,X
  sta $10
  lda audio_ram_3,X
  sta $11
  ldy #$00
  lda ($10),y
  and #$0f
  sta audio_ram_4,X
  sta audio_ram_5,X
  iny
  jsr apu_status_rtn
  iny
  lda ($10),Y
  ora apu_status_ram_7
  sta audio_ram_6,X
  iny
  lda ($10),Y
  sta audio_ram_8,X
  lda #$00
  sta audio_ram_9,X
  sta audio_ram_A,X
  sta audio_ram_D,X
  lda #$02
  sta audio_ram_0,X
  bne b_d50f
b_d556:
  and #$0f
  bpl b_d561
b_d55a:
  and #$0f
  eor #$FF
  clc
  adc #$01
b_d561:
  bit apu_status_ram_5
  bmi b_d571
  sta audio_ram_D,X
  lda ($10),Y
  sta audio_ram_E,X
  sta audio_ram_F,X
b_d571:
  jmp apu_status_rtn_2
check_audio_ram:
  lda audio_ram_0,X
  sta $10
  ldy #$00
  sty $11
  asl $10
  rol $11
  lda audio_ram_2,X
  adc $10
  sta $10
  lda audio_ram_3,X
  adc $11
  sta $11
  lda ($10),Y
  iny
  cmp #$F0
  bcs b_d5aa
  cmp #$E0
  bcs b_d55a
  cmp #$D0
  bcs b_d556
  cmp #$C0
  bcs b_d60c
  cmp #$B0
  bcs b_d5f0
  cmp #$A0
  bcs b_d5bd
b_d5aa:
  cmp #$FE
  beq apu_status_rtn_2
  bcs apu_status_rtn_3
  jsr apu_status_rtn_4
  inc audio_ram_0,X
  rts
apu_status_rtn_3:
  sta audio_ram_0,X
  jmp set_sq1_vol_c
b_d5bd:
  bne b_d5ce
  bit apu_status_ram_5
  bmi apu_status_rtn_2
  lda audio_ram_6,X
  and #$C0
  ora ($10),Y
  jmp apu_status_rtn_2a
b_d5ce:
  cmp #$A1
  bne :+
  lda ($10),Y
  sta audio_ram_8,X
  jmp apu_status_rtn_2
:
  jsr apu_status_rtn
  bcs apu_status_rtn_2a
  lda audio_ram_6,X
  and #$1F
  ora apu_status_ram_7
apu_status_rtn_2a:
  sta audio_ram_6,X
apu_status_rtn_2:
  inc audio_ram_0,X
  jmp check_audio_ram
b_d5f0:
  and #$0f
  cmp #$0F
  beq :+
  dec audio_ram_9,X
  beq apu_status_rtn_2
  bpl :+
  sta audio_ram_9,X
:
  lda ($10),Y
  clc
  adc audio_ram_0,X
  sta audio_ram_0,X
  jmp check_audio_ram
b_d60c:
  and #$0f
  sta apu_status_ram_7
  bit apu_status_ram_5
  bmi apu_status_rtn_2
  lda audio_ram_6,X
  and #$10
  beq apu_status_rtn_2
apu_status_rtn:
  bit apu_status_ram_5 
  bmi :+
  lda ($10),Y
  and #$03
  ror
  ror
  ror
  sta apu_status_ram_7
  rts
:
  lda ($10),Y
  and #$7F
  sta apu_status_ram_7
  sec
  rts
apu_status_rtn_4:
  bit apu_status_ram_5
  bvs set_sq1_vol
  pha
  and #$0f
  cmp #$0C
  bcs set_sq1_vol_d
  asl
  tay
  lda audio_tbl_0,y         ;#$D7C0,y 
  sta apu_status_ram_7
  lda audio_tbl_0+1,y        ;#$D7C1,y 
  sta apu_status_ram_8
  pla
  and #$F0
  beq sq1_apu_rtn
  lsr
  lsr
  lsr
  lsr
  tay
:
  lsr apu_status_ram_8
  ror apu_status_ram_7
  dey
  bne :-
sq1_apu_rtn:
  ldy #$01
  lda ($10),Y
  sta audio_ram_7,X
  lda #$00
  sta audio_ram_C,X
  jsr audio_status_rtn
  lda apu_status_ram_8
  pha
  lda apu_status_ram_7
  pha
  lda audio_tbl_1,y
  ora apu_status_ram_6
  jsr send_apu_status
  jsr set_sq1_vol_a
  lda audio_ram_8,X
  sta APU_PULSE1RAMP, y       ;send to SQ1 sweep @$4001
  pla
  sta APU_PULSE1FTUNE,Y       ;send to SQ1 LoByte @$4002
  pla
  and #$07
  ora #$08
  sta APU_PULSE1CTUNE,Y       ;send to SQ1 HiByte @$4003
  rts
set_sq1_vol:
  cmp #$10
  bcs :+
  sta apu_status_ram_7
  lda #$00
  sta apu_status_ram_8
  beq sq1_apu_rtn
set_sq1_vol_d:
  pla
:
  ldy #$01
  lda ($10),Y
  sta audio_ram_7,X
set_sq1_vol_c:
  jsr audio_status_rtn
  lda audio_tbl_1a,y      ; @$D7E7
  and apu_status_ram_6
  jmp send_apu_status
set_sq1_vol_b:
  jsr audio_status_rtn
set_sq1_vol_a:
  cpy #$02
  beq :+
  lda audio_ram_A,X
  bne :++
  tya
  asl
  asl
  tay
  lda audio_ram_6,X
  and #$10
  asl
  ora audio_ram_6,X
  sta APU_PULSE1CTRL        ; send to sq1 vol @$4000
  rts
:
  lda audio_ram_6,X
  sta APU_TRICTRL1          ; send to tri_linear @$4008
  tya
  asl
  asl
  tay
  rts
:
  sec
  sbc #$01
  asl
  asl
  asl
  pha
  lda audio_ram_C,X
  sta apu_status_ram_8
  lda #$00
  sta apu_status_ram_8
  ldy #$04
:
  asl apu_status_ram_7
  lda apu_status_ram_7
  sec
  sbc audio_ram_B,X
  bcc :+
  sta apu_status_ram_7
:
  rol apu_status_ram_8
  dey
  bne :--
  pla
  lsr apu_status_ram_8
  php
  clc
  adc apu_status_ram_8
  sty apu_status_ram_8
  tay
  lda audio_tbl_1b,y ; @$D7EB,y
  plp
  bcc :+
  asl
  asl
  asl
  asl
:
  sta apu_status_ram_7
  lda audio_ram_6,X
  and #$0f
  sta apu_status_ram_9
  ldy #$04
:
  asl apu_status_ram_8
  asl apu_status_ram_7
  bcc :+
  lda apu_status_ram_8
  adc apu_status_ram_9
  sta apu_status_ram_8
:
  dey
  bne :--
  lda apu_status_ram_4
  asl
  asl
  tay
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lda audio_ram_6,X
  and #$C0
  ora #$30
  ora apu_status_ram_8
  sta APU_PULSE1CTRL        ; send to sq1 vol
  rts
audio_status_rtn:
  ldy apu_status_ram_4
  lda apu_status_ram_0
  cmp #$01
  beq :+
  pla
  pla
:
  rts
inc_audio_ram_6:
  bit apu_status_ram_5
  bmi :+
  lda audio_ram_D,X
  beq :+
  dec audio_ram_F,X
  bne :+
  lda audio_ram_E,X
  sta audio_ram_F,X
  lda audio_ram_6,X
  and #$1F
  sta apu_status_ram_7
  and #$10
  beq :+
  lda audio_ram_D,X
  bmi :++
  dec audio_ram_D,X
  lda apu_status_ram_7
  cmp #$1F
  beq :+
  inc audio_ram_6,X
:
  rts
:
  inc audio_ram_D,X
  lda apu_status_ram_7
  cmp #$10
  beq :--
  dec audio_ram_6,x
  rts
audio_tbl_0:                ; @$D7C0-D7D7
  .byte $AE,$06,$4E,$06,$F4,$05,$9E,$05,$4D,$05,$01,$05,$B9,$04,$75,$04,$35,$04,$F9,$03,$C0,$03,$8A,$03
send_apu_status:
  sta apu_status_ram_6
  bit rtn_trk_b
  bmi :+
  sta APU_CHANCTRL
:
  rts
audio_tbl_1:                ; @$D7E3-D832
	.byte $01,$02,$04,$08
audio_tbl_1a:               ; @$D7E7
  .byte $0E,$0D,$0B,$07
audio_tbl_1b:               ; @$D7EB
  .byte $FE,$DC,$BA,$98,$76,$54,$32,$10,$01,$23,$45,$67,$89,$AB,$CD,$EF,$FE,$DC,$BA,$98,$89,$AB,$CD,$EF,$89,$AB,$CD,$EF,$FE,$DC,$BA,$98,$FD,$B9,$75,$31,$EC,$A8,$64,$20,$FE,$DC,$CD,$ED,$CA,$86,$42,$10,$FD,$B9,$AB,$97,$65,$43,$21,$10,$44,$44,$44,$46,$67,$8A,$CF,$B8,$FF,$A8,$FF,$A8,$77,$66,$55,$42
load_audio_ram:
  sta $12
  asl
  clc
  adc $12
  tay
  lda end_tbl_a,Y           ; @$DA1E low byte of address
  sta $12
  lda end_tbl_a+1,Y           ; @$DA1F high byte of address
  sta $13
  lda end_tbl_a+2,Y           ; @$DA20 some low value between 0 and 3
  sta $14
  txa
  asl
  asl
  asl
  asl
  clc
  adc #$00
  sta $15
  lda #$00
  adc #$03
  sta $16
  ldy #$02
  lda $12
  sta ($15),Y
  ldy #$03
  lda $13
  sta ($15),Y
  ldy #$01
  lda $14
  sta ($15),Y
  ldy #$00
  lda #$00
  sta ($15),Y
  rts
store_ind_17_18:
  stx $17
  sty $18
  rts
load_ind_17_18:
  ldx $17
  ldy $18
  rts
play_sound_a:
  lda current_level
  cmp #$14
  bcs :++
  lsr
  bcs :+
  lda #$00
  ldx #$06
  jsr load_audio_ram
  lda #$01
  ldx #$07
  jsr load_audio_ram
:
  lda #$0D 
  ldx #$06
  jsr load_audio_ram
  lda #$0E
  ldx #$07
  jsr load_audio_ram
:
  sec
  sbc #$14
  tax
  lda audio_jump_tbl_1,x
  sta $00
  lda audio_jump_tbl_1a,x
  sta $01
  jmp ($0000)
audio_jump_tbl_1:
  .byte $BC
audio_jump_tbl_1a:
  .byte $D8,$BC,$D8,$CA,$D8,$CA,$D8,$D8,$D8
not_played_sound_a:
  lda #$0f
  ldx #$06
  jsr load_audio_ram
  lda #$10
  ldx #$07
  jmp load_audio_ram
play_sound_g:
  lda #$15
  ldx #$06
  jsr load_audio_ram
  lda #$16
  ldx #$07
  jmp load_audio_ram
not_played_sound_c:
  lda #$17
  ldx #$06
  jsr load_audio_ram
play_game_over_sound:
  lda #$11
  ldx #$00
  jsr load_audio_ram
  lda #$12
  ldx #$01
  jsr load_audio_ram
  lda #$13
  ldx #$02
  jsr load_audio_ram
  lda #$14
  ldx #$04
  jmp load_audio_ram
play_jump_sound:
  lda #$02
  ldx #$05
  jsr load_audio_ram
  lda #$03
  ldx #$04
  jmp load_audio_ram
play_sound_wpn:
  jsr store_ind_17_18
  lda #$04
  ldx #$01
  jsr load_audio_ram
  jmp load_ind_17_18
play_boss_exp_sound:
  jsr store_ind_17_18
  lda #$05
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_sound_c:
  jsr store_ind_17_18
  lda #$0B
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_sound_d:
  jsr store_ind_17_18
  lda #$0C
  ldx #$00
  jsr load_audio_ram
  jmp load_ind_17_18
play_transform_sound:
  lda #$06
  ldx #$02
  jmp load_audio_ram
play_title_theme:
  lda #$07
  ldx #$00
  jsr load_audio_ram
  lda #$08
  ldx #$01
  jsr load_audio_ram
  lda #$09
  ldx #$02
  jsr load_audio_ram
  lda #$0A
  ldx #$04
  jmp load_audio_ram
play_subtitle_sound:
  lda #$18
  ldx #$04
  jsr load_audio_ram
  lda #$19
  ldx #$03
  jmp load_audio_ram
play_enemy_hit_sound:
  jsr store_ind_17_18
  lda #$1A
  ldx #$02
  jsr load_audio_ram
  jmp load_ind_17_18
play_sound_e:
  lda #$1B
  ldx #$00
  jsr load_audio_ram
  lda #$1C
  ldx #$01
  jsr load_audio_ram
  lda #$1D
  ldx #$02
  jsr load_audio_ram
  lda #$1E
  ldx #$04
  jmp load_audio_ram
play_sound_tf_theme:
  lda #$1F
  ldx #$00
  jsr load_audio_ram
  lda #$20
  ldx #$01
  jsr load_audio_ram
  lda #$21
  ldx #$02
  jsr load_audio_ram
  lda #$22
  ldx #$04
  jmp load_audio_ram
play_sound_brain_wave:
  lda #$23
  ldx #$00
  jmp load_audio_ram
play_sound_k:
  jsr store_ind_17_18
  lda #$25
  ldx #$01
  jsr load_audio_ram
  lda #$26
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_sound_j:
  jsr store_ind_17_18
  lda #$27
  ldx #$01
  jsr load_audio_ram
  lda #$28
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_plr_exp_sound:
  jsr store_ind_17_18
  lda #$29
  ldx #$00
  jsr load_audio_ram
  lda #$0B
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_powerup_sound:
  jsr store_ind_17_18
  lda #$2A
  ldx #$00
  jsr load_audio_ram
  jmp load_ind_17_18
play_pause_sound:
  lda #$2B
  ldx #$00
  jmp load_audio_ram
play_sound_f:
  jsr store_ind_17_18
  lda #$2C
  ldx #$06
  jsr load_audio_ram
  lda #$2D
  ldx #$07
  jsr load_audio_ram
  jmp load_ind_17_18
end_tbl_a:
  .byte $CC,$DB,$00
  .byte $04,$DC,$02
	.byte $A8,$DA,$01
	.byte $AF,$DA,$03
	.byte $C8,$DA,$01
	.byte $D7,$DA,$03
	.byte $E0,$DA,$01
	.byte $28,$DC,$00
	.byte $D7,$DC,$01
	.byte $3C,$DD,$02
	.byte $99,$DD,$03
	.byte $03,$DB,$03
	.byte $12,$DB,$01
	.byte $90,$DB,$00
	.byte $B6,$DB,$02
	.byte $E6,$DD,$00
	.byte $2C,$DE,$02
	.byte $54,$80,$00     ; game over a @$8054
	.byte $73,$80,$01     ; game over b @$8073
	.byte $8A,$80,$02     ; game over c @$808A
	.byte $A1,$80,$03     ; tftheme/game over d @$80A1
	.byte $54,$DE,$00
	.byte $76,$DE,$02
	.byte $B8,$80,$01     ; rodimus endscreen @$80B8
	.byte $D6,$80,$03     ; Subtitle sound b @$80D6
	.byte $DD,$80,$01     ; Subtitle sound a @$80DD
	.byte $E4,$80,$01     ; Subtitle sound c @$80E4
	.byte $AC,$DE,$00
	.byte $02,$DF,$01
	.byte $58,$DF,$02
	.byte $A0,$DF,$03
	.byte $04,$80,$00     ; some sound info a @$8004
	.byte $13,$80,$01     ; some sound info b @$8013
	.byte $24,$80,$02     ; some sound info c @$8024
	.byte $45,$80,$03     ; some sound info d @$8045
	.byte $19,$DB,$00
	.byte $20,$DB,$01
	.byte $52,$DB,$01
	.byte $61,$DB,$03
	.byte $70,$DB,$01
	.byte $77,$DB,$03
	.byte $27,$DB,$01
	.byte $36,$DB,$01
	.byte $45,$DB,$01
	.byte $BA,$DF,$00
	.byte $02,$E0,$02
.byte $10,$01,$0F,$8B,$59,$08,$FF,$30,$00,$1F,$00,$EF,$01,$09,$01,$08,$01,$07,$01,$06,$01,$05,$01,$04,$01,$03,$01,$02,$01,$01,$01,$FF,$10,$00,$1F,$00,$EF,$01,$50,$01,$55,$01,$5A,$01,$B5,$FD,$FF,$31,$00
.byte $1F,$00,$EF,$02,$0F,$20,$FF,$10,$01,$1F,$00,$EF,$03,$60,$01,$5A,$01,$58,$01,$56,$01,$54,$01,$52,$01,$50,$01,$4A,$01,$48,$01,$46,$01,$44,$04,$42,$04,$40,$01,$B5,$F3,$FF,$31,$00,$1F,$00
.byte $0C,$01,$0D,$01,$0E,$01,$EF,$02,$0F,$20,$FF,$10,$02,$0F,$82,$29,$10,$FF,$15,$01,$0F,$00,$60,$10,$FF,$10,$02,$09,$8C,$09,$3C,$FF,$01,$00,$1F,$00,$10,$01,$0B,$01,$0A,$01,$EF,$02,$0F,$20
.byte $FF,$15,$01,$02,$01,$55,$01,$53,$01,$51,$01,$4B,$01,$49,$01,$FF,$13,$02,$1F,$00,$EF,$01,$39,$01,$1F,$01,$B7,$FE,$FF,$10,$01,$1F,$00,$EF,$02,$0B,$01,$0A,$01,$09,$01,$BE,$BD,$FF,$30,$00
.byte $1F,$00,$EF,$02,$0D,$01,$0E,$01,$0F,$01,$BF,$FD,$FF,$10,$02,$0F,$83,$29,$3C,$FF,$30,$00,$19,$00,$0F,$01,$0E,$01,$0D,$01,$0C,$01,$0B,$01,$0A,$01,$09,$01,$08,$01,$07,$01,$06,$01,$FF,$04
.byte $01,$03,$00,$24,$02,$24,$02,$22,$02,$24,$02,$1F,$02,$24,$02,$22,$02,$24,$02,$1F,$02,$24,$02,$22,$02,$24,$02,$27,$02,$26,$02,$22,$02,$24,$02,$BF,$F0,$24,$18,$00,$00,$24,$02,$B7,$FF,$22
.byte $02,$B7,$FF,$20,$02,$B7,$FF,$1B,$02,$B7,$FF,$BF,$F8,$04,$01,$0F,$00,$27,$04,$30,$04,$35,$02,$34,$02,$32,$02,$30,$02,$32,$10,$27,$04,$30,$04,$35,$02,$34,$02,$32,$02,$30,$02,$32,$04,$34
.byte $02,$30,$0A,$28,$04,$30,$04,$37,$02,$35,$02,$33,$02,$32,$02,$32,$0C,$2A,$04,$30,$20,$BF,$E7,$24,$20,$00,$00,$30,$02,$B7,$FF,$2B,$02,$B7,$FF,$2A,$02,$B7,$FF,$29,$02,$B7,$FF,$28,$02,$B7
.byte $FF,$2A,$02,$B7,$FF,$30,$02,$30,$02,$B7,$FE,$BF,$F1,$05,$01,$01,$00,$39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F
.byte $01,$34,$01,$B2,$F0,$39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$39
.byte $01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F,$01,$34,$01,$B2,$F0,$39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34
.byte $01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01,$29,$01,$B7,$FF,$1F,$01,$40,$01,$1F,$01,$42,$01,$1F,$01,$42,$01,$40,$02,$29,$01,$B7,$FF,$1F,$01,$35,$01,$1F,$01,$37,$01,$1F,$01,$37,$01,$37
.byte $02,$39,$02,$FF,$15,$01,$01,$00,$24,$01,$1F,$01,$24,$01,$1F,$01,$24,$01,$1F,$0B,$B2,$FA,$24,$01,$1F,$01,$24,$01,$1F,$01,$24,$01,$1F,$03,$A1,$82,$29,$01,$27,$01,$24,$01,$22,$01,$20,$01
.byte $19,$01,$17,$02,$A1,$00,$24,$01,$1F,$01,$24,$01,$1F,$01,$24,$01,$1F,$0B,$B3,$FA,$24,$01,$B7,$FF,$1F,$01,$37,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$37,$02,$24,$01,$B7,$FF,$1F,$01,$20,$01
.byte $1F,$01,$22,$01,$1F,$01,$22,$01,$22,$02,$24,$02,$FF,$25,$18,$00,$00,$19,$01,$1F,$01,$19,$01,$1F,$01,$19,$01,$1F,$0B,$B3,$FA,$19,$02,$29,$02,$20,$02,$30,$02,$22,$02,$32,$02,$20,$02,$30
.byte $02,$15,$02,$25,$02,$14,$02,$24,$02,$15,$02,$25,$02,$17,$02,$27,$02,$B1,$F0,$A2,$10,$19,$01,$B7,$FF,$1F,$01,$20,$01,$1F,$01,$22,$01,$1F,$01,$22,$41,$20,$02,$19,$01,$B7,$FF,$1F,$01,$15
.byte $01,$1F,$01,$17,$01,$1F,$01,$17,$01,$17,$02,$19,$02,$FF,$35,$00,$00,$00,$03,$02,$03,$02,$03,$04,$07,$04,$07,$04,$B2,$FB,$03,$02,$03,$02,$03,$04,$03,$01,$04,$01,$05,$01,$06,$01,$07,$01
.byte $08,$01,$09,$02,$09,$02,$03,$02,$06,$02,$03,$02,$B7,$FC,$03,$01,$B7,$FF,$1F,$01,$03,$02,$03,$02,$03,$01,$03,$02,$03,$01,$B7,$FF,$1F,$01,$03,$02,$03,$02,$03,$01,$03,$02,$03,$03,$FF,$07
.byte $02,$0A,$00,$2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$32,$01,$2B,$03,$27,$03,$2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$37,$01,$37,$03,$1F,$03,$2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$32
.byte $01,$2B,$03,$27,$03,$29,$02,$1F,$01,$2B,$02,$29,$01,$27,$02,$24,$01,$27,$06,$1F,$03,$BF,$E0,$27,$19,$00,$00,$17,$02,$22,$01,$22,$03,$22,$03,$20,$02,$27,$01,$27,$03,$27,$03,$B2,$F8,$22
.byte $02,$29,$01,$29,$03,$29,$03,$17,$02,$22,$01,$22,$03,$22,$03,$BF,$EF,$09,$01,$0F,$00,$20,$0A,$23,$01,$22,$01,$1A,$0A,$1A,$01,$20,$01,$17,$18,$B1,$F9,$20,$0A,$23,$01,$22,$01,$1A,$09,$17
.byte $03,$20,$18,$BF,$F2,$29,$1A,$00,$00,$20,$03,$20,$01,$20,$01,$20,$01,$20,$03,$20,$01,$20,$01,$20,$01,$B7,$F8,$18,$03,$18,$01,$18,$01,$18,$01,$B1,$FC,$1A,$03,$1A,$01,$1A,$01,$1A,$01,$B1
.byte $FC,$20,$03,$20,$01,$20,$01,$20,$01,$B3,$FC,$BF,$E8,$06,$01,$0F,$00,$36,$12,$29,$01,$32,$01,$36,$01,$37,$01,$36,$01,$34,$01,$B2,$F9,$39,$12,$37,$01,$36,$01,$34,$01,$32,$02,$34,$01,$36
.byte $12,$29,$01,$32,$01,$36,$01,$37,$01,$36,$01,$34,$01,$B2,$F9,$39,$12,$37,$01,$36,$01,$34,$01,$32,$02,$34,$01,$26,$06,$29,$06,$32,$06,$34,$06,$37,$06,$36,$01,$34,$01,$32,$03,$34,$01,$36
.byte $06,$34,$06,$B1,$F5,$BF,$D8,$16,$01,$0F,$00,$32,$12,$26,$01,$29,$01,$32,$01,$34,$01,$32,$01,$31,$01,$B2,$F9,$34,$12,$34,$01,$32,$01,$31,$01,$2B,$02,$31,$01,$32,$12,$26,$01,$29,$01,$32
.byte $01,$34,$01,$32,$01,$31,$01,$B2,$F9,$34,$12,$34,$01,$32,$01,$31,$01,$2B,$02,$31,$01,$22,$06,$24,$06,$29,$06,$31,$06,$32,$06,$32,$01,$31,$01,$2B,$03,$31,$01,$32,$06,$31,$06,$B1,$F5,$BF
.byte $D8,$26,$20,$00,$00,$22,$03,$B7,$FF,$20,$03,$B7,$FF,$17,$03,$B7,$FF,$19,$03,$B7,$FF,$22,$03,$B7,$FF,$20,$03,$B7,$FF,$17,$03,$B7,$FF,$19,$03,$B7,$FF,$22,$03,$22,$03,$21,$03,$21,$03,$1B
.byte $03,$1B,$03,$19,$03,$19,$03,$17,$03,$17,$03,$17,$03,$17,$03,$19,$03,$19,$03,$19,$03,$19,$03,$B1,$F0,$BF,$DF,$36,$00,$00,$00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
.byte $01,$03,$01,$03,$01,$BF,$F6,$05,$01,$01,$00,$39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F,$01,$34,$01,$B2,$F0,$39
.byte $01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01,$BF,$DF,$25,$18,$00,$00,$19,$02,$29,$02,$20,$02,$30,$02,$22
.byte $02,$32,$02,$20,$02,$30,$02,$15,$02,$25,$02,$14,$02,$24,$02,$15,$02,$25,$02,$17,$02,$27,$02,$BF,$F0,$BF,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
.byte $00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$08,$56,$56,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09,$56,$56,$00,$03,$00,$00,$00,$02,$00,$00,$00,$00,$00,$0B,$0A,$56,$56,$00,$00
.byte $00,$00,$03,$00,$00,$00,$00,$00,$00,$0D,$0C,$56,$56,$00,$00,$00,$00,$03,$00,$50,$55,$30,$00,$3C,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$08,$0E,$56,$36,$03,$00
.byte $00,$00,$00,$00,$03,$00,$00,$00,$10,$09,$11,$56,$25,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$14,$13,$12,$56,$25,$00,$00,$00,$00,$03,$00,$00,$03,$00,$16,$15,$0E,$11,$56,$37,$00,$00,$00
.byte $00,$00,$00,$50,$55,$00,$03,$0C,$C0,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$16,$1A,$19,$18,$17,$56,$56,$00,$03,$00,$00,$00,$03,$00,$00,$0D,$1E,$1D,$1C,$1B,$56,$56,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$22,$21,$20,$1F,$56,$56,$00,$00,$03,$00,$00,$00,$00,$03,$00,$00,$25,$24,$23,$56,$56,$00,$00,$C0,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$08,$50,$55,$00,$00,$00
.byte $00,$03,$00,$00,$00,$00,$00,$22,$27,$26,$56,$56,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$28,$27,$56,$56,$00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$10,$00,$29,$56,$56,$00,$00,$00,$00
.byte $00,$03,$00,$00,$00,$00,$00,$00,$2A,$56,$56,$00,$00,$03,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$14,$56,$56,$00,$00,$04,$06
.byte $00,$00,$00,$00,$00,$00,$00,$16,$18,$56,$56,$00,$00,$05,$07,$00,$03,$00,$00,$03,$00,$00,$0D,$2B,$56,$56,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2C,$56,$56,$F0,$FF,$FF,$FF,$FF
.byte $0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2E,$2D,$56,$56,$03,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$2C,$56,$56,$00,$00,$00,$00,$00
.byte $00,$00,$03,$00,$00,$00,$30,$2F,$56,$56,$00,$00,$03,$00,$03,$00,$00,$00,$00,$00,$00,$00,$28,$56,$56,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$03,$00,$00,$00,$00
.byte $00,$03,$00,$00,$00,$00,$00,$08,$56,$56,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$09,$56,$36,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$14,$31,$56,$25,$03,$00,$00,$00,$00,$03
.byte $00,$00,$00,$00,$16,$33,$32,$56,$37,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$03,$50,$55,$00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$0D,$1E,$1D,$56,$56,$00,$00,$00,$00,$00,$03
.byte $00,$03,$00,$00,$00,$22,$21,$56,$56,$00,$03,$00,$00,$03,$00,$00,$00,$00,$00,$00,$0B,$34,$56,$56,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0D,$0C,$56,$56,$F0,$FF,$FF,$FF,$FF,$00,$50
.byte $55,$F0,$FF,$FF,$FF,$FF,$00,$50,$55,$00,$03,$00,$00,$03,$80,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$03,$00,$00,$03,$00
.byte $00,$00,$80,$01,$01,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$00,$00,$00,$00,$00,$03,$00,$00,$00
.byte $00,$03,$00,$80,$01,$01,$55,$55,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$80,$01,$01,$55,$55,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$80,$01,$01,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$80,$01,$01,$55,$55,$00,$00,$00,$00,$00,$50,$05,$00,$00,$00,$00,$00,$00,$50,$05,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$04,$06,$00,$00,$00,$00,$00
.byte $03,$00,$00,$00,$00,$55,$55,$00,$05,$07,$00,$03,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$55,$55,$55,$55,$80,$08,$00,$00,$00,$00,$00,$00,$20
.byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$01,$01,$01,$55,$55,$55,$00,$00,$00,$03,$00,$00,$00,$00,$80,$01,$01,$01,$55,$80,$55,$03,$00,$00,$00,$03,$00,$00,$00,$80
.byte $01,$01,$01,$55,$55,$55,$00,$03,$00,$00,$00,$00,$00,$00,$80,$01,$01,$01,$55,$80,$55,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80
.byte $01,$01,$55,$55,$80,$55,$00,$00,$00,$03,$80,$00,$00,$00,$80,$01,$01,$55,$55,$55,$55,$00,$00,$00,$00,$80,$01,$01,$00,$80,$00,$00,$55,$55,$55,$55,$03,$00,$00,$00,$00,$00,$00,$00,$80,$01
.byte $01,$55,$55,$80,$55,$00,$00,$00,$00,$50,$05,$00,$00,$00,$00,$10,$01,$40,$04,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$03,$02,$00,$00,$00,$80,$01,$01
.byte $01,$55,$55,$55,$55,$03,$00,$00,$00,$03,$00,$00,$80,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$4C,$00,$00,$44,$04,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$80,$01,$00,$00,$00,$00,$7A,$00,$00,$00,$55,$55,$00,$00,$00,$80,$00,$03,$00,$00,$7A,$7A,$00
.byte $00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00
.byte $00,$00,$55,$55,$00,$00,$03,$80,$01,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$00,$03,$00,$80,$00,$03,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$00,$00,$00,$03,$00,$00,$00,$00,$7A,$00,$00,$00
.byte $00,$55,$55,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$55,$55,$00,$00,$03,$00,$03,$80,$00,$00,$00,$00,$00,$00
.byte $55,$55,$55,$00,$02,$00,$00,$00,$80,$00,$03,$00,$00,$00,$55,$55,$55,$55,$03,$00,$00,$03,$00,$80,$00,$00,$03,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00
.byte $00,$00,$00,$00,$03,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$55,$55,$00,$00,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$80,$55,$00,$00,$02,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55
.byte $55,$55,$03,$00,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$80,$55,$20,$00,$02,$55,$55,$55,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55
.byte $55,$55,$00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$80,$55,$00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$55,$55,$00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$80
.byte $55,$00,$55,$55,$55,$50,$55,$00,$00,$00,$55,$55,$55,$50,$55,$00,$00,$00,$00,$00,$54,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56
.byte $56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50
.byte $55,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
.byte $00,$00,$00,$54,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
.byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00
.byte $00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$3B,$00,$00,$3A,$00,$57,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$57,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00,$00,$00,$3A,$00,$00,$05,$00,$0A,$50,$00,$0F,$00,$00,$05,$00,$02,$00,$00,$0F,$00,$00
.byte $3A,$00,$57,$3A,$00,$3A,$00,$57,$00,$00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00,$00,$57,$3A,$00,$00,$57,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00,$57,$00,$00,$00,$00
.byte $00,$00,$00,$3A,$00,$00,$00,$00,$00,$3A,$57,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$3A,$00,$00,$57,$00,$00,$3A,$00,$00,$3A,$00,$00,$00,$3A,$00,$00,$00,$00,$57,$3A,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$57,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$57,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$57,$00,$00,$57,$00,$3A,$00,$00,$3A,$00,$00,$00,$00,$00,$00
.byte $57,$00,$3A,$57,$00,$00,$00,$00,$00,$00,$3B,$00,$3A,$00,$00,$57,$00,$00,$57,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$40,$A0,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$56,$56,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$57,$59,$57,$00,$00,$00,$00,$00,$00,$59,$58,$A6,$00,$3A,$00,$57,$5A
.byte $57,$00,$00,$00,$00,$00,$00,$5A,$58,$00,$00,$00,$00,$57,$5A,$57,$A6,$A6,$A6,$00,$00,$00,$58,$00,$3A,$00,$00,$3A,$57,$5A,$57,$00,$00,$00,$00,$00,$00,$58,$A6,$A6,$00,$00,$A0,$00,$00,$00
.byte $A0,$10,$00,$40,$A0,$10,$11,$00,$00,$44,$00,$00,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$00,$59,$00,$00,$00,$3A,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$00,$5A,$A6,$A6,$00,$00,$00,$00,$5A,$57
.byte $00,$A6,$A6,$A6,$00,$00,$58,$00,$00,$00,$00,$00,$57,$58,$57,$00,$00,$00,$00,$00,$00,$59,$58,$00,$00,$00,$A0,$00,$00,$00,$A0,$44,$00,$00,$20,$00,$11,$01,$80,$00,$00,$00,$00,$57,$5A,$57
.byte $00,$00,$00,$00,$00,$58,$58,$58,$00,$00,$00,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$58,$59,$A6,$A6,$00,$00,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$58,$5A,$00,$3A,$00,$00,$3A,$00,$58,$57,$00
.byte $00,$00,$00,$00,$59,$58,$00,$00,$00,$00,$A0,$00,$00,$44,$80,$44,$00,$80,$20,$00,$00,$00,$28,$00,$00,$00,$00,$00,$59,$57,$00,$00,$00,$00,$00,$5A,$59,$58,$A6,$A6,$00,$00,$00,$5A,$57,$A6
.byte $A6,$A6,$00,$00,$58,$5A,$58,$00,$00,$3A,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$58,$58,$00,$3A,$00,$00,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$59,$58,$A6,$A6,$00,$00,$A0,$40,$44,$00,$A2,$10
.byte $00,$00,$A0,$00,$00,$00,$08,$44,$00,$57,$57,$59,$57,$57,$00,$00,$00,$58,$58,$5A,$59,$00,$00,$00,$00,$57,$58,$57,$57,$00,$00,$00,$59,$59,$58,$5A,$58,$00,$00,$00,$00,$59,$57,$57,$00,$00
.byte $00,$5A,$5A,$58,$5A,$A6,$A6,$00,$00,$00,$5A,$57,$57,$A6,$00,$00,$58,$59,$58,$5A,$00,$3A,$00,$00,$02,$00,$00,$88,$A2,$00,$00,$00,$0A,$40,$04,$A2,$A0,$51,$00,$00,$00,$5A,$59,$57,$00,$00
.byte $00,$58,$58,$58,$59,$58,$00,$00,$00,$00,$58,$5A,$57,$00,$00,$00,$59,$58,$58,$5A,$58,$00,$00,$57,$57,$57,$58,$57,$00,$00,$00,$5A,$58,$58,$5A,$A6,$A6,$00,$00,$57,$57,$58,$00,$00,$00,$00
.byte $58,$58,$59,$58,$00,$00,$00,$00,$A2,$00,$00,$08,$A0,$00,$00,$00,$00,$00,$00,$02,$28,$11,$00,$00,$00,$57,$00,$00,$00,$00,$00,$00,$00,$5A,$A6,$A6,$A6,$00,$00,$00,$57,$00,$00,$00,$00,$00
.byte $00,$00,$58,$00,$00,$00,$3A,$00,$00,$57,$57,$00,$00,$00,$00,$00,$00,$58,$58,$58,$00,$00,$00,$00,$58,$57,$00,$00,$00,$00,$00,$00,$58,$58,$58,$00,$00,$00,$00,$00,$00,$00,$12,$11,$00,$00
.byte $00,$00,$00,$11,$00,$00,$00,$00,$00,$58,$57,$57,$00,$00,$00,$00,$00,$59,$58,$59,$00,$00,$00,$00,$59,$59,$57,$A6,$A6,$A6,$00,$00,$5A,$58,$5A,$A6,$A6,$00,$00,$5A,$5A,$57,$00,$00,$00,$00
.byte $00,$58,$59,$5A,$00,$00,$00,$00,$58,$58,$57,$00,$00,$00,$00,$00,$58,$5A,$58,$00,$00,$00,$88,$40,$44,$04,$8A,$4A,$00,$00,$22,$00,$00,$00,$A0,$02,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00
.byte $00,$82,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$89,$9B,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$89,$9E,$A6,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00
.byte $83,$5E,$00,$00,$00,$40,$00,$30,$00,$00,$05,$40,$00,$00,$00,$0C,$01,$00,$05,$02,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$83,$5E,$A6,$A6,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00
.byte $89,$9E,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$40,$00,$00,$89,$9F,$00,$3A,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$88,$00,$00,$00,$00,$00,$02,$00,$00,$04,$05,$22,$00,$00,$00,$20
.byte $30,$00,$05,$20,$00,$00,$00,$00,$00,$00,$00,$00,$82,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$89,$9B,$00,$40,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$89,$9E,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$7D,$5E,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$50,$01,$0D,$01,$00,$20,$00,$00,$54,$00,$40,$00,$00,$00,$00,$00,$00,$00,$3C,$4C,$7E,$5E,$3A,$00
.byte $00,$00,$3A,$00,$00,$00,$00,$00,$00,$3D,$4D,$7F,$5E,$00,$00,$00,$40,$00,$00,$00,$3A,$00,$00,$00,$00,$3F,$95,$9E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$88,$9F,$00,$00,$00
.byte $00,$00,$00,$00,$00,$50,$55,$00,$00,$1C,$00,$10,$00,$50,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$00,$84
.byte $00,$00,$00,$00,$00,$3B,$00,$82,$00,$00,$00,$00,$83,$00,$85,$00,$3A,$00,$00,$00,$00,$00,$89,$9B,$00,$3A,$00,$83,$99,$86,$9A,$00,$00,$00,$00,$04,$00,$50,$00,$F0,$00,$00,$02,$05,$40,$50
.byte $0C,$FC,$00,$00,$00,$00,$00,$89,$5E,$00,$00,$00,$89,$99,$85,$99,$00,$00,$00,$00,$3A,$00,$89,$5E,$00,$00,$00,$89,$99,$86,$00,$3B,$00,$00,$00,$00,$00,$89,$9F,$00,$00,$00,$89,$9B,$85,$99
.byte $00,$00,$3A,$00,$00,$00,$88,$00,$00,$00,$00,$83,$9C,$86,$9A,$00,$00,$00,$00,$05,$00,$50,$0F,$3F,$00,$00,$00,$05,$00,$50,$00,$FF,$00,$00,$00,$00,$3A,$00,$3A,$00,$00,$00,$5D,$9E,$85,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5F,$9C,$86,$99,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$4E,$60,$9D,$85,$5B,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$50,$5F,$9C,$85,$99,$00
.byte $00,$00,$20,$11,$00,$50,$00,$FF,$00,$00,$04,$00,$00,$55,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$4F,$60,$9D,$85,$5C,$9A,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$3E,$5F,$9D,$85,$5C,$9A
.byte $00,$00,$3A,$00,$00,$00,$00,$00,$3C,$4C,$5F,$9C,$85,$99,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3D,$4D,$5F,$9D,$85,$5B,$00,$00,$00,$00,$08,$01,$55,$00,$FF,$00,$20,$00,$00,$50,$55,$00,$FF
.byte $00,$00,$00,$00,$00,$00,$3A,$00,$00,$3F,$60,$9D,$86,$5C,$9A,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$5F,$9E,$86,$5B,$00,$00,$00,$00,$00,$00,$00,$82,$9B,$00,$00,$60,$9D,$85,$99,$00,$00
.byte $00,$00,$00,$00,$00,$89,$9C,$00,$00,$61,$9C,$86,$9A,$3A,$00,$00,$08,$10,$00,$51,$00,$FF,$00,$00,$00,$50,$00,$50,$00,$BF,$00,$3A,$00,$00,$3A,$00,$89,$9E,$00,$00,$89,$9F,$85,$99,$00,$00
.byte $00,$00,$00,$00,$00,$88,$9F,$00,$00,$89,$99,$86,$9A,$00,$00,$00,$3B,$00,$00,$00,$00,$00,$00,$00,$89,$9A,$85,$9A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$88,$99,$87,$00,$00,$00,$00
.byte $00,$50,$00,$50,$0C,$FF,$00,$00,$00,$00,$80,$50,$0F,$FF,$00,$00,$3A,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$8A,$A0,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$40,$00,$00,$00,$8B,$A7,$00,$00,$00
.byte $3A,$00,$40,$40,$00,$00,$00,$3A,$00,$00,$8C,$68,$41,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$40,$00,$8D,$A1,$00,$00,$10,$00,$80,$C0,$00,$F0,$3F,$00,$C0,$34,$03,$04,$C1,$F0,$FF,$00,$00
.byte $00,$00,$00,$00,$00,$00,$8A,$A0,$00,$00,$00,$00,$40,$00,$3A,$00,$00,$00,$3A,$40,$00,$8B,$A7,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$8C,$68,$41,$00,$00,$00,$00,$00,$00,$00
.byte $3A,$00,$40,$00,$00,$8D,$A1,$00,$00,$00,$00,$00,$00,$00,$00,$C8,$F0,$0F,$FF,$30,$00,$00,$08,$0C,$F1,$3F,$FF,$00,$00,$00,$00,$40,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$40,$00,$00,$3A
.byte $00,$00,$3A,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$3A,$00,$00,$00,$3A,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$03,$04
.byte $10,$0C,$00,$34,$00,$00,$00,$C0,$00,$00,$01,$10,$00,$00,$00,$8E,$44,$71,$72,$72,$6C,$69,$6A,$6B,$6B,$69,$00,$94,$00,$00,$8E,$6A,$6B,$6D,$00,$6C,$69,$45,$00,$00,$69,$00,$93,$00,$00,$93
.byte $45,$00,$6C,$71,$6C,$43,$00,$00,$00,$69,$00,$00,$00,$00,$00,$00,$00,$6C,$72,$6C,$00,$00,$00,$00,$AC,$00,$00,$40,$05,$03,$00,$05,$00,$05,$00,$50,$45,$00,$03,$45,$04,$05,$00,$00,$A4,$00
.byte $00,$00,$6F,$6B,$6E,$00,$00,$00,$00,$00,$00,$00,$00,$A2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$94,$00,$00,$A3,$00,$00,$00,$00,$00,$00,$00,$00,$A4,$00,$00,$8E,$00,$00,$00,$00,$00
.byte $00,$94,$00,$00,$00,$00,$A2,$00,$00,$8E,$00,$50,$55,$44,$44,$55,$55,$05,$00,$50,$55,$05,$55,$55,$55,$05,$00,$00,$00,$00,$00,$00,$8E,$00,$00,$00,$00,$A3,$00,$00,$93,$00,$00,$A9,$00,$00
.byte $00,$8E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$69,$00,$00,$00,$93,$00,$00,$00,$00,$00,$00,$A9,$00,$00,$00,$69,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$69,$00,$00,$50,$55,$05,$55,$55
.byte $55,$05,$00,$50,$00,$05,$55,$55,$55,$05,$00,$00,$69,$6A,$6D,$00,$00,$00,$70,$6B,$6B,$6B,$6D,$69,$00,$00,$00,$69,$45,$6C,$00,$00,$00,$6C,$42,$71,$72,$6C,$69,$00,$00,$00,$AC,$A9,$6F,$6B
.byte $6B,$6B,$6E,$69,$00,$71,$6C,$69,$00,$00,$00,$00,$69,$72,$71,$71,$72,$72,$69,$A9,$00,$6C,$69,$00,$00,$50,$00,$11,$01,$C4,$00,$05,$00,$10,$05,$CC,$00,$45,$03,$05,$00,$73,$00,$00,$00,$00
.byte $73,$00,$00,$73,$00,$00,$00,$77,$77,$00,$74,$00,$00,$00,$00,$74,$00,$00,$74,$00,$00,$00,$77,$77,$00,$74,$00,$00,$00,$00,$74,$00,$00,$74,$00,$00,$00,$77,$77,$00,$75,$00,$00,$00,$00,$75
.byte $00,$00,$75,$00,$00,$00,$77,$77,$77,$10,$00,$10,$00,$01,$00,$00,$00,$00,$00,$40,$00,$04,$00,$00,$00,$73,$00,$00,$00,$73,$00,$00,$00,$73,$00,$00,$00,$77,$78,$00,$74,$00,$00,$00,$74,$00
.byte $00,$00,$74,$00,$00,$00,$77,$79,$00,$74,$00,$00,$00,$74,$00,$00,$00,$75,$00,$00,$00,$77,$78,$00,$75,$00,$00,$00,$75,$00,$00,$00,$00,$00,$00,$00,$77,$79,$00,$00,$00,$01,$00,$01,$00,$00
.byte $00,$00,$00,$04,$00,$01,$00,$00,$00,$73,$00,$00,$00,$73,$00,$00,$00,$00,$00,$00,$77,$78,$78,$78,$74,$00,$00,$00,$74,$00,$00,$00,$00,$00,$00,$77,$79,$79,$79,$74,$00,$00,$00,$74,$00,$00
.byte $00,$00,$00,$00,$77,$78,$78,$78,$75,$00,$00,$00,$75,$00,$00,$00,$00,$00,$00,$77,$79,$79,$79,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$73,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$77,$78,$78,$78,$74,$00,$00,$00,$00,$00,$00,$00,$73,$00,$00,$77,$79,$79,$79,$74,$00,$00,$00,$00,$73,$00,$00,$74,$00,$00,$77,$90,$46,$96,$75,$00,$00,$00,$00,$73,$00,$00
.byte $75,$00,$00,$77,$77,$77,$77,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$50,$00,$04,$00,$11,$00,$73,$00,$00,$00,$73,$00,$00,$00,$00,$73,$00,$77,$77,$77,$77,$74,$00,$00,$00,$74,$00,$00,$00
.byte $00,$74,$00,$77,$90,$46,$96,$74,$00,$00,$00,$74,$00,$00,$00,$00,$74,$00,$77,$77,$77,$77,$75,$00,$00,$00,$75,$00,$00,$00,$00,$75,$00,$77,$77,$77,$77,$00,$00,$01,$00,$10,$00,$44,$00,$00
.byte $00,$04,$00,$40,$00,$00,$00,$78,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$77,$77,$77,$77,$79,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$90,$46,$96,$77,$78,$00,$00,$00,$78,$00,$00,$00,$00
.byte $00,$77,$76,$76,$76,$77,$79,$00,$00,$00,$79,$77,$00,$00,$00,$00,$77,$90,$46,$96,$77,$00,$00,$00,$00,$00,$40,$44,$00,$00,$00,$00,$00,$00,$40,$44,$00,$78,$73,$00,$00,$77,$77,$00,$00,$00
.byte $00,$77,$76,$76,$76,$77,$79,$74,$00,$00,$77,$77,$00,$00,$00,$77,$77,$77,$77,$77,$77,$78,$74,$00,$00,$77,$77,$00,$00,$00,$77,$00,$00,$00,$77,$77,$79,$75,$00,$00,$77,$77,$00,$00,$00,$77
.byte $00,$00,$00,$77,$77,$10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$78,$73,$00,$00,$77,$77,$00,$00,$00,$77,$00,$00,$00,$77,$77,$79,$74,$00,$00,$77,$77,$00,$00,$00,$77
.byte $78,$00,$00,$77,$77,$78,$74,$00,$00,$77,$77,$00,$00,$00,$77,$79,$00,$00,$77,$77,$79,$75,$00,$00,$77,$77,$00,$00,$00,$00,$77,$00,$00,$77,$77,$10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00
.byte $00,$00,$00,$00,$00,$78,$73,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77,$79,$74,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77,$78,$74,$00,$00,$00,$77,$77,$00,$00,$00,$00
.byte $00,$00,$77,$77,$79,$75,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77,$10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$73,$00,$00,$00,$00,$00,$00,$00,$00,$78,$76,$00,$76,$77,$79,$74,$00,$00,$00,$00,$00,$00,$00,$00,$79,$90
.byte $46,$96,$77,$78,$74,$00,$00,$00,$00,$76,$00,$00,$00,$78,$76,$00,$76,$77,$79,$75,$00,$00,$00,$00,$76,$00,$00,$00,$79,$77,$00,$77,$77,$10,$00,$00,$00,$00,$40,$44,$00,$40,$00,$00,$00,$00
.byte $00,$00,$00,$78,$73,$00,$00,$00,$77,$78,$00,$00,$00,$78,$76,$00,$76,$77,$79,$74,$00,$00,$00,$77,$79,$00,$00,$00,$79,$90,$46,$96,$77,$78,$75,$00,$00,$00,$77,$78,$00,$00,$00,$78,$76,$00
.byte $76,$77,$79,$00,$00,$00,$00,$77,$79,$00,$00,$00,$79,$77,$00,$77,$77,$10,$00,$00,$00,$00,$40,$44,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
.byte $56,$56,$00,$03,$00,$00,$00,$00,$00,$00,$48,$49,$00,$00,$00,$56,$56,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56
.byte $56,$00,$00,$00,$00,$FF,$00,$50,$55,$00,$00,$00,$00,$33,$00,$50,$55,$00,$00,$7B,$00,$7B,$00,$7B,$00,$00,$7B,$7B,$00,$7B,$00,$00,$00,$00,$7B,$00,$7B,$00,$7B,$00,$00,$7B,$00,$00,$7B,$00
.byte $00,$00,$00,$7B,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$7B,$00,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$AA,$00,$00,$7B,$00,$00,$00,$05,$00,$0A,$50,$00,$0F,$00,$00,$05,$00,$02,$00,$00,$0F
.byte $00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$00,$00,$00,$00,$7B,$00,$00,$AA,$00,$00,$00,$64,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$64,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$64,$00,$00,$00,$7C,$00,$00,$00,$AA,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$AD,$00,$00,$00,$7C,$00
.byte $00,$00,$00,$00,$00,$AD,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AD,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$7B,$00,$00,$00,$7B,$00,$00,$00,$00,$7B,$00,$00,$7B,$00,$00,$7B,$00,$00,$00,$7B,$00,$00,$7B,$00,$7B,$00,$00,$7B,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$08,$40,$A0,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12,$17,$1C,$21,$26,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$13,$18,$1D,$22,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$14,$19,$1E,$23,$28,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$15,$1A,$1F,$24,$29,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$16,$1B,$20,$25,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$3F,$42,$44,$46,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$70,$5C,$5D,$48,$4C,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$41,$71,$72,$73,$74,$75,$76,$00,$00,$00,$00,$00,$00,$00,$00,$00,$43,$45,$47,$49,$4D,$51,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4A,$4E,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$4B,$4F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$35,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$33,$34,$5A,$36,$37,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$48,$05,$C4,$00,$00,$00,$00,$00,$00,$00,$53,$67,$68,$69,$6A,$65,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$01,$22,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$52
.byte $57,$00,$00,$31,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2B,$60,$61,$62,$63,$64,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2C,$2E
.byte $2F,$00,$00,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$39,$3B,$5B,$3C,$3D,$3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$C8,$0C,$00,$00,$00,$00,$00,$00,$00,$54,$6B
.byte $6C,$6D,$6E,$6F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$32,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$58,$56,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$0B,$59,$03,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$05,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00
.byte $00,$00,$00,$00,$80,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$80,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$11,$00,$00
.byte $00,$00,$00,$00,$00,$40,$00,$00,$01,$40,$00,$F0,$00,$00,$04,$01,$80,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$01,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$80,$00,$00
.byte $00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$80,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$80,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00
.byte $00,$F0,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$01,$00,$00,$80,$00,$00,$00,$01,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00
.byte $77,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$79,$00,$00,$00,$00,$00,$00,$C0,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$40,$30,$00,$00,$00,$00,$00,$0C,$0E,$00,$00,$00,$00,$00
.byte $78,$00,$00,$00,$00,$00,$00,$01,$0D,$0F,$00,$00,$00,$80,$00,$7A,$00,$80,$00,$00,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7B,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$80,$00,$00,$00,$00,$00,$C0,$40,$C0,$00,$20,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$0C,$0E,$00,$00,$00,$00,$00,$80,$00,$00,$01,$00,$00,$00,$00,$0D,$0F,$00,$01,$00,$00
.byte $00,$80,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00
.byte $7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A
.byte $7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A
.byte $7A,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$20,$20,$20,$20,$20,$2A,$20,$03,$04,$05,$06,$07,$20,$08,$20,$20,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$20,$20,$2B,$2C,$2B,$2C,$21,$2D,$21,$2F,$21,$30,$20
.byte $31,$35,$36,$37,$38,$39,$21,$3A,$20,$3E,$3A,$21,$21,$21,$21,$20,$32,$40,$42,$3C,$20,$44,$45,$21,$21,$43,$47,$33,$48,$22,$39,$21,$49,$21,$4A,$20,$35,$31,$21,$2D,$21,$21,$21,$20,$31,$35
.byte $21,$4E,$4B,$4B,$2E,$21,$36,$21,$2F,$4A,$21,$36,$21,$2D,$21,$49,$21,$4D,$2E,$21,$21,$4F,$22,$4E,$50,$2F,$37,$30,$39,$37,$22,$36,$3E,$21,$38,$21,$51,$4B,$3D,$21,$3F,$22,$22,$52,$53,$55
.byte $20,$53,$3B,$54,$23,$23,$23,$22,$22,$56,$57,$4C,$4C,$21,$21,$3D,$22,$58,$3D,$53,$22,$22,$22,$3C,$20,$59,$3C,$5A,$5B,$53,$22,$20,$20,$5A,$5B,$21,$3E,$21,$37,$55,$35,$22,$5C,$21,$3E,$21
.byte $37,$20,$20,$31,$3A,$36,$37,$2F,$4D,$5E,$5F,$60,$61,$21,$33,$41,$42,$48,$21,$39,$21,$49,$21,$4A,$21,$62,$2F,$63,$30,$0F,$10,$0F,$10,$22,$50,$50,$21,$34,$22,$21,$3D,$20,$68,$20,$69,$6A
.byte $20,$6B,$20,$20,$15,$20,$20,$11,$12,$13,$14,$20,$20,$80,$81,$20,$20,$82,$83,$20,$20,$20,$84,$20,$20,$8D,$20,$20,$7F,$20,$20,$20,$B3,$20,$20,$20,$3E,$20,$40,$42,$20,$43,$20,$20,$47,$20
.byte $20,$48,$20,$20,$20,$0F,$10,$0F,$10,$20,$20,$42,$20,$20,$20,$DB,$DC,$DF,$E0,$E3,$E4,$20,$F3,$20,$F4,$F5,$20,$F6,$20,$85,$86,$87,$88,$89,$8A,$8B,$8C,$20,$20,$78,$79,$20,$20,$7C,$7D,$20
.byte $20,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$CE,$CE,$CF,$CF,$20,$20,$20,$20,$00,$00,$00,$00,$22,$22,$22,$22,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$65,$66,$67
.byte $68,$69,$6A,$6B,$6C,$6F,$70,$71,$71,$75,$73,$7B,$7B,$70,$70,$71,$71,$70,$70,$74,$71,$70,$77,$71,$71,$85,$86,$87,$88,$89,$8A,$8B,$8C,$FB,$FB,$FC,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$AB,$AC,$B0,$B1,$3F,$3F,$41,$41,$44,$44,$45,$46,$45,$46,$45,$46,$49,$4A,$4B,$4C,$4D,$4E,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C,$5D,$5E,$5F,$60,$61,$62,$62,$63
.byte $63,$00,$01,$02,$03,$08,$08,$09,$09,$04,$05,$06,$07,$0A,$0B,$0C,$0D,$DF,$E0,$E1,$E2,$1F,$24,$25,$26,$13,$14,$27,$12,$02,$01,$01,$02,$F0,$F1,$F2,$F2,$F7,$F8,$F9,$FA,$8E,$8F,$90,$90,$91
.byte $92,$90,$90,$93,$94,$90,$90,$20,$20,$01,$02,$20,$20,$00,$00,$20,$20,$78,$79,$20,$20,$71,$71,$20,$20,$72,$73,$20,$20,$73,$73,$20,$20,$75,$73,$20,$20,$73,$76,$20,$20,$7C,$7D,$20,$20,$7E
.byte $7E,$97,$98,$9F,$A0,$99,$9A,$A1,$A2,$9B,$9C,$A3,$A4,$9D,$9E,$A5,$A6,$20,$20,$3F,$3F,$20,$20,$1B,$1C,$11,$0E,$0F,$10,$20,$20,$17,$18,$20,$20,$19,$1A,$20,$20,$3F,$42,$20,$20,$3E,$3F,$95
.byte $96,$90,$90,$0F,$10,$15,$16,$1D,$1E,$20,$20,$00,$00,$20,$20,$64,$64,$20,$20,$6D,$6E,$20,$20,$72,$73,$20,$20,$73,$73,$20,$20,$7A,$7A,$20,$20,$75,$73,$20,$20,$73,$76,$20,$20,$A7,$A8,$20
.byte $20,$AD,$AE,$B2,$20,$41,$41,$20,$20,$41,$43,$20,$20,$40,$41,$20,$20,$FF,$FF,$FF,$FF,$20,$10,$20,$10,$A9,$AA,$20,$AF,$0F,$10,$0F,$10,$20,$3E,$20,$40,$20,$F3,$20,$F4,$FF,$FF,$FF,$FF,$42
.byte $20,$43,$20,$F5,$20,$F6,$20,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$20,$20,$20,$20,$20,$08,$20,$20,$2D,$20,$32,$20,$35,$36,$37,$38,$20,$20,$20,$3B,$25,$20,$20,$20,$20,$20,$3C,$20,$20,$39,$20
.byte $20,$1D,$1E,$16,$17,$20,$1A,$1B,$1C,$20,$20,$20,$26,$3D,$24,$27,$28,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$20,$2A,$20,$03,$04,$05,$06,$07,$87,$88,$89,$8A,$20
.byte $8B,$8C,$8D,$8E,$8F,$90,$91,$92,$20,$93,$94,$95,$96,$97,$98,$99,$9A,$F4,$22,$9C,$9D,$9E,$9F,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$20,$AA,$9B,$22,$AB,$AC,$AD,$AE,$AF,$B0,$B1,$B2,$B3
.byte $B4,$B5,$B6,$B7,$B8,$20,$B9,$BA,$BB,$BC,$BD,$F0,$BE,$AC,$BF,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$F2,$CD,$CE,$CF,$D0,$F3,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$F1,$D9,$DA,$DB
.byte $DC,$DD,$DE,$B2,$B3,$B4,$B5,$B6,$20,$B7,$20,$20,$20,$B8,$B8,$C0,$20,$C1,$20,$C9,$20,$20,$20,$20,$CA,$20,$20,$20,$20,$20,$D3,$D8,$20,$D9,$20,$20,$20,$20,$8D,$20,$90,$20,$91,$20,$96,$20
.byte $20,$20,$9F,$20,$20,$20,$20,$20,$A4,$20,$A9,$AA,$AB,$20,$20,$20,$6C,$20,$6F,$20,$20,$70,$71,$72,$73,$20,$E6,$20,$E7,$20,$82,$20,$83,$20,$20,$20,$88,$20,$20,$20,$28,$20,$20,$29,$2A,$20
.byte $20,$2B,$20,$2C,$2D,$33,$34,$32,$20,$39,$3A,$3B,$3C,$20,$43,$41,$42,$48,$49,$20,$4A,$20,$20,$4F,$50,$55,$56,$57,$58,$61,$62,$5B,$5C,$65,$66,$5D,$5E,$67,$68,$5F,$60,$69,$6A,$20,$6B,$20
.byte $74,$6E,$6F,$77,$78,$70,$71,$79,$7A,$72,$73,$7B,$7C,$20,$7D,$81,$82,$80,$20,$85,$86,$20,$B9,$BA,$BB,$EA,$20,$8E,$8F,$20,$20,$6D,$6E,$1F,$3A,$18,$19,$33,$34,$20,$20,$C2,$C3,$20,$C4,$29
.byte $2A,$2E,$2F,$2B,$2C,$30,$31,$97,$98,$99,$9A,$78,$79,$7A,$7B,$3D,$3E,$44,$45,$4B,$4C,$51,$52,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$BC,$BD,$BE,$BF,$C5,$C6,$C7,$C8,$CB,$CC,$CD,$CE,$CF,$D0,$D1
.byte $D2,$D4,$D5,$D6,$D7,$AC,$AD,$AE,$AF,$B0,$B1,$B1,$B0,$92,$93,$94,$95,$9B,$9C,$9D,$9E,$A0,$A1,$A2,$A3,$A5,$A6,$A7,$A8,$74,$75,$76,$77,$7C,$7D,$7E,$7F,$7E,$7F,$80,$81,$84,$85,$86,$87,$89
.byte $8A,$8B,$8C,$2E,$2F,$35,$36,$30,$31,$37,$38,$3F,$40,$46,$47,$4D,$4E,$53,$54,$59,$5A,$63,$64,$6C,$6D,$75,$76,$7E,$7F,$83,$84,$1D,$09,$1E,$0B,$1F,$1F,$29,$29,$22,$1F,$24,$23,$1F,$22,$23
.byte $24,$09,$0A,$0B,$0C,$00,$00,$00,$00,$20,$20,$20,$20,$FF,$FF,$FF,$FF,$20,$20,$01,$02,$E8,$E9,$20,$20,$00,$00,$00,$00,$6C,$83,$00,$81,$0A,$84
; Character memory
.segment "CHARS"
  .incbin "tfrr.chr"
