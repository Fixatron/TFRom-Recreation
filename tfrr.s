;;Custom variables
plr_gravity             = $14
vert_wpn_speed          = $FC ; inc speed of vertical and diagonal bullets $FC, positive number goes down, 00 is level shot
hori_wpn_speed          = $04 ; inc speed of horizontal and diagonal bullets $04, positive number goes right, 00 is supposedly vertical, lo bytes arnt considered because they're too small of increments but still part of the game engine
max_bullets             = $04 ; max bullets on screen allowed
max_bullet_frames       = $20 ; how many frames the bullet is on screen for
missile_frames_int      = $30 ; how many frames the missile is on screen for
max_missile_frames      = $40 ; max frames the missile is on screen for before exploding
plr_max_jmp_time        = $0C
plr_init_jmp_speed      = $FC ; vertical up speed when player presses jump button, player slows down from there because of gravity
horiz_lvl_length        = $0B
sideroom_time           = $05
plr_y_wpn_offset        = $06 ; how high from midsection of plr do we set the new bullet
plr_x_wpn_offset        = $00
missile_speed           = $06
missile_gravity         = $20
;;Custom defines
current_enemy           = $0D

timer_lo_byte           = $19
timer_hi_byte           = $1A
which_player            = $1B     ; 00= player 1, ff= player 2
rtn_trk_0               = $1C
rtn_trk_a               = $1D     ; $80 = title screen, 40=paused 10 = title screen initialized, 04= start pushed at title, 08=level start/game over, 00= in game. 0bit = stuff in stack
demo_status             = $1E     ; ff= demo, 00= no demo
flash_counter           = $1F
boss_explosion_counter  = $20
sel_status              = $21     ; selection status for title screen, 0= 1 player, FF=2 players
state                   = $22     ; level state %0000 0000 start pushed at title, level complete, warp 2 stages, sideroom trigger,?,trigger warp zone,explode player,lvl end chkpoint reached  01 = level checkpoint reached
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
player_sprite_holder    = $34       ; normally: bot=04 truck=00
transform_input_timer   = $35
plr_sprite_status       = $36 ; 00000000 = truck,transforming,jumping,flying,stop flying,0,0,0 (40= bot to truck, C0= truck to bot)
plr_spr_aftr_trnsfrm    = $37 ; useless******
wpn_timer               = $38
wpn2_timer              = $39
plr_y_speed_lo          = $3A
plr_y_speed_hi          = $3B
plr_x_speed_lo          = $3C
plr_x_speed_hi          = $3D
plr_max_y_speed_lo      = $3E
plr_max_y_speed_hi      = $3F
plr_max_x_speed_lo      = $40
plr_max_x_speed_hi      = $41
player_acceleration     = $42
enemy_speed_lo          = $43
enemy_speed_hi          = $44
frame_counter_96        = $45   ; Resets every $60 frames, Counts to $18 by increments of 4, to indicate that the subtitle is done writing
unram_17                = $46

stage_boss              = $48   ; 00 is level, 01 is boss
eny_status_ram          = $49
eny_time_ram            = $4A   ; related to the boss wpn timer
level_backup            = $4B
eny_chkpt_cntr                 = $4C
num_bosses              = $4D   ; only stage 2 has 2 bosses
jump_hold               = $4E   ; how long was jump button held for, 0c is max, 02 is about the lowest
trnsfrmng_frame_counter = $4F
plr_grnd_col_state      = $50   ; 0= standing 2= falling 4=alt mode 6=jumping/flying 
plr_x_pos_hi_diff       = $51
plr_y_pos_hi_diff       = $52
power_up                = $53   ; %0000 0000 Flight, Dbl Shot, Barrier, *, *, *, *, *
hits_taken              = $54
code_press              = $55
bk_yScrlLo              = $56
bk_yScrlHi              = $57
bk_plrYPosLo            = $58
bk_plrYPosHi            = $59
bk_plrXPosLo            = $5a
bk_plrXPosHi            = $5b
bk_plrXProgLo           = $5c
bk_plrXProgHi           = $5d
bk_plrXProgPg           = $5e
bk_plrYProgLo           = $5f
bk_plrYProgHi           = $60
bk_plrYProgPg           = $61

room_timer_lo           = $66
room_timer_hi           = $67
sideroom_state          = $68
lives                   = $69
current_level           = $6A     ; $00=lv1,$02=lv2,$04=lv3,$06=lv4,$08=lv5,$0A=lv6,$0C=lv7,$0E=lv8,$10=lv9,$12=lv10 $15=Prime Brainwave screen after title screen odd levels are bosses, $16 is mining guy, 17 is brainwaves coming in on magnus, level $18 is guardian room, 1D is kinkyu shirei endscreen, 
bk_crnt_lvl             = $6B     ; used to backup current level when going to a secret area or side room
plr_x_prog_lo           = $6C
plr_x_prog_hi           = $6D
plr_x_prog_pg           = $6E
plr_y_prog_lo           = $6F
plr_y_prog_hi           = $70
plr_y_prog_pg           = $71
subtitle_timer          = $72
game_cmplt_cnt          = $73     ; increment ever time a game is completed
rodimus_ram             = $74
sub_state               = $75     ; 0000 0xxx : side room loaded, sideroom exited(dont reload), sideroom timeout, , | last 3 bytes are used to address the sideroom checkpoint and offset the current level with 14
lvl9_clear              = $76
chkpt_counter           = $77
score_1_up_lo           = $78   ; next score needed for 1S-up
score_1_up_mid          = $79   
score_1_up_hi           = $7A 
unused_ram_1            = $7B 

; just some notes from Venutech
; it may seem like I use the term stage and level interchangably, but level discretely reffers to the part before the boss and stage could refer to the same thing or both the level and the boss, because the game has an intro before the whole stage and none for the boss.
;
; there's an error in samp_tf2010_t, one of the notes has a length of $41, which should be $01
; temporary other player ram
other_pl_stored_data    = $81
; $81 = other player lives
; $82 = other player level
; $83 = other player bkup level
; $84 = plr x prog fraction
; $85 = plr x prog low
; $86 = plr x prog high
; $87 = plr y prog fraction
; $88 = plr y prog low
; $89 = plr y prog high
; $8A = 
; 
; $8C = rodimus_ram
palette_data_start      = $99
palette_data_start_word = $0099

; palette and nametable ram
text_flash_pal_ram_B    = $A7       ; quite useless
text_flash_pal_ram      = $A8

player_palette_ram      = $AA
unused_ram_2            = $B8
nametable_addr_hi       = $B9
nametable_addr_lo       = $BA
palette_addr_hi         = $BB       ; palette address starts at 23C0 or 27C0 for horizontal scrolling
palette_addr_lo         = $BC
newTileColumnStart      = $BD

nextSpriteDataLoadStart = $00DB

; controller input ram
controller_current      = $F0
controller_last         = $F1
controller_p1_current   = $F2
controller_p2_current   = $F3
controller_p1_last      = $F4
player_direction        = $F5         ; 01 for right, 00 for left

; PPU ram
ram_PPU_CTRL            = $F6
ram_PPU_Mask            = $F7

x_scroll                = $FA
y_scroll_lo             = $FB
y_scroll_hi             = $FC
rng_ram                 = $FD
rng_counter             = $FE

; audio ram
audio_ram_start         = $0300
trk_status              = $0300
trk_ch                  = $0301
trk_addr_lo             = $0302
trk_addr_hi             = $0303
trk_inter               = $0304
trk_timer               = $0305
trk_apu_ctrl            = $0306
trk_note_len            = $0307
trk_sweep               = $0308
trk_loop_cnt            = $0309
audio_ram_A             = $030A
audio_ram_B             = $030B
audio_ram_C             = $030C
trk_cres_length         = $030D
trk_cres_inter          = $030E
trk_cres_timer          = $030F

jump_sound_ram          = $0350

apu_status_ch0          = $0380
apu_status_ch1          = $0381
apu_status_ch2          = $0382
apu_status_ch3          = $0383
apu_current_ch_ram      = $0384
apu_status_ram_5        = $0385
apu_status_ram_6        = $0386
apu_status_ram_7        = $0387
apu_status_ram_8        = $0388
apu_status_ram_9        = $0389

; some stuff, not sure, yet
some_ram_start          = $0400

; player weapon ram
weapon_sprite_data_start= $0500
wpn_status              = $0500
wpn_substatus           = $0501
wpn_x_pos_lo            = $0502
wpn_x_pos_hi            = $0503
wpn_x_pos_page          = $0504
wpn_y_pos_lo            = $0505
wpn_y_pos_hi            = $0506
wpn_y_pos_page          = $0507
wpn_sprite_type         = $0508
wpn_x_spd_lo            = $0509
wpn_x_spd_hi            = $050A
wpn_y_spd_lo            = $050B
wpn_y_spd_hi            = $050C
bullet_timer            = $050D

; enemy weapon ram
eny_wpn_status          = $0540
eny_wpn_substatus       = $0541
eny_wpn_x_pos_lo        = $0542
eny_wpn_x_pos_hi        = $0543
eny_wpn_x_pos_page      = $0544
eny_wpn_y_pos_lo        = $0545
eny_wpn_y_pos_hi        = $0546
eny_wpn_y_pos_page      = $0547
eny_wpn_sprite_type     = $0548
eny_wpn_x_speed_lo      = $0549
eny_wpn_x_speed_hi      = $054A
eny_wpn_y_speed_lo      = $054B
eny_wpn_y_speed_hi      = $054C
eny_wpn_timer           = $054D

; enemy ram
enemy_sprite_data_start = $0600
eny_spr_status          = $0600     ; 80=alive,90=hit/transform,00=inactive,d0=explode,f0=explode
eny_spr_substatus       = $0601     ; 01=vert direction, 08= no damage to player 19=frozen,20=stationary powerup,80=flip scprite horizontal %0000 0000 flip sprite horiz,,powerup?,,no damage to player,,horiz direction,vert direction
eny_spr_x_pos_lo        = $0602
eny_spr_x_pos_hi        = $0603
eny_spr_x_pos_page      = $0604
eny_spr_y_pos_lo        = $0605
eny_spr_y_pos_hi        = $0606
eny_spr_y_pos_page      = $0607
eny_spr_type            = $0608     ; 00= jet, 01=tank,02=running bot,03=lobster,04=rocket,05=plumbus,06=UFO,07=vocano?,08=platform,09=?,10=crab,13=gundam,14=ratbat,15=ratbat tape,18=rosie,1a=starscream,1b=starscream bot,1c=cutebot,1f=energon cube,20=explosion A,21=cutebot,22=explosion B,26=wall turret,30=jet,34=P powerup,35=F,36=D,37=B,38=1up,39=R,3a=O,3b=d,3c=i,3d=m,3e=u,3f=s
eny_x_spd_lo            = $0609
eny_x_spd_hi            = $060A
eny_y_spd_lo            = $060B
eny_y_spd_hi            = $060C
eny_exp_timer           = $060D
eny_altmode             = $060E
eny_boss_wpn_timer      = $060F

; OAM ram
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
;;APU_ = $400D  ; Unused (yes, noise channel doesnt use this register)
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
    
  .byte $4E, $45, $53, $1A  ; iNES header identifier ().byte "NES", $1A  )
  .byte 2               ; 2x 16KB PRG code
  .byte 4               ; 4x  8KB CHR data
  .byte $31             ; mapper 1, vertical mirroring
  .byte $00             ; 7th byte is 0 so it stays legacy iNES header, I would like to update it to iNES 2.0, but not sure, I guess I could try but its got my tag
  .byte $56, $65, $6E, $75, $74, $65, $63, $68 ; $21 couldnt include exclamation mark ;This says "VENUTECH!"
 
.segment "VECTORS"
  ;; When an NMI happens (once per frame if enabled) the label nmi:
  .addr nmi
  ;; When the processor first turns on or is reset, it will jump to the label reset:
  .addr reset
  ;; External interrupt IRQ (unused)
  .addr irq

; "nes" linker config requires a STARTUP section, even if it's empty
.segment "STARTUP"
; important stuff for safe chr bank switching @$8000
.byte $00,$01,$02,$03
aud_tf_insig_a:         ; TF insignia flip sound info a @$8004
.byte $05,$01,$0F,$00,$34,$04,$36,$02,$37,$04,$30,$02,$30,$10,$FF
aud_tf_insig_b:         ; TF insignia flip sound info b @$8013
.byte $15,$01,$0F,$00,$2B,$04,$31,$02,$32,$04,$27,$02,$27,$04,$60,$10,$FF
aud_tf_insig_c:         ; TF insignia flip sound info c @$8024
.byte $25,$7F,$00,$00
.byte $24,$04,$26,$02,$27,$04,$20,$02,$20,$04,$24,$01,$25,$01,$26,$01,$27,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$30,$04,$FF
aud_tf_insig_d:         ; TF insignia flip sound info d @$8045
.byte $35,$00,$00,$00
.byte $03,$04,$03,$02,$03,$04,$03,$02,$03,$04,$FF
aud_game_over_a:        ; game over a @$8054
.byte $05,$01,$0F,$00
.byte $39,$04,$39,$02,$37,$02,$1F,$02,$37,$02,$39,$04,$40,$02,$3B,$02,$37,$02,$32,$02,$34,$02,$37,$06,$39,$02,$FF
aud_game_over_b:        ; game over b @$8073
.byte $15,$01,$0F,$00
.byte $24,$04,$24,$02,$22,$02,$1F,$02,$22,$02,$24,$04,$20,$0A,$22,$06,$24,$02,$FF
aud_game_over_c:        ; game over c @$808A
.byte $25,$7F,$00,$00
.byte $29,$04,$29,$02,$27,$02,$1F,$02,$27,$02,$29,$04,$25,$0A,$27,$06,$29,$02,$FF
aud_game_over_d:        ;tftheme/game over d @$80a1
.byte $35,$00,$00,$00
.byte $03,$04,$03,$02,$03,$04,$03,$02,$03,$04,$03,$02,$B5,$FF,$1F,$04,$03,$02,$FF
aud_rod_endscreen:      ; rodimus endscreen/bumblebee screen @$80B8
.byte $12,$02,$1F,$00
.byte $EF,$02,$40,$01,$45,$01,$47,$01,$50,$01,$B6,$FC,$DF,$02,$40,$01,$45,$01,$47,$01,$50,$01,$B7,$FC,$BF,$F4
aud_subtitle_a:         ; Subtitle sound a @$80D6
.byte $30,$00,$00,$00
.byte $07,$10,$FF
aud_subtitle_b:         ; Subtitle sound b @$80DD
.byte $10,$01,$01,$00
.byte $69,$10,$FF
aud_subtitle_c:         ; Subtitle sound c @$80E4
.byte $10,$01,$1F,$00
.byte $EF,$01,$29,$01,$24,$01,$22,$01,$19,$01,$B8,$FC,$FF
; unused buffer area
.byte $FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
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
  sta PPU_CTRL        ; @$2000  turn off screen
  nop
;; second wait for vblank, PPU is ready after this
;; could have done other things first, like clear ram, but thats okay
vblankwait2:
  lda PPU_STATUS      ; @$2002
  bpl vblankwait2     ; wait until sprite 0 is hit?
  ldx #$FF            ; enable X index
  txs                 ; enable stack
  lda #$00
  sta sel_status      ; reset sel_status
  sta APU_MODCTRL     ; disable DMC IRQs @$4010
  lda #$40            ; load #$40 (00000100)
  sta JOY2_FRAME	    ; disable APU frame IRQ @$4017
  lda #$E8            ; load initial high score
  sta hiScoreLo       ; reset hi-score to 10,000
  lda #$03
  sta hiScoreMid
  lda #$00
  sta hiScoreHi
  jsr clear_player_scores
demo_rtn:
  jsr set_PPU_MASK_b  ; remove sprites and background from screen
  jsr set_PPU_CTRL_b 
  lda #$FF
  sta demo_status       ; store $FF to $1E
  lda #$10
  sta rtn_trk_a       ; store $10 to $1D
  jsr draw_title              ; @$CCC6
  jsr title_timer_rtn       ; @$CD47 initialize title timer and music
  jsr reset_player_ram           ; @$834C
  lda #$00                      ; load 0 lives and first level for demo
  sta current_level             ; first level for demo
  sta lives                     ; store 0 lives for demo
  lda #$80                      ; ready $80 for subtitle and 96 frame counter
  sta frame_counter_96
  jsr set_demo_pl1              ; Set player 1 for demo
  jmp demo_rtn                 ; jump back up to repeat initializing level
title_loop_jmp:
  jsr start_pushed_at_title     ; this subroutine seems to be only used just when start is pushed at title before Ultra Magnus shows on flashing screen
  jsr disable_audio_channels    ; disable audio channels and set audio ram statuses to $FF
  jsr clear_player_scores       ; Clear player scores
  lda #$00
  sta demo_status
  jsr reset_player_ram
  lda sel_status                ; 0= 1 player ff= 2 players selected on title screen
  bne set_demo_pl1              ; branch if 2 players is selected @$22=$FF
  lda #$FF
  sta other_pl_stored_data      ; put FF at other player lives storage data if 1 player is selected
set_demo_pl1:
  lda #$00
  sta which_player              ; set current player to player 1 
stage_intro_rtn:
  jsr pre_stage_screen          ; Setup the pre stage screen
  lda #$00                      ; clear unknown ram locations
  sta room_timer_lo
  sta room_timer_hi
  sta sideroom_state
plr_lvl_start_pos:
  lda #$00
  sta x_scroll                  ; clear x and y scroll in ram
  sta y_scroll_lo
  sta y_scroll_hi
  sta power_up                  ; clear powerup
  sta hits_taken                ; clear hits taken
  sta frame_counter_96          ; reset 96 frame counter
  sta plr_x_prog_lo             ; reset player current_level progression
  sta plr_x_prog_hi
  sta plr_x_prog_pg
  sta plr_x_pos_lo
  sta plr_y_pos_lo
  sta chkpt_counter             ; counts hit checkpoints in level 9
  lda #$1F
  sta lvl9_clear                ; this value gets reduced with each checkpoint and needs to be cleared to 0 to complete the level
  ldy current_level
  lda stage_boss_table,Y        ; use a lookup table to find the odd levels @$C92F
  sta stage_boss                ; store 1 for boss or 0 for stage
  lda stage_orientation_table,Y ; load stage orientation table @$CC77
  sta stage_orientation         ; store in ram
  and #$40                      ; check for upwards levels, 3 or 10
  beq reset_vert_prog           ; branch if not to setup horizontal level
  lda #$00
  sta plr_y_prog_lo             ; store 00 
  lda #$C0
  sta plr_y_prog_hi             ; store C0 plr starting y position for stage 3 and 10
  lda #$03
  sta plr_y_prog_pg             ; store 03 plr starting y page for stage 3 and 10
  jmp get_plr_start_position    ; skip the part where we clear the player progression in RAM if level isnt 3 or 10
reset_vert_prog:
  lda #$00                      ; clear enemy offsets on all levels except 3 and 10
  sta plr_y_prog_lo        
  sta plr_y_prog_hi        
  sta plr_y_prog_pg         
get_plr_start_position:
  tya
  asl
  tay                           ; multiply level index offset by 2
  lda player_y_pos_tbl,Y        ; @$C9D3
  sta plr_y_pos_hi              ; store to player vertical position
  lda player_x_pos_tbl,Y        ; @$C9D4
  sta plr_x_pos_hi              ; store to player horizontal position
pre_stage_prep:
  lda #$00
  sta controller_p1_current     ; clear player 1 controller input
  sta plr_sprite_status         ; reset flight status
  sta subtitle_timer            ; reset subtitle timer
  sta eny_chkpt_cntr
  sta rtn_trk_0
  sta state
  sta rtn_trk_a
  sta jump_hold
  sta transform_input_timer
  sta plr_x_speed_lo
  sta plr_x_speed_hi
  sta plr_y_speed_lo
  sta plr_y_speed_hi
  sta plr_spr_aftr_trnsfrm
  sta wpn_timer
  sta plr_max_y_speed_lo
  sta plr_max_x_speed_lo
  lda #$02
  sta plr_max_x_speed_hi
  sta unram_17
  lda #$03
  sta plr_max_y_speed_hi        ; set max y speed of 03
  lda #$00
  sta player_sprite
  lda #$01
  sta player_direction
  lda current_level             ; load level
  lsr                           ; divide by 2
  tay                           ; store in Y index
  lda stage_misc_tbl_1,Y        ; @$C94C How many bosses are there in the boss battle. Only Stage 2 has 2 bosses
  sta num_bosses                ; store number of bosses @$4D
  ldy current_level             ; load level to Y
  lda stage_boss_table,Y
  sta stage_boss                ; store if stage or boss in ram
  lda stage_orientation_table,Y
  sta stage_orientation         ; store stage orientation to ram
  lda game_cmplt_cnt            ; load @$73 how many times the game was completed
  sta $00
  cmp #$07                      ; check if game is beaten 7 times
  bcc :+
  lda #$0F
  sta $00                       ; once the game is completed 7 times reduce the player's accelleration?!?!?! damn, thats cruel
:                               ; b_822f
  lda player_acceleration_tbl,Y ; load player speed, although its always 20, except stage 7
  sec
  sbc $00
  sta player_acceleration
  lda chr_rom_bank_tbl,Y        ; Load CHR Rom Bank, Y is the Stage Number
  tax
  lda $8000,X                   ; Select CHR Rom bank
  sta $8000,X
  jsr clear_sprite_ram          ; @$A7C3
  jsr ready_level               ; @$8ACB
  jsr play_stage_music          ; @$D87C play stage level music
  jsr level_sub_a               ; @$A5DA
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
vblankwait3:
  lda #$30
  bit state
  bvs b_8267
  bmi b_82ac
  beq b_8260
  jmp main_jmp_1
b_8260:
  lda controller_p1_current
  and #$04                      ; is select pressed?
  jmp vblankwait3
b_8267:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda current_level
  cmp #$10
  bne b_827d
  lda lvl9_clear
  beq b_827d
  jmp stage_intro_rtn
b_827d:
  inc current_level             ; next level
  lda #$00
  sta unused_ram_1
  sta sub_state
  ldy current_level             ; load current level to Y
  cpy #$14
  bcc b_829e
  jsr rodimus_check             ; @$D076 a bit mangled in the code, but its not too difficult to figure out
  inc game_cmplt_cnt            ; increment game complete counter
  ldy #$00
  lda  rodimus_ram
  and #$FE                      ; check for letters, play as rodiumus is in 0bit, letters are in the restr
  eor #$FE
  beq b_829e                    ;branch if all letters are collected but rodimus not activated, yet
  lda #$00
  sta  rodimus_ram
b_829e:                         ; loop here until player pushes select
  sty current_level             ; storing y in current level isn't actually necessary because we've loaded y from the current level ******
b_820a:                        
  jsr get_player_input
  lda #$04
  and controller_p1_current
  bne b_820a                    ; branch if select is pushed
  jmp stage_intro_rtn
b_82ac:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda demo_status
  bpl :+
  rts
:                               ; decrement lives
  dec lives
  lda lives
  bpl :++                       ; jump if there are lives left
  jsr game_over_screen          ; @$D374
  lda code_press                ; check code_press
  beq :+                        ; branch if the code is not pressed
  lda #$02             
  sta lives                     ; load 2 lives
  lda #$00
  sta code_press                ; reset codepress
  jsr clear_player_scores
  jmp :++
:
  lda other_pl_stored_data
  bmi start_demo_rtn
:
  lda sub_state
  bmi pre_stage_prep_after_sideroom
  lda other_pl_stored_data
  bmi :++                   ; ***********this is around the line @82DF on the 6502 Debugger and @0x2E0 on the hex file
  ldy #$FF
  lda which_player
  beq :+
  ldy #$00
:
  sty which_player
  jsr swap_player_ram
:
  jmp stage_intro_rtn
start_demo_rtn:
  lda #$FF
  sta demo_status
  jmp demo_rtn
main_jmp_1:
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda state
  and #$10                  ; @$0313
  bne :++                   ; jump if we triggered the mining guy or guardian room
  lda sideroom_state        ; if sideroom_state is -ve we've entered the warp zone
  bpl :+
  lda #$80
  sta sideroom_state        ; set sideroom_state to negative to indicate that we've entered the warp area
  lda current_level
  sta bk_crnt_lvl
  lda #$1C
  sta current_level         ; load warp zone with bumblebee, level 1C 
  jmp plr_lvl_start_pos      ; @$8186 load sideroom
:                           ; exiting the warp area
  lda bk_crnt_lvl           ; load backup of current level
  clc                 
  adc #$04                  ; add 2 levels; warp from stage 2 to 4 and 7 to 9
  sta current_level
  lda #$00
  sta sideroom_state        ; reset sideroom_state
  jmp stage_intro_rtn
:                           ; branch here when loading a sideroom
  lda sub_state
  bmi pre_stage_prep_after_sideroom
  jsr bkup_lvl_prog_for_side_lvl
  jmp plr_lvl_start_pos
pre_stage_prep_after_sideroom:
  jsr load_lvl_prog_bkup    ; @$9689
  jmp pre_stage_prep      ; @$81D8
swap_player_ram:
  ldx #$00
:
  lda lives,X
  sta $00
  lda other_pl_stored_data,X
  sta lives,X
  lda $00
  sta other_pl_stored_data,X
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
  lda #$E8                  ; initialize score goal for next 1-Up reward, 1000
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
  jmp play_sound_then_rti       ; @$840B 
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
  jmp title_scroll_rtn      ; This seems to be the routine that runs as the logo scrolls on the title screen
:
  and #$08
  bne :+
  jmp game_rtn_1            ; jump to collision detection if A is not $08
:
  jmp card_screen_rtn       ; stage intro screen, game over screen, end screen
:
  jmp titlescreen_get_player_input
:
  lda current_level         ; load current level
  lsr
  bcs :+                    ; branch if we're on a boss and dont scroll horizontal
  lda stage_orientation     ; load stage orientation
  and #$C0                  ; check if its vertical, at bit 6 and 7
  bne :+                    ; branch if vertical level and dont scroll horizontal
  jsr write_new_tile_column         
:
  jsr set_nametable
  jsr player_bullet_enemy_routine
  jsr audio_rtn
  jsr write_pl1_score
  jsr get_player_input
  jsr chk_ctrl_start_press
  bit rtn_trk_a
  bvs pull_stack_and_rti
  lda state
  and #$04                  ; check if we've triggered a bumblebee warp room
  beq :+
  jmp warp_trigger          ; jump to flashing screen stuff
:
  lda sideroom_state
  bpl :+
  jmp enemy_rtn
:
  lda state
  bmi pull_stack_and_rti
  and #$02
  bne explode_plr           ; if state has 0000 0010 set, then explode player
  lda state
  lsr
  bcs roll_out_rtn          ; do rollout routine at the end of stage if 0000 0001 set
  lda sub_state
  bmi side_room_rtn         ; run sideroom routine if sub_state is negative
  jsr gameplay_rtn            ; @$8511 do regular game routine if substate not negative
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
play_sound_then_rti:
  jsr audio_rtn
  jmp pull_stack_and_rti_b
roll_out_rtn:
  lda current_level
  and #$01
  bne rollout_boss_rtn            ; branch if on a boss
  jsr stage_checkpoint
  jsr wpn_end_rtn
  jmp pull_stack_and_rti
rollout_boss_rtn:
  jsr enemy_sprite_rtn
  jsr boss_defeated
  jsr flash_background
  jmp pull_stack_and_rti
explode_plr:
  inc flash_counter
  lda flash_counter
  cmp #$80          ; end level when flash counter reaches 80
  bcs :++
  ldx #$00
  ldy #$0F          ; load explode player sprite to y
  cmp #$0C          ; show explosion sprite until 0F on flash counter
  bcc :+
  iny               ; increment y to next explosion sprite until 18 on flash counter
  cmp #$18
  bcc :+
  ldy #$0A          ; show invisible sprite
:
  sty player_sprite
  jmp pull_stack_and_rti
:
  lda #$80
  sta state
:
  jmp pull_stack_and_rti
side_room_rtn:
  jsr side_room_timer
  lda sub_state
  and #$20
  bne :-
  jsr plr_col_spr_rtn
  jsr wpn_start_rtn
  jsr wpn_end_rtn
  jsr eny_spawn_chkpt
  jsr enemy_sprite_rtn
  jsr eny_mov_despawn
  jsr chk_plr_eny_col
  jsr wpn_eny_hit_detection
  jmp pull_stack_and_rti
warp_trigger:
  inc flash_counter
  lda flash_counter
  cmp #$C0
  bcs :+
  jsr flash_background
  jmp pull_stack_and_rti
:
  lda #$80
  sta sideroom_state        ;***********@8483, @0x49x, not sure why this is necessary
  lda #$20
  sta state                 ; warp 2 stages
  jmp pull_stack_and_rti
enemy_rtn:
  jsr eny_spawn_chkpt
  jsr enemy_sprite_rtn
  jsr eny_mov_despawn
  lda state
  lsr
  bcc :+
  jsr stage_checkpoint
:
  jmp pull_stack_and_rti
titlescreen_get_player_input:
  jsr get_player_input
  jsr titlescreen_input_check
  jsr sel_sprite_rtn
  jsr audio_rtn
  jmp pull_stack_and_rti
card_screen_rtn:
  jsr audio_rtn
  jsr get_player_input
  lda #$00
  sta $0F
  jsr player_sprite_rtn
  jmp pull_stack_and_rti
game_rtn_1:                         ; pre-stage screen, endscreen, gameover screen
  jsr audio_rtn
  jsr player_bullet_enemy_routine
  jsr enemy_sprite_rtn
  jsr eny_mov_despawn
  lda current_level
  and #$02
  bne :+
  lda hiScoreLo
  sta $00
  lda hiScoreMid
  sta $01
  lda hiScoreHi
  sta $02
  lda #$C0        ; x position
  sta $0E
  lda #$98        ; y position
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
title_scroll_rtn:
  jsr get_player_input
  jsr scroll_logo
  jsr set_nametable
  jsr audio_rtn
  jmp pull_stack_and_rti
gameplay_rtn:
  jsr plr_col_spr_rtn
  jsr chk_sideroom_chkpt
  jsr wpn_start_rtn
  jsr wpn_end_rtn
  jsr eny_spawn_chkpt
  jsr enemy_sprite_rtn
  jsr eny_mov_despawn
  jsr chk_plr_eny_col
  jsr wpn_eny_hit_detection
  jsr lvl_8_10_flash_pal
  lda current_level         ; ********@852F and @0x54x
  lsr
  bcs :+                    ; branch out if on a boss
  lda stage_orientation
  and #$C0
  bne :+                    ; branch out if on a vertical level
  jsr chk_plr_x_scroll       
:
  rts
get_player_input:           ; @$853E
  jsr controller_check
  ldx controller_p1_current
  lda which_player          ; check which player is up
  beq :+
  ldx controller_p2_current
:
  stx controller_current
  lda demo_status
  bpl :+
  jsr demo_run_shoot
 : 
  lda #$C0
  bit controller_current    ; set player direction, 1 if right is pressed or 0 if left is pressed
  beq :++                   ; skip this part if neither left or right is pressed
  lda #$00
  bvs :+                    ; continue if right is pressed or branch if left was pressed
  lda #$01
:
  sta player_direction
:
  rts
controller_check:
  lda controller_current    ; load current press and save to previous press because current is now the past
  sta controller_last
  lda controller_p1_current
  sta controller_p1_last
  lda #$01                  ; read controller start
  sta JOY1
  lda #$00
  sta JOY1
  ldx #$08
:                           ; read 8 times, for each button
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
  lda #$82                  ; hold run and shoot for demo
  sta controller_current
  rts
load_palette_ram_to_ppu:
  lda #$00
  tay
  lda PPU_STATUS
  lda #$3f
  sta PPU_ADDR              ; write to palette data $3f00
  lda #$00
  sta PPU_ADDR
:
  lda palette_data_start_word,Y         ;starting @$0099 load 32 bytes to PPU Data
  sta PPU_VRAM_IO
  iny
  cpy #$20
  bcc :-                    ; continue after loading 32 bytes of palette data
  lda #$3f
  sta PPU_ADDR              ; load palette RAM address 3f00
  lda #$00
  sta PPU_ADDR
  sta PPU_ADDR              ; to avoid palette corruption, https://www.nesdev.org/wiki/PPU_registers
  sta PPU_ADDR
  rts
ppu_scroll:
  lda PPU_STATUS
  lda x_scroll
  sta PPU_SCROLL
  lda y_scroll_hi
  sta PPU_SCROLL
  rts
set_nametable:              ; @$85CA
  lda plr_x_prog_pg
  and #$01                  ; check if player progression high byte is an odd number, nametable check
  sta $07                   ; store 0 for nametable 0 or 1 for nametable 1
  lda ram_PPU_CTRL
  and #$FE                  ; clear nametable address in ram_PPU_CTRL
  ora $07
  sta ram_PPU_CTRL
  sta PPU_CTRL              ; turn on screen
  jmp ppu_scroll
ram_misc_30:    ; something to do with plr eny collision
  lda #$00
  sta $04
  sta $05
  ldy #$0F
:
  asl $00   ; 
  rol $01   ; 
  rol $04   ; 
  rol $05   ; 
  lda $04   ; 
  sec
  sbc $02   ; 
  sta $06   ; 
  lda $05   ; 
  sbc $03   ; 
  bcc :+
  sta $05   ; 
  lda $06   ; 
  sta $04   ; 
  inc $00   ; 
:
  dey
  bpl :--
  rts
hex2dec:
  lda #$00        ; load low byte
  sta $06
  sta $07
  sta $08
  sta $09
:
  lda $00
  sec
  sbc #$A0        ; subtract low byte - A0/ 160 decimal
  sta $03
  lda $01
  sbc #$86        ; subtract high byte - 86 / 134 decimal
  sta $04
  lda $02         ; load the higher byte, only used for score, 0186A0 = 10,000 decimal
  sbc #$01
  sta $05         ; subtract 100k from score and store in 03,04,05 ram
  bcc :+          ; branch if score is less than 100k
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  lda $08
  adc #$0F
  sta $08         ; add 0F + carry (10) to 08 ram for every 100k points
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
  sta $05         ; subtract 10k from points score
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  inc $08         ; inc 08 for every 10k points
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
  sta $05         ; subtract 1k from points score
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $05
  sta $02
  lda $07
  adc #$0F
  sta $07         ; add 0F + carry (10) to 07 ram for every 1k points
  bne :-
:
  lda $00
  sec 
  sbc #$64
  sta $03
  lda $01
  sbc #$00
  sta $04         ; subtract 100 from points score
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  inc $07         ; inc 07 ram for every 100 points
  bne :-
:
  lda $00
  sec 
  sbc #$0A
  sta $03
  lda $01
  sbc #$00
  sta $04         ; subtract 10 from points score
  bcc :+
  lda $03
  sta $00
  lda $04
  sta $01
  lda $06
  adc #$0F
  sta $06         ; add 0F +carry (10 )to 06 ram for every 10 points
  bne :-
:
  lda $00
  ora $06
  sta $06         ; add remainder
  rts
chk_ctrl_start_press:
  lda controller_p1_current
  and #$08                  ; check for start button
  beq :+++                  ; branch out if start was not pushed
  eor controller_p1_last
  and #$08                  ; check for start button last frame
  beq :+++                  ; branch out if start wasnt pushed last frame either
  lda demo_status
  bpl :+                    ; if no demo, then pause was initiated
  lda #$00
  sta ram_PPU_Mask
  ldx #$FF
  txs
  jmp demo_rtn    ;#$8700~
:                           ; pause initiated
  bit rtn_trk_0
  bvs :+
  lda #$40
  sta rtn_trk_0
  lda rtn_trk_a
  ora #$40
  sta rtn_trk_a
  jsr disable_audio_channels
  jmp play_pause_sound      ; @$da03 (86f4)
:                           ; unpause initiated
  lda #$00
  sta rtn_trk_0
  lda rtn_trk_a
  and #$BF
  sta rtn_trk_a
  jsr play_stage_music      ; @$d87c
:
  rts
set_PPU_MASK_a:
  lda #$1A            ; 00011010 show sprites, show backgrounds, show backgrounds in leftmost 8 pixels of the screen
  .byte $AE           ;this is in order to change the next line to ldx $00A9
set_PPU_MASK_b:
  lda #$00            ; 00000000: no sprites or backgrounds, normal colour
  sta PPU_MASK
  sta ram_PPU_Mask    ; store the PPU_MASK value to RAM
  rts
set_PPU_CTRL_a:       ; turn on screen
  lda #$90            ; @0x721  10010000, Generate NMI at the start of the vertical blanking interval,Background pattern table address (0: $0000; 1: $1000), 
  .byte $AE           ;this is in order to change the next line to ldx $10A9 **********
set_PPU_CTRL_b:       ; turn off screen
  lda #$10            ; 00010000 background pattern table address (0:$0000, 1:$1000)
  sta PPU_CTRL
  sta ram_PPU_CTRL    ; store the PPU_CTRL value to RAM
  rts
clear_screen:
  jsr set_PPU_CTRL_b
  jsr set_PPU_MASK_b
  lda PPU_STATUS
  lda #$20              ;***********0x734
  sta $01
  lda #$20
  jsr write_blank_screen_a
  lda #$24              ; run the same stuff to the @2400 block of PPU data
write_blank_screen_a:
  sta PPU_ADDR
  lda #$00
  sta PPU_ADDR
  tay                 ; reset Y to $00
  lda #$03
  sta $00             ; store $03 @$00
  lda $01             
:
  sta PPU_VRAM_IO     ; store #$20 to PPU Data starting at @2000/@2400 FF times
  dey                 ; decrement Y, starting from 00
  bne :-
  dec $00             ; repeat for each page(4 pages), send #$20 for all bytes
  bne :-
:
  sta PPU_VRAM_IO     ; repeat sending #$20 to PPU data another C0 times
  iny
  cpy #$C0
  bcc :-
  lda #$00
:
  sta PPU_VRAM_IO     ; load #$00 for the rest of the pallette data bytes between C0 and FF
  iny
  bne :-
  rts

;======================================================================================
screen_reset:         ; related to loading screen, likely something to do with a flash **************** not called subroutine
  lda PPU_STATUS      ; read PPU status to reset the high/low latch to high
  lda $02
  sta PPU_ADDR        ; write the high byte of $0203 address
  lda $03
  sta PPU_ADDR        ; write the low byte of $0203 address
:
  lda $04             ; 
  sta PPU_VRAM_IO     ; write to PPU $0203
  jsr dec_zero_ram    ; this decrements zero ram @$00 and loops until $00 is equal to $01?
  lda $00
  ora $01
  bne :-
  rts
dec_zero_ram:         ; ******* not called subroutine
  sec
  lda $00
  sbc #$01
  sta $00
  lda $01
  sbc #$00
  sta $01
  rts
;==========================================================================

clear_oam_ram:
  ldx #$00
  lda #$F0
:                     ; loop to load F0 to OAM RAM
  sta oam_ram_data_start,X
  inx
  bne :-
  rts
rng_rtn:
  lda rng_ram     ; load 00 (fc) %1111 1100               ; 0000 0000 0000 0011 1111 1010
  sbc rng_counter ; subtract 00 (-01=fb) %1111 1011       ; 0000 0000 0000 0010 1111 1000
  ror             ; rotate 00 right twice %0111 1101      ; 0000 0000 0000 0001 0111 1100
  ror             ; %1011 1110 be                         ; 0000 0000 0000 0000 0011 1110
  eor rng_ram     ; exclusive or 00 %0100 0010 42         ; 0000 0000 0000 0001 1100 0100
  adc #$03        ; add with carry 03 45                  ; 0000 0011 0000 0101 1100 0111
  sta rng_ram     ; store 03 to 97 45                     ; 0000 0011 0000 0101 1100 0111
  inc rng_counter ; increment 98 to 01 02                 ; 0000 0001 0000 0010 0000 0011
  lda rng_counter ; load 01                               ; 0000 0001 0000 0010 0000 0011
  and #$01        ; and 01                                ; 0000 0001 0000 0000 0000 0001
  beq :+          ; branch if equal, but its not, its 01  ; branch    no branch branch
  lda #$FF        ; load ff to a                          ;           1111 1111
  eor rng_ram     ; flip bits from 03 to FC               ;           0000 0101
  sta rng_ram     ; store fc to rng value                 ;           1111 1010
:
  rts             ; return                                ; 0000 0001 1111 1010 1100 0111
increment_score:
  lda demo_status
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
  sta p2ScoreHi
chk_1up: 
  jsr p1_1_up_check
  lda p1ScoreLo
  sec
  sbc p2ScoreLo
  lda p1ScoreMid
  sbc p2ScoreMid
  lda p1ScoreHi
  sbc p2ScoreHi
  bcc p2_highscore      ; branch if player 2 has higher score
  lda hiScoreLo
  sec                   ; @882A
  sbc p1ScoreLo
  lda hiScoreMid
  sbc p1ScoreMid
  lda hiScoreHi
  sbc p2ScoreHi         ; ***********this seems to be a huge mistake when checking the high score. it checks the player 2 high byte instead of player 1
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
  lda p2ScoreLo
  sec
  sbc hiScoreLo
  lda p2ScoreMid
  sbc hiScoreMid
  lda p2ScoreHi
  sbc hiScoreHi         
  bcc b_exit             ; branch out if score isnt higher than current high score
  lda p2ScoreLo
  sta hiScoreLo
  lda p2ScoreMid
  sta hiScoreMid
  lda p2ScoreHi
  sta hiScoreHi
  rts
p1_1_up_check:
  lda which_player
  bne p2_1_up_check  ;*************************** 8828
  lda score_1_up_lo
  sec
  sbc p1ScoreLo
  lda score_1_up_mid
  sbc p1ScoreMid
  lda score_1_up_hi
  sbc p1ScoreHi
  bcc offer_1up
  rts
p2_1_up_check:
  lda score_1_up_lo
  sec
  sbc p2ScoreLo
  lda score_1_up_mid
  sbc p2ScoreMid
  lda score_1_up_hi
  sbc p2ScoreHi
  bcc offer_1up
  rts
offer_1up:            ; add 2000 points to the amount of points needed to get a one up, then add a 1up. it gets maxed out at 16777215 or ffffff. Keep in mind theres an extra 0 at the end on the scoreboard
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
  bcc add_1up
  lda #$FF
  sta score_1_up_lo
  sta score_1_up_mid
  sta score_1_up_hi
add_1up:
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

;===============================================================================
not_called_subroutine_2:  ; ***************************************?
  lda PPU_STATUS          ; read PPU status to reset the high/low latch to high
  lda $00
  sta PPU_ADDR            ; write the high byte of $0001 address
  lda $01
  sta PPU_ADDR            ; write the low byte of $0001 address
  ldy #$00                ; reset y to 0 so we can loop the following 4 times and send 4 bytes of palette data
:
  lda ($02),Y             ; load fourth byte from nonexistant table
  sta PPU_VRAM_IO         ; Send the byte to PPU Data, but its at $0001 of the PPU, which is weird, no? Wonder what the point of this is.
  iny                     ; increment Y
  cpy $04                 ; compare Y with $04
  bcc :-                  ; Loop back until 4 bytes are loaded to PPU 
  rts
roll_ram_4_5:             ; ****************** not called subroutine
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
;========================================================
send_palette_to_ram:
  ldy #$1F
:
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
  sta $0F         ; set y position of score
  lda #$E0
  sta $0E         ; set x position of score
write_pl2_score_b:
  lda p2ScoreLo
  sta $00
  lda p2ScoreMid
  sta $01
  lda p2ScoreHi
  sta $02        ; 
draw_score:
  jsr hex2dec
  ldx #$00
  ldy #$00
  lda $0F                          ; load y postion from RAM
  sta oam_ram_data_start,x         ; write score y position byte
  inx
  lda #$00
  sta oam_ram_data_start,X         ; write score amount byte, first digit is always a 0
  inx
  jsr write_score 
  inx
:
  lda $0F                          ; load y postion from RAM
  sta oam_ram_data_start,X         ; write score y position
  inx
  lda $0006,Y
  and #$0F
  sta oam_ram_data_start,X         ; write second digit from high score saved in ram, default 00
  inx
  jsr write_score
  inx
  lda $0F
  sta oam_ram_data_start,X         ; write score y position
  inx
  lda $0006,Y
  and #$F0
  lsr
  lsr
  lsr
  lsr
  sta oam_ram_data_start,X         ; divide by 10 and write second digit from high score saved in ram, default 01 when y=1 for second loop
  inx
  jsr write_score
  iny
  inx
  cpx #$18
  bcc :-                    ; loop back total of 3 times for a total of 9 digits.
  rts
write_score:
  lda #$00
  sta oam_ram_data_start,X   ; write score attribute sprite
  inx
  lda $0E
  sta oam_ram_data_start,X   ; write x position
  sec
  sbc #$08      ; choose next digit
  sta $0E       ; store next digit x location to $0E
  rts
flip_bits_1:    ; flip bits if negative
  lda $01       ; load $01 ram
  bpl :+        ; rts if positive
  eor #$FF      ; flip bits
  sta $01       ; store back to $01 ram
  lda $00
  eor #$FF
  clc
  adc #$01      ; need to add 1 when we flip the low byte
  sta $00
  lda $01
  adc #$00      ; add the remaining carry to $01 ram
  sta $01
:
  rts
flip_bits_0:    ; flip positive back to negative
  sec
  lda $00
  sbc #$01
  sta $00
  lda $01
  sbc #$00
  eor #$FF
  sta $01
  lda $00
  eor #$FF
  sta $00
  rts
chk_plr_x_scroll:
  lda plr_x_prog_hi
  clc
  adc #$80
  sta $00
  lda plr_x_prog_pg
  adc #$01
  sta $01
load_scrolling_bg_tiles:
  jsr get_bg_tile_tbl_addr
  lda current_level                 ; check if we're on a boss
  and #$01
  asl
  tay                               ; transfer 0 to Y or 2 if we're on a boss
  lda stage_tbl_2,y                 ; @$CA0D,y
  sta $0E
  lda stage_tbl_2+1,Y
  sta $0F                           ; get address from jump table ->$FB32 or $FDF2 if we're on a boss
  lda $00                           ; player x prog low byte
  and #$30                          ; and @$00 with %00110000, divide player x prog on screen width by 4
  lsr
  lsr
  lsr
  lsr
  sta $04
  lda $00
  and #$30
  sec
  sbc $04
  sta $04                         ; 00,0f,1e,2d which column of tiles
  clc
  lda $04                         ; redundant line
  adc $02
  sta $02                         ; address low byte of section of tile columns
  lda #$00
  adc $03
  sta $03                         ; add carry to high byte
  ldx #$00
:
  ldy #$00
  lda ($02),Y
  sta $04                         ; (50 for boss 1)
  lda #$00                        ; get the address for the column of tiles data
  sta $05
  asl $04                         ; %1010 0000
  rol $05                         ; (0)
  asl $04                         ; 0100 0000 + c
  rol $05                         ; 0000 0001 (0140)
  lda $0E                         ; stage table start fdf2
  clc
  adc $04                         ; add 40 at address low byte
  sta $04
  lda $0F
  adc $05
  sta $05                         ; add high byte and carry
  ldy #$00
  lda $00                         ; player x progress low byte
  and #$08                        ; if player is more than half way into a tile, increment y
  beq :+
  iny
:
  lda ($04),y               ; get next bg tile
  sta newTileColumnStart,X  ; save new bg tiles to ram
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
  adc $07                   ; add 3C to the address location of the section of tiles for the 5th line start
  sta $07
  lda #$00
  adc $08
  sta $08
  lda $00                   ; load x offset/current position
  and #$20                  ; and %0010 0000
  lsr
  lsr
  clc
  adc $07                   ; add 08 for the pallette bytes for columns 3 and 4, or dont add anything for columns 1 and 2
  sta $07
  lda #$00
  adc $08
  sta $08
  ldy #$00
:
  lda ($07),y               ; Load column palette data to RAM
  sta nextSpriteDataLoadStart,Y
  iny
  cpy #$08                  ; load all 8 bytes of palette stuff for the 2 columns
  bcc :-
  ldy #$23                  ; palette table 0
  ldx #$20                  ; nametable 0
  lda $01                   ; check which page we're on
  and #$01
  beq :+
  ldy #$27                  ; palette table 1
  ldx #$24                  ; nametable 1
:
  sty palette_addr_hi
  stx nametable_addr_hi
  lda $00
  lsr
  lsr
  lsr
  sta nametable_addr_lo
  lsr
  lsr
  clc
  adc #$C0
  sta palette_addr_lo
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
get_bg_tile_tbl_addr:
  lda current_level         ; glacier for example, is stage 7 or 0B
  asl                       ; shift left to 16
  tax
  lda bg_column_table,X
  sta $09
  lda bg_column_table+1,X
  sta $0A                   ; stage 7 is CB45
  lda $00                   ; load player/enemy x position hi (06for example)
  and #$C0                  ; and %1100 0000
  sta $07
  lda $01                   ; (01)
  sta $08                   ; store enemy x page
  asl $07                   ; multiply x pos hi by 2 (0)
  rol $08                   ; roll the carry into 08 ram (02)
  asl $07                   ; multiply x pos by 2 again (0)
  rol $08                   ; roll another carry into 08 ram (04) : divide the x position into setions of 0x40 and number them starting from 00 to get stuff from the table
  ldy $08
  lda ($09),Y               ; (04)
  asl                       ; (08)
  tax
  lda bg_tile_table,X
  sta $02
  sta $07
  lda bg_tile_table+1,X     ; get the address for the section of columns
  sta $03
  sta $08
  rts
write_new_tile_column:
  lda PPU_STATUS
  lda ram_PPU_CTRL
  ora #$04
  sta PPU_CTRL
  lda nametable_addr_hi     ; load nametable address high byte
  sta PPU_ADDR
  lda nametable_addr_lo     ; load nametable/palette address low byte
  sta PPU_ADDR
  ldx #$00
:
  lda newTileColumnStart,X  ; load tile from ram
  sta PPU_VRAM_IO
  inx
  cpx #$1E
  bcc :-                    ; loop back and store all tiles to PPU_DATA
  lda palette_addr_hi
  sta $08
  lda palette_addr_lo
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
  jsr set_PPU_CTRL_b    ; dont think we need these two lines***********
  jsr set_PPU_MASK_b
  jsr clear_screen      ; these previous subroutines are repeated at the start of clear_screen
  jsr clear_oam_ram
  lda plr_x_prog_lo
  sta $00
  lda plr_x_prog_hi
  sta $01
  lda #$3f
  sta $06               ; set $06 as loop counter
:
  jsr load_scrolling_bg_tiles
  jsr write_new_tile_column
  lda #$08
  clc
  adc $00
  sta $00
  lda $01
  adc #$00
  sta $01
  dec $06
  bpl :-              ; loop 64 times 3e to ff in $06 as the counter
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
  
;=========================================================
not_called_subroutine_1:  ;***************************** its called, but indirectly? no, its not
  ldy #$00
  lda ($05),Y     ; load first byte from nonexistant table
  sta $00         ; store ppu address high byte
  iny
  lda ($05),Y     ; load second byte
  sta $01         ; store ppu address low byte
  iny
  lda ($05),Y     ; load third byte
  sta $04         ; store length of bytes to send to ppu_data
  iny
  tya
  clc
  adc $05
  sta $02         ; just add the index to the address, makes sense to do things this way
  lda #$00
  adc $06
  sta $03
  jmp not_called_subroutine_2
;===========================================================

reset_scroll_00:
  lda ram_PPU_CTRL
  and #$FE          ; force nametable 0 when sending byte to PPU_CTRL
  sta ram_PPU_CTRL
  sta PPU_CTRL
  lda #$00          ; start with no scroll
  sta PPU_SCROLL
  sta PPU_SCROLL
  rts
write_text:
  ldy #$00
  lda ($00),y
  sta PPU_ADDR      ; load text x location
  iny
  lda ($00),y
  sta PPU_ADDR      ; load text y location
  iny
  lda ($00),y       ; load text length location to x
  tax
  iny
:                   ; loop writing Takara or other text letters
  lda ($00),y
  sta PPU_VRAM_IO
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
	.byte $20,$16,$27				; rodumus palette
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

  
plr_col_spr_rtn:              ; player x collision and set player sprite stuff
  jsr plr_x_nrml_speed_rtn
  jsr plr_x_speed_rtn
  lda plr_sprite_status
  and #$40
  bne :++                     ; brach if transforming and stop player speed
  lda plr_sprite_status
  and #$10
  bne :++++                   ; branch if flying
  jsr plr_x_col_rtn
  lda plr_sprite_status
  and #$08                    ; branch if stopped flying
  bne :+++++
  lda plr_y_speed_hi
  bmi :+                      ; branch if player is going upwards
  jsr plr_grnd_col_rtn     
  bcs :+++                    ; branch if player landed on the ground
:                             ; player is going upwards
  jsr set_plr_grav
top_col_chk:
  jsr plr_jump_rtn
  jsr plr_vert_col_rtn
  bcc move_plr_set_sprite ; branch if no vertical collision upwards
  lda plr_y_speed_lo
  sta $00
  lda plr_y_speed_hi
  sta $01
  jsr flip_bits_1         ; flip velocity from upwards (negative), to downwards (positive)
  lda $00
  sta plr_y_speed_lo
  lda $01
  sta plr_y_speed_hi
  lda #$00
  sta jump_hold           ; reset jump_hold, no flyzone indoors
move_plr_set_sprite:
  jsr plr_x_move_rtn
  jsr plr_y_move_rtn
  jsr set_plr_sprite_rtn
  rts
:                         ; transforming
  jsr stop_plr_x_speed
  jmp stop_plr_y_spd
:                         ; landed on the ground, or is on the ground
  jsr ram_misc_10
stop_plr_y_spd:
  lda #$00
  sta plr_y_speed_lo
  sta plr_y_speed_hi
ram_misc_15:
  lda #$00
  sta jump_hold           ; reset jump_hold when we've landed or are on the ground
  jsr transform_input_check
  jmp top_col_chk
:                         ; flying
  jsr plr_y_col_rtn       ; check top collision, ground collision and set the carry if A is pressed last frame, not set if isnt being pressed and is set with 00 to plr_sprite_status if a was just pushed
  jmp move_plr_set_sprite
:                         ; stop flying
  jsr ram_misc_10
  jmp ram_misc_15
ram_misc_10:
  lda plr_sprite_status
  and #$DF
  sta plr_sprite_status
  lda player_sprite
  and #$F5
  sta player_sprite
  rts
plr_y_col_rtn:
  jsr plr_y_nrml_speed_rtn  ; jump to gravity/vertical acceleration routine
  jsr plr_y_speed_rtn       ; vertical speed routine for flying around?
  jsr plr_x_col_rtn         ; check for x collision
  lda plr_y_speed_hi
  bmi :+                ; branch if player is going up
  ora plr_y_speed_lo
  bne :++               ; branch if player is moving down
  jmp chk_A_btn_status  ; @8e92 player is not moving, so yeah...
:                       ; player is going up
  jsr plr_vert_col_rtn  ; check top y collision
  bcs stop_plr_y_speed  ; branch if player has collided vertially
  jmp chk_A_btn_status
:
  jsr plr_grnd_col_rtn  ; check bottom y collision
  bcs stop_plr_y_speed
chk_A_btn_status:       ; set carry if A is pressed
  lda controller_last
  lsr
  bcs :+                  ; branch out if A was pressed last frame and set the carry
  lda controller_current
  lsr
  bcc :+                  ; branch out if A is not being held
  lda #$00
  sta plr_sprite_status   ; clear player sprite status to 00 if A was just pushed
:
  rts
stop_plr_y_speed:
  lda #$00
  sta plr_y_speed_lo
  sta plr_y_speed_hi
  jmp chk_A_btn_status
set_plr_sprite_rtn:
  bit plr_sprite_status ; %nv-- ---- z
  bvs b_8f23            ; branch during transformation
  bmi b_8f0b            ; branch for truck mode
  lda plr_sprite_status
  and #$10
  bne b_8f1e            ; branch if flying
  lda jump_hold
  bmi b_8f14            ; branch if jumping or falling because jump_hold hasnt been reset to 00
  lda plr_sprite_status
  and #$08              ; I think 08 on plr_sprite_status means to stop flying?
  bne b_8ec6
  lda plr_y_speed_lo
  ora plr_y_speed_hi
  bne b_8ef2            ; branch if any y speed
b_8ec6:                   ; stop flying, start standing
  lda controller_current
  and #$C0                ; check if left or right is pressed
  bne b_8ed1              ; branch if neither left or right is pressed
  ldx #$02                ; set standing/dropping sprite
  jmp set_plr_sprite
b_8ed1:                   ; running and tuning sprite stuff
  lda plr_x_speed_hi      ; load player speed
  and #$80                ; get high byte, left speed is 80, right is 00
  rol
  rol                     ; roll left speed 80 to 01, or 00 if right speed
  eor player_direction    ; 1 is right, 0 is left for player_direction, so if facing right but going left, and vice versa, we set a to 00, or 01 if going in the same direction
  bne b_8ee0              ; branch if not changing direction
  ldx #$03                ; set turning sprite
  jmp set_plr_sprite
b_8ee0:               ; left or right is pressed, running sprite
  lda timer_lo_byte
  and #$07            ; change sprites while running every 8 frames
  bne b_8ef2
  lda player_sprite   ; load player sprite. would be 00,80,01,81
  tax
  dex                 ; decrement x, we want x1 to become x0...
  lsr                 ; logical shift right. if we've dex from x0 to xf, then....
  bcs set_plr_sprite  ; we branch with x0 in the x register, either 00 or 80
  inx
  inx                 ; increment xf to x1
  jmp set_plr_sprite  ; branch with x1 in register, either 01 or 81
b_8ef2:
  ldx player_sprite
set_plr_sprite:
  lda player_direction    ; check player direction
  beq set_plr_sprite_lf
  jmp set_plr_sprite_rt   ; store new player sprite
trnsfrm_inpt_t_chk:
  lda transform_input_timer
  bpl set_plr_sprite_lf
set_plr_sprite_rt:        ; store right facing sprite
  txa                     ; transfer new sprite to a
  and #$7F                ; cut out top byte for facing right
  sta player_sprite       ; store new player sprite
  rts
set_plr_sprite_lf:        ; store left facing sprite
  txa
  ora #$80                ; set top bit if facing left for player sprite
  sta player_sprite
  rts
b_8f0b:
  lda controller_current
  and #$C0                ; check if left or right is pressed
  beq b_8ef2              ; branch if neither left or right is pressed, no need to change sprite
  jmp b_8ee0              ; jump if left or right is pressed
b_8f14:                   ; player is jumping or falling
  ldx #$09                ; 
  lda plr_y_speed_hi
  bmi set_plr_sprite      ; if y speed is negative, then player is moving up, or jumping and set the jumping sprite 
  dex                     ; decrement x for the falling sprite
  jmp set_plr_sprite      ; set falling sprite
b_8f1e:                   ; player is flying
  ldx #$01                ; load player flying sprite
  jmp set_plr_sprite
b_8f23:                   ; branch here if transforming to flash player every 02 frames
  lda trnsfrmng_frame_counter
  and #$02
  bne b_8f2e              ; jump every 3 frames to flash previous sprite
  ldx #$0A                ; flash invisible during transformation
  jmp trnsfrm_inpt_t_chk
b_8f2e:
  lda trnsfrmng_frame_counter
  cmp #$10
  bcs b_8f4a                ; branch if timer has reached $10 frames and flash almost truck mode
  cmp #$08
  bcs b_8f3d                ; branch if timer has reached $08 framed and flash almost bot mode
  ldx player_sprite_holder  ; load player sprite holder to x
  jmp trnsfrm_inpt_t_chk
b_8f3d:
  lda plr_sprite_status     ; *******completely garbage lines, why php and plp... must be a remnant of some testing
  asl
  php
  lda #$06                  ; almost bot mode
  plp
  adc #$00
  tax
  jmp trnsfrm_inpt_t_chk
b_8f4a:
  lda plr_sprite_status
  asl
  bcs b_8f54                ; branch if transforming from truck to bot and dont flash the almost truck mode at all
  ldx #$07                  ; almost truck mode
  jmp trnsfrm_inpt_t_chk
b_8f54:
  ldx #$06                  ; flash almost bot mode sprite
  jmp trnsfrm_inpt_t_chk
transform_input_check:
  lda plr_sprite_status       ; check current player sprite
  and #$40                    ; check if player sprite is transforming, either 40 or c0
  bne toransufoom             ; branch if transforming sprite status of 40 or c0, TRANSFORM! if player sprite status has the 6th bit set
  lda controller_last
  and #$30                    ; was up or down being held
  sta $00
  lda controller_current
  and #$30  
  beq reset_transform_input_timer ; if up or down isnt currently being held
  cmp $00                         ; check current frame up/down input with previous frame up/down input
  bne reset_transform_input_timer ; cannot press up and down at the same time, any other button is okay, but you cant trick it by pressing down and finishing by holding up
  lda plr_sprite_status
  and #$08
  bne reset_transform_input_timer ; what? when does this bit get set for player sprite status???
  lda plr_sprite_status
  bmi transform_up_input_check    ; truck to bot
  lda controller_current          ; bot to truck
  and #$10                        ; transform up input check
  bne reset_transform_input_timer ; reset, because we should be holding down to transform to a truck
  jmp j_8f8d
transform_up_input_check:
  lda controller_current
  and #$20                        ; 20 is down, we should be holding 10 = up to transform up to a bot
  bne reset_transform_input_timer
  jsr plr_vert_col_rtn
  bcs reset_transform_input_timer ; reset timer if theres top collision
j_8f8d:
  inc transform_input_timer
  lda transform_input_timer       ; increment and check transform controller input timer, up or down to transform
  and #$18
  cmp #$18                        ; button needs to be pressed for 18 frames in order to initiate the transformation
  bcc a_exit                      ; branch if timer is less than 18
  lda player_direction            ; 1 = right, 0 = left
  clc
  ror
  ror                             ; rotating 1 to the right twice is $80, or 00 if player is facing left
  sta transform_input_timer
  lda #$40
  ora plr_sprite_status           ; truck = 80, bot = 00
  sta plr_sprite_status           ; bot to truck = 40, truck to bot = C0 
  lda #$00
  sta trnsfrmng_frame_counter     ; reset transformation frame counter to 0
  sta plr_x_speed_lo              ; stop player movement when transforming
  sta plr_x_speed_hi              ; movement still stops even when removing these two lines
  lda player_sprite
  sta player_sprite_holder        ; hold player sprite in ram, bot=4, truck=0
  jsr play_transform_sound
toransufoom:                      ; transform has been initiated, increment timer
  inc trnsfrmng_frame_counter
  lda trnsfrmng_frame_counter
  cmp #$08
  bne :+
  jsr transform_y_pos_adjust      ; adjust player y position at frame 8
:
  lda trnsfrmng_frame_counter
  cmp #$18
  bcc a_exit                      ; rts if transform frame counter is less than 18
  lda #$00
  sta transform_input_timer       ; reset input timer
  lda plr_sprite_status
  bmi truck_to_bot          
  lda #$80                        ; bot to truck
  sta plr_sprite_status           ; store truck status
  lda #$04
  sta player_sprite               ; set sprite status to 04
  ora plr_spr_aftr_trnsfrm        ; set the 3rd bit (04), useless*****
  sta plr_spr_aftr_trnsfrm
  lda plr_y_pos_hi                ; load player y position
  clc
  adc #08
  sta plr_y_pos_hi                ; add 08 to player sprite y position, which lowers by 1 tile
  rts
reset_transform_input_timer:
  lda #$00
  sta transform_input_timer
a_exit:
  rts
truck_to_bot:
  lda #$00
  sta plr_sprite_status       ; set bot mode
  sta player_sprite
  lda plr_spr_aftr_trnsfrm    ; this line is useless because this value was set to 04 when transforming from bot to truck
  and #$FB                    ; useless line?******
  sta plr_spr_aftr_trnsfrm    ; ^
  rts
transform_y_pos_adjust:       ; this is done separate because its done earlier in the transformation
  lda plr_sprite_status
  bpl a_exit                  ; rts if going from bot to truck = 40, truck to bot = c0 (-ve)
  lda plr_y_pos_hi
  sec
  sbc #$08
  sta plr_y_pos_hi            ; lower the value, the higher the location, magnus is 1 tile taller in bot mode hence 08
  rts
d_exit:
  clc
  rts
plr_x_col_rtn:
  lda state
  lsr                     ; exit if 0 bit is set in state
  bcs d_exit
  lda #$00
  sta plr_grnd_col_state
  lda plr_sprite_status
  bpl b_9011              ; branch if bot mode
  lda #$02
  sta plr_grnd_col_state  ; store 02 to plr_grnd_col_state if truck
b_9011:
  lda plr_x_speed_hi
  bpl b_901b              ; branch if player is moving right or standing still
  lda plr_grnd_col_state
  ora #$01
  sta plr_grnd_col_state  ; set 0 bit if player if moving left?
b_901b:
  lda plr_grnd_col_state
  asl
  asl
  asl
  sta plr_grnd_col_state
  jsr plr_x_col_chk
  bcc b_902a              ; branch if player has not collided
b_9027:
  jmp stop_plr_x_speed
b_902a:                   ; secondary check with inner hitbox
  inc plr_grnd_col_state
  inc plr_grnd_col_state
  jsr plr_x_col_chk
  bcs b_9027                  ; stop x speed if collieded
  lda plr_sprite_status
  bmi b_9049                  ; rts if truck
  inc plr_grnd_col_state
  inc plr_grnd_col_state
  jsr plr_x_col_chk 
  bcs b_9027                  ; stop x speed if collieded 
  inc plr_grnd_col_state
  inc plr_grnd_col_state
  jsr plr_x_col_chk
  bcs b_9027                  ; stop x speed if collieded
b_9049:
  rts
plr_x_col_chk:
   ldx plr_grnd_col_state     ; load player ground collision state
   lda plr_y_pos_hi
   clc
   adc plr_pos_tbl,X          ; add plr_y_pos_hi + collision y offset
   sta plr_y_pos_hi_diff
   lda plr_x_pos_hi
   clc
   adc plr_pos_tbl+1,X        ; add plr_x_pos_hi + collision x offset
   sta plr_x_pos_hi_diff
   jsr get_plr_bg_tile
   jsr collision_chk_rtn
   rts
plr_pos_tbl:    ; @$9063  player collision hitbox table
        ; Y   X
	.byte $0D,$08   ; bot bottom right
	.byte $05,$08   ; bot mid bottom right
	.byte $F5,$08   ; bot mid top right
	.byte $FD,$08   ; bot top right
	.byte $0D,$F7   ; bot bottom left
	.byte $05,$F7   ; bot mid bottom left
	.byte $F5,$F7   ; bot mid top left
	.byte $FD,$F7   ; bot top left
	.byte $05,$10   ; truck bottom right
	.byte $FB,$10   ; truck top right
	.byte $00,$00   ; filler, not used
	.byte $00,$00   ; filler, not used
	.byte $05,$EF   ; truck bottom left
	.byte $FB,$EF   ; truck top left

plr_vert_col_rtn:           ; top collision routing
  lda #$0D
  sta plr_y_pos_hi_diff     ; load 0d for player height in bot mode from center of sprite
  lda plr_sprite_status     ; check if truck mode or transforing to bot 80/c0
  bmi b_9095                ; branch if truck mode/transforming from truck mode
  jsr get_plr_top_bg_tile
  jsr collision_chk_rtn
  bcc :+                    ; branch if not collided
  rts                       ; return if collided
:
  lda #$08
  cmp plr_y_pos_hi          ; set carry if collide with top of the screen
  rts
b_9095:                     ; truck/truck to bot y collision check routine
  lda #$0A                  ; truck height from origin
  sta plr_y_pos_hi_diff
  jsr get_plr_top_bg_tile
  lda current_level
  lsr
  bcs b_90a6                ; branch if on a boss
  lda $00                   ; load bg tile
  cmp #$53                  ; set carry if tile has full collision
  rts
b_90a6:
  lda $00
  cmp #$77                  ; set carry if tile has top collision
  rts
get_plr_top_bg_tile:
  lda plr_y_pos_hi
  sec
  sbc plr_y_pos_hi_diff     ; subtrack 0a or 0d from plr_y_pos_hi, to get top hit point?
  sta plr_y_pos_hi_diff
  lda plr_x_pos_hi
  sta plr_x_pos_hi_diff
  jsr get_plr_bg_tile
  rts
plr_grnd_col_rtn:
  lda #$00
  sta plr_grnd_col_state
  lda plr_sprite_status
  bpl :+                    ; branch if bot
  lda #$01
  sta plr_grnd_col_state    ; load plr_grnd_col_state with 01 if truck
:
  asl plr_grnd_col_state    ; shift  01 left to 02
  asl plr_grnd_col_state    ; shift 02 left to 04 for truck or 00 for bot
  jsr grav_rtn_1
  bcc grav_rtn_0            ; branch if player isnt touching the ground
  rts
grav_rtn_0:                 ; player isnt colliding on the right side, check the left side
  inc plr_grnd_col_state
  inc plr_grnd_col_state
grav_rtn_1:
  ldx plr_grnd_col_state
  lda plr_y_pos_hi
  clc
  adc grav_tbl_1,X
  sta plr_y_pos_hi_diff
  lda plr_x_pos_hi
  clc
  adc grav_tbl_1+1,X
  sta plr_x_pos_hi_diff
  jsr get_plr_bg_tile
  jsr collision_chk_rtn
  rts
grav_tbl_1:
        ; Y, X
  .byte $11,$05 ; bot right
  .byte $11,$FB ; bot left
  .byte $09,$08 ; truck right
  .byte $09,$F7 ; truck left
plr_jump_rtn:
  lda jump_hold
  bmi init_plr_jump           ; branch if already jumping
  lda controller_current
  lsr
  bcc f_exit                  ; branch out if A is not being pressed
  lda controller_last
  lsr
  bcs f_exit                  ; branch out if a was held last frame
  lda plr_sprite_status
  and #$08
  bne b_910f
  lda plr_y_speed_lo
  ora plr_y_speed_hi
  bne f_exit                  ; branch if already moving
b_910f:
  lda plr_sprite_status
  bmi f_exit                  ; branch out if truck
  lda #$80
  sta jump_hold               ; store 80 to jump_hold when A is pressed
  lda plr_sprite_status
  ora #$20
  sta plr_sprite_status       ; set 5bit when A is pressed
  jsr play_jump_sound

;====================================
; jump routine

init_plr_jump:                ; already jumping or just started jumping
  lda jump_hold
  and #$40
  bne b_9144                  ; branch if A had been released
  lda controller_current
  lsr
  bcc b_913e                  ; branch if A was just released while jumping
  inc jump_hold               ; increment jump_hold if A is still being pressed
  lda jump_hold
  and #$3F
  cmp #plr_max_jmp_time       ; lower 4 bits of jump_hold is the timer and we count up to 0C
  bcs b_913e                  ; branch if we've reached maximum on our timer and start slowing down
  lda #$00
  sta plr_y_speed_lo
  lda #plr_init_jmp_speed     ; $FC
  sta plr_y_speed_hi          ; set initial jump speed
f_exit:
  rts
b_913e:
  lda jump_hold
  ora #$40
  sta jump_hold
b_9144:
  jmp set_plr_grav
plr_x_speed_rtn:
  lda plr_x_speed_lo
  sta $08
  lda plr_x_speed_hi
  sta $09
  lda plr_max_x_speed_lo
  sta $0A           ; store 00
  lda plr_max_x_speed_hi
  sta $0B           ; store 02, player speed high byte
  lda player_acceleration  
  sta $00           ; player acceleration is usually 20 (one occasion its 0c?)
  lsr               ; shift bits to 10 (unless its 06)
  sta $02           ; store result to 02
  lda #$00
  sta $01           ; reset 01 ram to 0
  lda state
  lsr
  bcs b_916b
  lda jump_hold
  beq b_918a
b_916b:
  lda $00         ; load player_acceleration, usually 20
  sec
  sbc $02         ; subtract 10
  sta $00         ; store to 00 ram (10 or 6)
  lda $01
  sbc #$00        ; subtract the carry from 01 ram, which is already 00
  sta $01         ; store result to 01 ram
  clc
  ror $01         ; okay, but its probably 0 or ff at best
  ror $00         ; rotate 00 ram right, 05 or 03
  lda $00
  clc
  adc $02         ; add 10 to 5 (or 06 to 03)
  sta $00         ; store result of 15 (or 09) to 00 ram
  lda $01         
  adc #$00
  sta $01         ; add the carry, but i think this is useless again
b_918a:
  bit controller_current
  bmi right_is_pressed
  bvs left_is_pressed
  rts
left_is_pressed:
  jsr flip_bits_0
right_is_pressed:
  jsr inc_y_speed
  lda $08
  sta plr_x_speed_lo
  lda $09
  sta plr_x_speed_hi
b_919f:
  rts
plr_y_speed_rtn:          ; this the y speed routine for flying
  lda plr_y_speed_lo
  sta $08
  lda plr_y_speed_hi
  sta $09
  lda plr_max_y_speed_lo
  sta $0A
  lda plr_max_y_speed_hi
  sta $0B
  lda player_acceleration
  cmp #$18
  bcs b_91b8              ; if player acceleration is 20 like normal then branch and continue
  lda #$18                ; if we're on level 7 and the acceleration is low, then at least increase the vertical acceleration to 18
b_91b8:
  sta $00                 ; store vertical acceleration to 00 ram
  lda #$00
  sta $01
  lda controller_current
  asl
  asl
  bmi b_91ca              ; branch if down is pressed
  asl
  bpl b_919f              ; rts if down or up is not pressed
  jsr flip_bits_0         ; if up is pressed, flip bits to negative
b_91ca:                   ; down is pressed
  jsr inc_y_speed
  lda $08
  sta plr_y_speed_lo
  lda $09
  sta plr_y_speed_hi
  rts
inc_y_speed:
  lda $08           ; load stored plr_y_speed_lo
  clc
  adc $00           ; add upwards acceleration or #$14 from set_plr_grav for gravity
  sta $00           ; store added speed to $00 ram
  sta $02           ; store added speed to $02 ram
  lda $09           ; load stored plr_y_speed_hi byte
  adc $01           ; add w/c high byte, usually 0
  sta $01           ; store to $01 ram
  sta $03           ; store to $03 ram
  jsr flip_bits_1   ; flip bits of $00 and $01 ram if $01 is negative
  lda $0A           ; load plr_y_max_speed_lo
  sec
  sbc $00
  lda $0B           ; load plr_y_max_speed_hi
  sbc $01           ; check if we've reach or past max y speed
  bcc :+            ; branch if plr has exceded max y speed
  lda $02           ; store added speed to ram
  sta $08
  lda $03
  sta $09
  rts
:                   ; store max speed to temp zero ram location
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
  set_plr_grav:
  lda #plr_gravity                ; global vertical gravity $14 (04 for moonjump)
  sta $00
  lda #$00
  sta $01
  lda plr_y_speed_lo
  sta $08
  lda plr_y_speed_hi
  sta $09
  lda plr_max_y_speed_lo
  sta $0A
  lda plr_max_y_speed_hi
  sta $0B
  jsr inc_y_speed
  lda $08
  sta plr_y_speed_lo
  lda $09
  sta plr_y_speed_hi
  beq start_flight                ; only start flight if we've reached max y speed
:
  rts
start_flight:
  lda plr_y_speed_lo
  cmp #$30
  bcs :-                  ; this is a strange contraint, can only fly if the plr_y_speed_lo byte is less tha $30
  lda controller_current
  lsr
  bcc :-                  ;if player has let go of A then dont fly
  lda stage_orientation
  and #$C0
  bne :-                  ; cannot fly on vertical levels
  lda power_up
  bpl :-                  ; rts if no flight enabled
  lda plr_sprite_status
  bmi :-                  ; rts if in truck mode
  and #$20
  beq :-                  ; rts if still on upward jump
  lda #$10                ; activate flight
  sta plr_sprite_status
  lda #$00
  sta jump_hold           ; reset jump_hold timer because we're flying
  rts
plr_x_move_rtn:
  lda plr_x_pos_lo
  clc
  adc plr_x_speed_lo
  sta 00
  lda plr_x_pos_hi
  adc plr_x_speed_hi
  sta $01
  lda $00
  clc
  adc enemy_speed_lo
  sta $00
  sta $02
  lda $01
  adc enemy_speed_hi
  sta $01
  sta $03
  lda $01
  cmp #$10
  bcc stop_plr_x_speed
  lda state
  lsr
  bcs b_92db
  lda plr_x_prog_pg     ; check level progression
  cmp #horiz_lvl_length ; have we reached 0b? which is the end of the level $0B
  beq plr_hit_goal            ; branch if we have past 0b x progression to the stage exit routine @92e4
  lda current_level     
  lsr                   ; divide level by 2 to get current stage
  bcs b_92db            ; branch if we're on a boss
  lda sub_state         ; 
  bmi b_92db
  lda sideroom_state
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
  lda plr_x_prog_lo
  adc $00
  sta plr_x_prog_lo
  lda plr_x_prog_hi
  adc $04
  sta plr_x_prog_hi
  sta x_scroll
  lda plr_x_prog_pg
  adc #$00
  sta plr_x_prog_pg
  lda #$00
  sta plr_x_pos_lo
  lda #$80
center_player:
  sta plr_x_pos_hi
  rts
stop_plr_x_speed:
  lda #$00
  sta plr_x_speed_lo
  sta plr_x_speed_hi
  rts
b_92db:
  lda $01
  cmp #$FA
  bcc b_92ad
  jmp stop_plr_x_speed
plr_hit_goal:
  lda $01
  cmp #$90
  bcc b_92ad
  lda #$01
  sta state         ; set state to hit checkpoint and autorun the rest of the level
  rts
plr_y_move_rtn:
  lda plr_y_pos_lo
  clc
  adc plr_y_speed_lo
  sta $00
  sta $02
  lda plr_y_pos_hi
  adc plr_y_speed_hi
  sta $01
  sta $03
  lda stage_orientation
  and #$80
  bne b_9317
  lda $01
  cmp #$E8
  bcc b_9317
  lda #$02
  sta state               ; storing 02 to state restarts the level from the lives screen and reduces one life
  jsr play_plr_exp_sound  ; @$d9e2
  lda #$00
  sta flash_counter
b_9317:
  lda stage_orientation
  and #$C0                ; check up/down level
  beq b_933a              ; branch if we're on a horizontal stage and load y positions straight to ram without scrolling
  lda plr_y_prog_pg
  bne b_932a
  lda plr_y_prog_hi
  cmp #$04
  bcs b_932a
  jmp j_934a
b_932a:
  lda plr_y_prog_pg
  cmp #$04
  beq b_9361
  jsr plr_y_prog_up_helper   ; @$93df
  bcc y_scroll_up_rtn
  jsr plr_y_prog_down_helper
  bcs y_scroll_down_rtn
b_933a:                     ; set y position values to ram
  lda $02
  sta plr_y_pos_lo
  lda $03
  sta plr_y_pos_hi
  rts
clear_plr_y_speed:    ; clear y speed values in ram
  lda #$00
  sta plr_y_speed_lo
  sta plr_y_speed_hi
  rts
j_934a:
  jsr plr_y_prog_down_helper
  bcs y_scroll_down_rtn
  lda $01
  cmp #$10
  bcc b_9358
  jmp b_933a
b_9358:
  lda stage_orientation
  and #$40              ; check if its an upwards level, stage orientation = 40
  beq clear_plr_y_speed   ; branch and clear player y increment values in ram
  jmp load_state_40     ; load 40 to state and return from subroutine
b_9361:
  jsr plr_y_prog_up_helper
  bcc y_scroll_up_rtn
  lda $01
  cmp #$F0
  bcs b_936f
  jmp b_933a
b_936f:
  lda stage_orientation
  bpl clear_plr_y_speed
load_state_40:            ; level completed
  lda #$40
  sta state
  rts
y_scroll_down_rtn:
  clc
  lda plr_y_prog_lo
  adc $00
  sta plr_y_prog_lo
  lda plr_y_prog_hi
  adc $04
  sta plr_y_prog_hi
  lda plr_y_prog_pg
  adc #$00
  sta plr_y_prog_pg
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $04
  cmp #$F0
  bcc :+
  sbc #$F0
:                   ; b_939c
  sta y_scroll_hi
  lda #$00
  sta plr_y_pos_lo
  lda plr_sprite_status
  bpl :+                ; branch if bot mode
  lda #$90              ; 90 is the lowest for truck mode
  sta plr_y_pos_hi
  rts
:
  lda #$88
  sta plr_y_pos_hi      ; 88 is the lowest magnus can go on vertical level before scrolling in bot mode. Reset to 88 after scrolling down
  rts
y_scroll_up_rtn:
  clc
  lda plr_y_prog_lo
  adc $00
  sta plr_y_prog_lo
  lda plr_y_prog_hi
  adc $04
  sta plr_y_prog_hi
  lda plr_y_prog_pg
  adc #$FF
  sta plr_y_prog_pg
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $04
  cmp #$F0
  bcc :+
  sbc #$10
:
  sta y_scroll_hi
  lda #$00
  sta plr_y_pos_lo
  lda #$40
  sta plr_y_pos_hi  ; 40 is the highest player can go on screen when scrolling up
  rts
plr_y_prog_up_helper:   
  lda $01
  sec
  sbc #$40
  sta $04                   ; set plr_y_prog_hi
  rts
plr_y_prog_down_helper:
  lda plr_sprite_status     ; check plr_sprite_status
  bpl plr_y_prog_bot_helper ; branch if bot mode
  lda $01
  sec
  sbc #$90
  sta $04                   ; set plr_y_prog_hi
  rts
plr_y_prog_bot_helper:
  lda $01
  sec
  sbc #$88
  sta $04                   ; set plr_y_prog_hi
  rts
plr_x_nrml_speed_rtn:
  lda plr_x_speed_lo
  sta $00
  lda plr_x_speed_hi
  sta $01
  sta $02
  jsr flip_bits_1           ; make everything positive
  lda player_acceleration
  sta $03
  jsr accelerate_rtn
  lda $00
  sta plr_x_speed_lo
  lda $01
  sta plr_x_speed_hi
:
  rts
plr_y_nrml_speed_rtn:
  lda plr_y_speed_lo
  sta $00
  lda plr_y_speed_hi
  sta $01
  sta $02
  jsr flip_bits_1     ; flip bits positive if negative
  lda #$20            ; load #$20 for player y acceleration, which is the player's relative gravity 
  sta $03
  jsr accelerate_rtn
  lda $00
  sta plr_y_speed_lo
  lda $01
  sta plr_y_speed_hi
  rts
accelerate_rtn:
  lda $00             ; load plr_y/x_speed_lo
  ora $01             ; or plr_y/x_speed_hi with plr_y/x_speed_lo
  beq :-              ; branch out if no vertical speed
  lsr $03             ; shift acceleration right 20 >> 02
  sec
  lda $00             ; load plr_y/x_speed_lo
  sbc $03             ; subtract acceleration from current speed, negative speed is left or up, so this can act as gravity
  sta $00             ; store back to temp plr_y/x_speed_lo
  lda $01             ; 
  sbc #$00            ; subtract the carry and store back to plr_y/x_speed_hi temp ram
  sta $01
  bcs :+              ; branch out if not rolling over to negative speed
  lda #$00            ; stop acceleration once we've reached 0
  sta $00
  sta $01
:
  lda $02
  bpl :--           ; rts or flip bits back if speed was negative
  jmp flip_bits_0   ; flip to negative and rts
;==================================================================================

stage_checkpoint:
  lda plr_x_pos_hi
  cmp #$F8
  bcs level_cleared        ; branch if we're in the farthest tile to the right of the screen
  sta player_direction
  lda #$80                ; hold right, we've reached the checkpoint
  sta controller_current
  jmp plr_col_spr_rtn
level_cleared:
  lda sideroom_state
  bmi warp_2_stages
  lda #$40              ; storing 40 in state completes the level
  sta state
  rts
warp_2_stages:
  lda #$20
  sta state             ; 20 in state warps 2 stages
  lda #$00
  sta sideroom_state
  rts
get_plr_bg_tile:
  lda plr_x_prog_hi
  clc
  adc plr_x_pos_hi_diff ; 
  sta $00
  lda plr_x_prog_pg
  adc #$00
  sta $01
  lda plr_y_prog_hi
  clc
  adc plr_y_pos_hi_diff
  sta $0E
  lda plr_y_prog_pg
  adc #$00
  sta $0F
get_sprite_bg_tile:             ; get column from tile table where enemy is positioned
  lda $00                   ; load enemy x position hi
  sta plr_x_pos_hi_diff
  lda $0E                   ; load enemy y position hi
  sta plr_y_pos_hi_diff
  jsr get_bg_tile_tbl_addr  ; get current column of tiles table address and store to 02,03 and 07,08
  lda $00                   ; load enemy x position hi
  and #$30                  ; and %0011 0000
  lsr
  lsr
  lsr
  lsr
  sta $04                   ; divide by 16 and store in 4
  lda $00                   ; load enemy x position hi
  and #$30                  ; and %0011 0000
  sec
  sbc $04
  sta $04                   ; store 00, 0f, 1e, or 2d into $04 ram to get one of 4 columns
:                           ; b_94b2 loop back here for screen wrapping
  lda $0E                   ; load enemy y position hi
  sec 
  sbc #$F0                  ; subtract F0, to wrap screen for vertical level
  sta $0E                   ; store to 0e ram
  lda $0F
  sbc #$00
  sta $0F                   ; subtract carry and store in 0f ram
  bcs :-                    ; loop back if we're on the same page
  lda $0E                   ; load enemy y position - F0
  clc
  adc #$F0                  ; add back the F0
  sta $0F                   ; store now to 0f ram
  lsr
  lsr
  lsr
  lsr
  sta $05                   ; divide by 16 and store in 05 ram, this is to find which vertical tile, 0 is at the top and 0F is at the bottom
  clc
  lda $02                   ; load address of currnet section of tiles low byte
  adc $04                   ; add 04 ram to select which of the 4 columns
  sta $02
  lda $03
  adc #$00
  sta $03                   ; add the carry to the high byte
  clc
  lda $02
  adc $05                   ; indicate which tile within the column to choose
  sta $02
  lda $03
  adc #$00
  sta $03                   ; store address to load the tile where enemy is located
  ldy #$00                  ; load 00 to y because we already have the address of the byte we need
  lda ($02),Y
  sta $00                   ; store which tile the enemy is on and rts
b_94ee:
  rts
collision_chk_rtn:
  lda #$00
  sta $01
  lda current_level
  lsr
  bcs b_9538        ; branch if we're on a boss
  lda $00           ; load bg tile
  cmp #$53
  bcc b_94ee        ; branch to exit if tile is less than 53
  cmp #$AC
  bcc b_9504        ; branch if tile is less than AC
  inc $01           ; increment 01 ram if tile is AC or above
b_9504:
  cmp #$A6
  bcc b_950a        ; branch if tile is less than A6
  inc $01           ; increment 01 ram if tile is A6 or more
b_950a:
  cmp #$96
  bcc b_9510        ; branch if tile is less than 96
  inc $01           ; increment 01 ram if tile is 96 or more
b_9510:
  cmp #$7D
  bcc b_9516        ; branch if tile is less than 7D
  inc $01           ; increment 01 ram if tile is 7D or more
b_9516:       ; common routine for boss and level after we've appropriately incremented $01 in ram
  lda $01           ; load 01 ram
  asl
  tax               ; multiply by 2 and store to x register
  lda collision_jmp_tbl,X    ; @$cc94,x
  sta $09
  lda collision_jmp_tbl+1,X
  sta $0A
  lda plr_y_pos_hi_diff ; load enemy y position high
  and #$0F
  lsr
  tax
  inx
  lda plr_x_pos_hi_diff
  and #$0F
  lsr
  tay
  lda ($09),Y
b_9533:
  lsr
  dex
  bne b_9533
  rts           ; collision happened if carry is set, clear if no carry
b_9538:
  lda $00
  cmp #$77
  bcc b_94ee      ; rts
  cmp #$80
  bcc b_9544
  inc $01
b_9544:
  cmp #$7F
  bcc b_954a
  inc $01
b_954a:
  jmp b_9516
chk_sideroom_chkpt:
  lda sub_state
  and #$40              ; check if we've already been in the room with 40 stored at sub_state
  bne e_exit            ; exit if we've been in the room
  lda current_level
  and #$FE              ; dont consider boss levels, remove 0th bit
  tay
  lda sideroom_jmp_tbl,y ; @$9565,y
  sta $00
  lda sideroom_jmp_tbl+1,Y
  sta $01
  jmp ($0000)

sideroom_jmp_tbl:       ; @$9565-9578
	.word e_exit          ; stage 1 .byte $79,$95
	.word e_exit          ; stage 2 .byte $79,$95
  .word st3_sideroom    ; stage 3 .byte $7A,$95 
	.word e_exit          ; stage 4 .byte $79,$95
	.word e_exit          ; stage 5 .byte $79,$95
  .word pickaxe_rm      ; stage 6 .byte $86,$95 Mining Guy
	.word e_exit          ; stage 7 .byte $79,$95
  .word guardian_rm     ; stage 8 .byte $98,$95
  .word lvl9_chk        ; stage 9 .byte $22,$96
  .word st3_sideroom    ; stage 10 .byte $7A,$95

e_exit:
  rts
st3_sideroom:
  ldy #$00                  ; location of checkpoint from table
  jsr fetch_siderm_chkpts
  bcs e_exit
  lda #$10
  sta state
  rts
pickaxe_rm:                 ; stage 6 sideroom
  ldy #$04                  ; location of checkpoint from table
  jsr fetch_siderm_chkpts
  bcs e_exit
  lda #$10
  sta state                 ; jump to siderom
  lda #$02                  ; load sideroom number
  ora sub_state
  sta sub_state             ; or substate with 02 and store
  rts
guardian_rm:                ; stage 8 sideroom
  ldy #$08                  ; location of checkpoint from table
  jsr fetch_siderm_chkpts
  bcs e_exit
  lda #$10
  sta state
  lda #$04
  ora sub_state
  sta sub_state
  rts
fetch_siderm_chkpts:    ; load table address for sideroom checkpoint to ram        
  lda #<siderm_chkpts   ; hard coded address(#$FE), low byte *******
  sta $02
  lda #>siderm_chkpts   ; hard coded address(#$95), high byte *******
  sta $03
fetch_chkpt:            ; @95b2
  jsr plr_stage_y_loc   ; get the offset for the hard coded address into $00 and $01 ram plr y pos hi= 00, plr y prog hi = 01
  lda $00               ; load plr_y_pos_hi + plr_y_prog_hi
  sec
  sbc ($02),Y           ; subtract from table
  sta $00               ; store difference in 00 ram
  iny
  lda $01               ; load plr_y_prog_pg
  sbc ($02),y           ; subtract plr_y_prog_pg - page from table
  sta $01               ; store in 01 ram
  iny
  jsr flip_bits_1       ; flip bits if negative
  lda $01
  bne set_carry         ; set carry if player y page location is different from checkpoint
  lda $00
  cmp #$06
  bcs set_carry         ; set carry if distance is more than 06 for player progress+position high byte
  jsr plr_stage_x_loc   ; same business as before, loaded into 01 and 00 ram
  lda $00               ; plr_x_prog_hi + plr_x_pos_hi
  sec
  sbc ($02),Y           ; subtract from table (F8)
  sta $00               ; store to 00 ram
  iny                   ; increment y to get plr_x_prog_pg
  lda $01
  sbc ($02),Y
  sta $01
  iny
  jsr flip_bits_1
  lda $01
  bne set_carry         ; set carry if on different x page
  lda $00
  cmp #$06
  bcs set_carry         ; set carry if more than 06 distance for x pos high
  rts
set_carry:
  sec
  rts
fetch_lvl_9_chkpts:
  lda #<lvl_9_chkpts    ; #$0E @960e
  sta $02
  lda #>lvl_9_chkpts    ; #$96
  sta $03
  jmp fetch_chkpt

siderm_chkpts:   ; @$95FE
      ; Yhi,Ypg,Xhi,Xpg
	.byte $3C,$01,$F8,$00   ; right side stage 3/10 side room
  .byte $38,$02,$10,$00   ; left side stage 6, pickaxe guy
  .byte $FC,$01,$10,$00   ; left side stage 8, guardian room
  .byte $3C,$01,$F8,$00   ; same as room 3/10 so this slot is not used******
lvl_9_chkpts:
  .byte $94,$00,$60,$01         ; @960e start mid checkpoint
  .byte $44,$00,$20,$02         ; start top checkpoint
  .byte $C4,$00,$E0,$02         ; start bottom checkpoint
  .byte $44,$00,$20,$0A         ; end top checkpoint
  .byte $94,$00,$E0,$0A         ; end mid checkpoint

; Level 9 checkpoint stuff
lvl9_chk:
  lda chkpt_counter           ; load number of checkpoints hits
  asl
  asl                         ; multiply by 4 to get next row of checkpoint coordinates
  tay                         ; store into y register
  jsr fetch_lvl_9_chkpts
  bcc lvl9_chkpt_hit          ; branch if checkpoint is hit b_962d
  rts
lvl9_chkpt_hit:
  lda chkpt_counter
  tay                         ; load checkpoint counter to y
  lda #$01
  dey                         ; decrement y
  bmi inc_lvl9_chkpt_counter  ; branch if negative
b_9635:
  asl                         ; shift byte left number of times as we have checkpoints
  dey                         ; decrement y
  bpl b_9635                  ; loop until y is negative
inc_lvl9_chkpt_counter:
  sta $00                     ; values for each checkpoint totals to 1F. these values get subtracted from a total and this value needs to be 00 for the level to clear
  lda lvl9_clear              ; (checkpoint counter|amount subtracted|lvl9_clear value) 00|00|1F,01|01|1E,02|02|1C,03|04|18,04|08|10,5||00 
  sec
  sbc $00
  sta lvl9_clear
  inc chkpt_counter           ; here we increment the checkpoint counter, for real
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
  lda plr_x_prog_lo
  sta bk_plrXProgLo
  lda plr_x_prog_hi
  sta bk_plrXProgHi
  lda plr_x_prog_pg
  sta bk_plrXProgPg
  lda plr_y_prog_lo
  sta bk_plrYProgLo
  lda plr_y_prog_hi
  sta bk_plrYProgHi
  lda plr_y_prog_pg
  sta bk_plrYProgPg
  lda current_level
  sta bk_crnt_lvl
  lda sub_state
  and #$07          ; check only lower 3 bits of substate (00 for first sideroom from stage 3/10, 02 for second sideroom from stage 6, 04 for guardian room from stage 8, 08 is unused because its the same as 00 so level 10 uses 00 and we've cleared the bit by and 07, so can never get to this address, but it works anyways)
  clc
  adc #$14          ; 14=pickaxe room 1/3, 16=pickaxe room 2, 18=guardian room, 1A=unused pickaxe room
  sta current_level
  lda sub_state
  ora #$80
  sta sub_state     ; or the sub_state with 80 when the sideroom has loaded
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
  sbc #$08        ; go down 1 tile if returning to stage 6
b_96a0:
  sta plr_y_pos_hi
  lda bk_plrXPosLo
  sta plr_x_pos_lo
  lda bk_plrXPosHi
  ldx bk_crnt_lvl
  cpx #$0A        ; compare if level is stage 6
  bne rtn_to_lvl      ; go back to same x pos if current level is not 6 96b1
  clc
  adc #$18        ; go right 3 tiles
rtn_to_lvl:
  sta plr_x_pos_hi
  lda bk_plrXProgLo
  sta plr_x_prog_lo
  lda bk_plrXProgHi
  sta plr_x_prog_hi
  lda bk_plrXProgPg
  sta plr_x_prog_pg
  lda bk_plrYProgLo
  sta plr_y_prog_lo
  lda bk_plrYProgHi
  sta plr_y_prog_hi
  lda bk_plrYProgPg
  sta plr_y_prog_pg
  lda #$40
  sta sub_state       ; load $40 to substate
  lda bk_crnt_lvl
  sta current_level   ; return to current level
  rts
side_room_timer:
  lda room_timer_lo     ; load side room timer low byte
  clc
  adc #$01              ; increment timer
  sta room_timer_lo
  lda room_timer_hi
  adc #$00
  sta room_timer_hi     ; increment high byter with carry
  lda sub_state
  and #$20              ; 0010 0000 is sideroom timrout
  bne siderm_timeout    ; branch if already timed out
  lda room_timer_hi
  cmp #sideroom_time    ; once room timer has reached #$05
  bcc :+                ; branch out of this routine until room_timer_hi reaches 05, stop movement and stuff
  lda #$A0      
  sta sub_state         ; load $A0 to substate once room_timer_lo reaches 05
  rts
siderm_timeout:
  lda room_timer_hi
  cmp #$06
  bcc :+                ; branch to exit if room timer is less than 6 and continue to increment timer and wait until it is
  lda #$10
  sta state             ; load 10 to state to exit room when room timer high byte has reached 06
:                       ; 96fc
  rts

; Player Weapon stuff
wpn_start_rtn:          ; look for button press and do stuff while dealing with a timer
  jsr wpn1_timer_rtn_1
  jsr wpn2_timer_rtn_1
  rts
wpn1_timer_rtn_1:
  lda controller_current
  and #$02              ; check if B is pressed
  bne dec_wpn1_timer    ; branch if B is pressed
  lda #$00
  sta wpn_timer         ; reset weapon timer to 00
  rts
dec_wpn1_timer:         ; B is pressed
  lda wpn_timer
  beq wpn1_timer_rtn_0  ; branch if weapon timer is 00
  dec wpn_timer         ; decrement weapon timer
  rts
wpn1_timer_rtn_0:
  lda #$18              ; start weapon1 timer
  sta wpn_timer
  lda #max_bullets      ; number of max bullets on screen $04
  sta $00
  ldx #$00
  jsr find_empty_wpn_ram
  lda $00
  beq g_exit
  jsr play_sound_wpn
  jsr fire_wpn
  lda plr_sprite_status ; check truck mode
  bmi b_975f            ; jump if truck weapon fire
  lda #$00
  sta wpn_y_spd_lo,X    ; load 0 vertical bullet speed
  sta wpn_y_spd_hi,X
  lda plr_x_speed_lo
  sta $00               ; store bullet speed temporarily to 00
  lda plr_x_speed_hi
  sta $01               ; store bullet speed hi byte temporarily to 01
  jsr flip_bits_1
  lda $01
  clc
  adc #hori_wpn_speed   ; $04
  sta $01
  lda player_direction
  bne set_wpn_speed
  jsr flip_bits_0       ; flip weapon speed to negative if facing left
set_wpn_speed:
  lda $00
  sta wpn_x_spd_lo,X
  lda $01
  sta wpn_x_spd_hi,x
  jmp chk_wpn_pu
b_975f:
  lda #$00
  sta wpn_y_spd_lo,X
  lda #vert_wpn_speed   ; #$FC
  sta wpn_y_spd_hi,X
  lda plr_x_speed_lo
  sta wpn_x_spd_lo,X    ; give the vertical shot players x movement speed
  lda plr_x_speed_hi
  sta wpn_x_spd_hi,X
chk_wpn_pu:
  lda power_up
  and #$40              ; check for weapon powerup
  bne diag_bullet_rtn
g_exit:
  rts
diag_bullet_rtn:
  lda #max_bullets
  sta $00
  ldx #$00
  jsr find_empty_wpn_ram
  lda $00
  beq g_exit
  jsr fire_wpn
  lda #$80
  sta wpn_status,X      ; activate new bullet
  lda #$00
  sta wpn_y_spd_lo,X
  lda #vert_wpn_speed
  sta wpn_y_spd_hi,X    ; set vertical speed
  lda #$00
  sta $00
  lda #hori_wpn_speed
  sta $01               ; set horizontal speed then check direction
  lda player_direction  ; check direction
  bne fire_diag_bullet
  jsr flip_bits_0
fire_diag_bullet:
  lda $00
  clc
  adc plr_x_speed_lo      ; add player horizontal speed
  sta wpn_x_spd_lo,X
  lda $01
  adc plr_x_speed_hi
  sta wpn_x_spd_hi,X
  rts
fire_wpn:
  lda #max_bullet_frames    ; $20 bullet frames
  sta bullet_timer,X        ; set bullet timer
  lda #$80 
  sta wpn_status,X          ; activate new bullet
  lda #$00
  sta wpn_sprite_type,x     ; set wpn sprite type of 00 for player bullet
wpn_set_pos:
  lda plr_x_prog_lo
  clc
  adc plr_x_pos_lo
  sta wpn_x_pos_lo,X
  lda plr_x_prog_hi
  adc plr_x_pos_hi
  sta wpn_x_pos_hi,X
  lda plr_x_prog_pg
  adc #plr_x_wpn_offset
  sta wpn_x_pos_page,X    ; set new wpn x position with offset of 00
  lda plr_y_pos_hi
  sec
  sbc #plr_y_wpn_offset   ; raise 6px from midsection, subtract 6 from plr y position $06
  sta $08
  lda plr_y_prog_lo
  clc
  adc plr_y_pos_lo
  sta wpn_y_pos_lo,X
  lda plr_y_prog_hi
  adc $08
  sta wpn_y_pos_hi,X      ; set new wpn y position high with offset of 06
  lda plr_y_prog_pg
  adc #$00
  sta wpn_y_pos_page,X    ; set new wpn y position
  rts
wpn2_timer_rtn_1:
  lda plr_sprite_status   ; check for truck mode
  bpl h_exit              ; exit if not truck
  lda wpn2_timer
  beq wpn2_timer_rtn_2    ; start timer if its 00
  dec wpn2_timer
  rts
wpn2_timer_rtn_2:
  lda controller_last
  lsr                     ; check if we're havent pressed A last frame
  bcs h_exit
  lda controller_current
  lsr
  bcs start_missile
h_exit:
  rts
start_missile:
  lda #missile_frames_int ; $30 frames until next missile can be fired
  sta wpn2_timer
  lda #max_bullets        ; only do 4 bullets at a time by default
  sta $00                 ; store max bullets to 00 ram
  ldx #$00                ; reset x to 00
b_981b:
  lda wpn_status,X
  cmp #$C0
  beq h_exit              ; branch out if theres an active missile
  and #$08
  beq fire_missile        ; fire missile if theres nothing in the 4th bit
  txa
  clc
  adc #$10
  tax                     ; go to next weapon ram slot
  dec $00                 ; decrement number of bullets
  bne b_981b
  rts
fire_missile:
  jsr play_sound_wpn
  jsr wpn_set_pos
  lda #$C0                ; set active missile status
  sta wpn_status,X  
  lda #$01                ; load missile sprite 
  sta wpn_sprite_type,X 
  lda plr_x_speed_lo
  sta $00
  lda plr_x_speed_hi
  sta $01
  jsr flip_bits_1
  lda $01
  clc
  adc #missile_speed      ; add x speed high byte of 06 to player's x speed high byte for missile speed $06
  sta $01
  lda player_direction
  bne init_missile_speed
  jsr flip_bits_0         ; make speed negative if facing left
init_missile_speed: 
  lda $00
  sta wpn_x_spd_lo,X      ; store player's x speed into wpn speed
  lda $01
  sta wpn_x_spd_hi,X
  lda #$00
  sta wpn_y_spd_lo,X
  sta wpn_y_spd_hi,X
  lda #max_missile_frames ; missiles stay on screen for default of $40 frames
  sta bullet_timer,X
  jsr play_sound_wpn      ; this seems unnecessary since it was already called in this subroutine ******
  rts
find_empty_wpn_ram:
  lda wpn_status,X
  bpl :+
  txa 
  clc
  adc #$10
  tax
  dec $00
  bne find_empty_wpn_ram  ; check next slot until max bullet counter reaches 0
:                         ; b_9882
  rts

; wpn stuff end
;=========================================================================
; more wpn stuff started

wpn_end_rtn:
  ldx #$00                ; initialize weapon ram slot
  lda #$0F                ; total bullets
  sta $0B
chk_wpn_active:
  lda wpn_status,X
  bmi rdy_move_wpn        ; branch if weapon is active
  jmp next_wpn_slot       ; jump and chech next weapon slot then try again
rdy_move_wpn:             ; ready with weapon coordinates, move weapon x and y and decrement timer
  jsr rdy_move_wpn_select
  lda wpn_x_spd_lo,X
  sta $07
  lda wpn_x_spd_hi,X
  sta $08
  jsr move_wpn            ; move weapon in x direction
  lda wpn_y_spd_lo,X
  sta $07
  lda wpn_y_spd_hi,X
  sta $08
  inx
  inx
  inx
  jsr move_wpn            ; move weapon in y direction 
  dex
  dex
  dex
  lda bullet_timer,X
  tay
  dey                     ; decrement bullet timer
  bne chk_wpn_offscreen_left
  jsr end_bullet          ; end bullet if timer is 0
  tay
chk_wpn_offscreen_left:
  tya
  sta bullet_timer,X      ; store decremented bullet timer
  lda plr_x_prog_hi
  clc
  adc #$08
  sta $01
  lda plr_x_prog_pg
  adc #$00
  sta $02
  lda wpn_x_pos_hi,X
  sec
  sbc $01
  lda wpn_x_pos_page,X
  sbc $02
  bcs chk_wpn_bg_col
  jsr end_bullet
chk_wpn_bg_col:
  lda wpn_x_pos_hi,X
  sta $00
  sta plr_x_pos_hi_diff
  lda wpn_x_pos_page,X
  sta $01
  lda wpn_y_pos_hi,X
  sta $0E
  sta plr_y_pos_hi_diff
  lda wpn_y_pos_page,X
  sta $0f
  txa
  pha
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn   ; check if weapon has hit a wall, celing or floor
  pla
  tax
  bcc next_wpn_slot
  jsr end_wpn             ; end wpn if collision happened
next_wpn_slot:            ; load next wpn slot
  txa
  clc
  adc #$10
  tax
  dec $0B         ; go through all 0f slots
  bmi i_exit      ; branch out if all weapon slots checked
  jmp chk_wpn_active
end_wpn:                ; something related to explosion and changing the sprite
  lda wpn_status,X
  sta $00
  and #$40              ; check for missile
  beq end_bullet        ; branch and end bullet if its not a missile
  lda $00
  lsr
  bcs i_exit            ; branch out if shift weapon status right and carry is set, or weapon has already ended
  lda $00
  ora #$01
  sta wpn_status,X      ; set the 0 bit in weapon status
  lda #$00
  sta wpn_x_spd_lo,X
  sta wpn_x_spd_hi,X    ; stop weapon x speed
  sta wpn_y_spd_lo,X
  sta wpn_y_spd_hi,X    ; stop weapon y speed
  lda #$20
  sta bullet_timer,X    ; set explostion timer
  inc wpn_sprite_type,X ; increment missile to explosion 1, to explosion 2, to nothing
  rts
end_bullet:
  lda #$00
  sta wpn_status,X
i_exit:
  rts
move_wpn:
  lda wpn_x_pos_lo,X
  clc
  adc $07
  sta wpn_x_pos_lo,X
  lda wpn_x_pos_hi,X
  adc $08
  sta wpn_x_pos_hi,X
  lda $08
  bpl b_9963
  lda wpn_x_pos_page,X
  adc #$FF
  sta wpn_x_pos_page,X
  rts
b_9963:
  lda wpn_x_pos_page,X
  adc #$00
  sta wpn_x_pos_page,X
  rts
rdy_move_wpn_select:
  lda wpn_sprite_type,X   ; 0 is bullet, 01 is missile, 02 is explosion 1, 03 is explosion 2
  asl
  tay
  lda wpn_addr_tbl,y
  sta $03
  lda wpn_addr_tbl+1,y
  sta $04
  jmp ($0003)
wpn_addr_tbl:             ; weapon routine jump table
  .word wpn_rts           ; bullet
  .word wpn_addr_b        ; missile
  .word wpn_addr_c        ; missile explosion 1
  .word wpn_addr_c        ; missile explosion 2
  .word wpn_rts           ; missile done
wpn_rts:
  rts
wpn_addr_b:             ; add missile gravity
  lda wpn_status,X
  lsr                   ; check for 0 bit, which means missile has hit
  bcs wpn_addr_c        ; branch if missile has already hit
  lda wpn_y_spd_lo,X
  clc
  adc #missile_gravity  ; add missile downwards gravity $20
  sta $03
  lda wpn_y_spd_hi,X
  adc #$00
  sta $04
  lda $03
  sta wpn_y_spd_lo,X
  lda $04
  sta wpn_y_spd_hi,X
b_99a8:
  rts
wpn_addr_c:
  lda bullet_timer,X
  cmp #$10
  bne b_99a8              ; exit if not 10, increment next weapon type/explosion every $10 frames
  inc wpn_sprite_type,X   ; increment explosion 1 to explosion 2, then to nothing
  lda wpn_status,X
  ora #$02
  sta wpn_status,X        ; set the 1bit in weapon status
  rts

;=====================================================
; weapon sprite stuff

wpn_sprite_rtn:
  ldx #$00
  lda #$0F        ; check all 0f slots
  sta $0B
get_wpn_spr_tbl:
  lda wpn_status,X
  bpl next_wpn_ram        ; branch to get next wpn ram slot if weapon is inactive
  lda wpn_x_pos_hi,X
  sec
  sbc plr_x_prog_hi
  sta $02                 ; store difference wpn_x_pos_hi - plr_x_prog_hi
  lda wpn_x_pos_page,X
  sbc plr_x_prog_pg
  bne next_wpn_ram        ; branch to get next wpn ram slot if weapon is on a different x page
  lda wpn_y_pos_hi,X
  sec
  sbc plr_y_prog_hi
  sta $01
  lda wpn_y_pos_page,x
  sbc plr_y_prog_pg
  bne next_wpn_ram        ; branch to get next wpn ram slot if weapon is on a different y page
  lda wpn_sprite_type,X
  sta $00                 ; store wpn sprite type to 00
  stx $0E
  jsr get_wpn_spr_tbl_addr
  ldx $0E
next_wpn_ram:
  txa
  clc
  adc #$10
  tax
  dec $0B
  bpl get_wpn_spr_tbl
  rts
get_wpn_spr_tbl_addr:
  lda #<wpn_spr_tbl ; #$B2
  sta $09
  lda #>wpn_spr_tbl ; #$9D 
  sta $0A
  jmp j_9a7a
wpn_lookup_rtn:
  lda stage_boss
  asl
  tay
  lda stage_boss_sprite_tbl,Y
  sta $09
  lda stage_boss_sprite_tbl+1,Y
  sta $0A
  jsr get_num_tiles
  bcc b_9a28
b_9a19:
  ldx $0F
  cpx #$E4
  bcs b_9a28
  jsr load_sprite_tiles
  stx $0F
  dec $05
  bpl b_9a19
b_9a28:
  rts


;==========================================
; sprite stuff
; 00 = sprite type
; 01 = y position high
; 02 = x position high
; 03 = address of sprite tile table low
; 04 = address of sprite tile table high
; 05 = sprite tile counter
; 06 = attribute offset
; 07 = 
; 09 = address from sprite table low byte
; 0A = address from sprite table high byte
; 0F = x index counter for ram placement, max is E4, starting at $071C and ending at $07FF

stage_boss_sprite_tbl:
  .word stage_eny_spr_tbl   ; @$9df2 ****
  .word boss_eny_spr_tbl   ; @$9ef2 ****

player_bullet_enemy_routine:
  ldx #$00
  stx $0F
  jsr player_sprite_rtn
  jsr wpn_sprite_rtn
  jsr enemy_status_chk
  ldx $0F               ; update OAM data starting at $0740
j_9a3c:
  cpx #$E4
  bcs b_9a4c
  lda #$F0
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
  lda plr_sprite_status
  bpl b_9a64        ; branch if not truck
  and #$40
  bne b_9a64        ; branch if transforming
  lda rodimus_ram
  lsr
  bcc b_9a64        ; branch if rodimus not enabled
  lda $00           ; load sprite type when truck and not transforming
  ora #$08          ; add 08 to sprite to get rodimus truck
  sta $00           ; store rodimus truck sprite value back to 00 ram
b_9a64:
  lda plr_sprite_status
  ora #$01
  sta plr_sprite_status     ; plr_sprite_statue 0bit set when started loading sprite
  lda #<plr_sprite_tbl      ; $00
  sta $09
  lda #>plr_sprite_tbl      ; $9B is this a hard coded address?
  sta $0A
  lda plr_y_pos_hi
  sta $01                   ; store y position high to 01 ram
  lda plr_x_pos_hi
  sta $02                   ; store x position high to 02 ram
j_9a7a:
  jsr get_num_tiles
  bcc b_9a88        ; branch if sprite has no tiles left, this is to clear player from plr_sprite_status
:
  jsr load_sprite_tiles
  dec $05           ; decrement number of tiles left
  bpl :-            ; loop back if still positive
  stx $0F
b_9a88:
  lda plr_sprite_status
  and #$FE
  sta plr_sprite_status   ; plr_sprite_status clear 0bit when done loading sprite tiles to ram
  rts
get_num_tiles:
  lda $00         ; load sprite type, weapon or player sprite type
  asl
  tay             ; get index for address and store to y
  lda ($09),Y
  sta $03
  iny
  lda ($09),Y
  sta $04         ; get the address of the sprite table we're looking for
  lda #$00
  sta $06         ; attribute set to 00
  sta $07
  tay             ; reset y register to 00
  ldx $0F         ; load ram counter to x register
  lda ($03),Y     ; get number of tiles for this sprite
  beq clr_carry   ; clear carry and exit if number of tiles is 00
  sec
  sbc #$01        ; subtract number of tiles by 1
  sta $05         ; store in 05
  iny
  lda $00         ; load first tile y position
  bpl :+          ; branch out if first tile y position is positive
  lda #$40        ; attribute to flip tiel horizontally
  sta $06         ; store 40 to 06 ram
  lda #$FF
  sta $07         ; store ff to 07 ram
  lda $02         ; load sprite x position high
  sec
  sbc #$07        ; subtract player x position high - 07
  sta $02         ; store back in 02 ram
  sec
:
  rts
clr_carry:
  clc
  rts
load_sprite_tiles:
  lda ($03),Y           ; get tile y position
  clc
  adc $01               ; add sprite y position high
  sta sprite1_y_pos,X   ; Store Y Position for this Sprite
  inx
  iny
  lda ($03),Y           ; get tile number
  sta sprite1_y_pos,X   ; store tile number
  inx
  iny
  lda $06
  eor ($03),Y           ; eor orientation with tile attribute from table
  sta sprite1_y_pos,X   ; store the sprite attribute, but flip the 6bit for x orientation?, or dont flip anything if sprite x coordinate is 00
  lda current_level 
  cmp #$10              ; compare with stage 8
  bne b_9af1            ; branch if not stage 8
  lda plr_sprite_status
  lsr
  bcc b_9af1
  lda sprite1_y_pos,X
  ora #$20              ; this will change if sprite is infront or behind background
  sta sprite1_y_pos,X   ; or tile attribute with 0010 0000 if sprite status has 0000 0001 from when we started loading tiles
b_9af1:
  inx
  iny
  lda ($03),Y
  eor $07               ; flip all bits if facing left
  clc
  adc $02               ; add sprite x position high to tile x position offset
  sta sprite1_y_pos,X   ; store tile x position
  inx
  iny
  rts
plr_sprite_tbl:           ; @$9B00-9DB1 player sprite table
	; .byte $24,$9B,$49,$9B,$62,$9B,$83,$9B,$A8,$9B,$CD,$9B,$F2,$9B,$0B,$9C,$30,$9C ; 
  ; .byte $51,$9C,$6E,$9C,$6F,$9C,$98,$9C,$C1,$9C,$EA,$9C,$03,$9D,$44,$9D,$85,$9D ; 
  .word plr_spr_00  ; running
  .word plr_spr_01  ; flying
  .word plr_spr_02  ; standing
  .word plr_spr_03  ; stopping
  .word plr_spr_04  ; TruckA
  .word plr_spr_05  ; TruckB
  .word plr_spr_06  ; TransformA
  .word plr_spr_07  ; TransformB
  .word plr_spr_08  ; Falling
  .word plr_spr_09  ; Jumping
  .word plr_spr_0A  ; Nothing
  .word plr_spr_0B  ; Magnus front
  .word plr_spr_0C  ; Rodimus Truck A
  .word plr_spr_0D  ; Rodimus Truck B
  .word plr_spr_0E  ; Prime head
  .word plr_spr_0F  ; Explosion A
  .word plr_spr_10  ; Explosion B
  .word plr_spr_11  ; Rodimus front
  ;      Y,tile,att, X
plr_spr_00:               ; @9b24 00 running
  .byte $09               ; number of tiles
  .byte $F0,$10,$00,$F8
  .byte $F0,$11,$00,$00
  .byte $F8,$14,$00,$F8
  .byte $F8,$15,$00,$00
  .byte $00,$12,$00,$F8
  .byte $00,$13,$00,$00
  .byte $08,$16,$00,$F8
  .byte $08,$17,$00,$00
  .byte $05,$18,$00,$F0
plr_spr_01:               ; @9b49 01 flying
  .byte $06
  .byte $F0,$19,$00,$FC
  .byte $F8,$1A,$00,$FC
  .byte $00,$1B,$00,$FC
  .byte $08,$1C,$00,$FC
  .byte $F4,$1D,$00,$F4
  .byte $08,$1E,$00,$F4
plr_spr_02:               ; @9b62 02 standing
  .byte $08
  .byte $F0,$10,$00,$F8
  .byte $F0,$11,$00,$00
  .byte $F8,$14,$00,$F8
  .byte $F8,$15,$00,$00
  .byte $00,$52,$00,$F8
  .byte $00,$13,$00,$00
  .byte $08,$53,$00,$F8
  .byte $08,$17,$00,$00
plr_spr_03:               ; @9b83 03 stopping
  .byte $09
  .byte $F0,$2E,$00,$F8
  .byte $F0,$2F,$00,$00
  .byte $F8,$30,$00,$F8
  .byte $F8,$31,$00,$00
  .byte $F8,$32,$00,$08
  .byte $00,$33,$00,$F8
  .byte $00,$34,$00,$00
  .byte $08,$35,$00,$FA
  .byte $08,$36,$00,$02
plr_spr_04:               ; @9ba8 04 truckA
  .byte $09
  .byte $FA,$37,$00,$F0
  .byte $FA,$38,$00,$F8
  .byte $FA,$39,$00,$00
  .byte $FA,$3A,$00,$08
  .byte $02,$0F,$00,$E8
  .byte $02,$3B,$00,$F0
  .byte $02,$3C,$00,$F8
  .byte $02,$3D,$00,$00
  .byte $02,$3E,$00,$08
plr_spr_05:               ; @9bcd 05 truckB
  .byte $09
  .byte $F9,$37,$00,$F0
  .byte $F9,$38,$00,$F8
  .byte $F9,$39,$00,$00
  .byte $F9,$3A,$00,$08
  .byte $01,$0F,$00,$E8
  .byte $01,$4E,$00,$F0
  .byte $01,$4F,$00,$F8
  .byte $01,$50,$00,$00
  .byte $01,$51,$00,$08
plr_spr_06:               ; @9bf2 06 transformA
  .byte $06
  .byte $F8,$48,$00,$F5
  .byte $F8,$49,$00,$FD
  .byte $00,$4A,$00,$F9
  .byte $00,$4B,$00,$01
  .byte $08,$4C,$00,$F4
  .byte $08,$4D,$00,$00
plr_spr_07:               ; @9c0b 07 transformB
  .byte $09
  .byte $F8,$3F,$00,$F8
  .byte $00,$40,$00,$F0
  .byte $00,$41,$00,$F8
  .byte $00,$42,$00,$00
  .byte $00,$43,$00,$08
  .byte $08,$44,$00,$F0
  .byte $08,$45,$00,$F8
  .byte $08,$46,$00,$00
  .byte $08,$47,$00,$08
plr_spr_08:               ; @9c30 08 falling
  .byte $08
  .byte $F0,$1F,$00,$00
  .byte $F8,$20,$00,$F8
  .byte $F8,$21,$00,$00
  .byte $00,$22,$00,$F8
  .byte $00,$23,$00,$00
  .byte $00,$24,$00,$08
  .byte $08,$25,$00,$F8
  .byte $08,$26,$00,$00
plr_spr_09:               ; @9c51 09 jumping
  .byte $07
  .byte $F0,$27,$00,$FC
  .byte $F0,$28,$00,$04
  .byte $F8,$29,$00,$FC
  .byte $F8,$2A,$00,$04
  .byte $00,$2B,$00,$FC
  .byte $00,$2C,$00,$04
  .byte $08,$2D,$00,$FC
plr_spr_0A:               ; @9c6e 0a nothing
  .byte $00
plr_spr_0B:               ; @9c6f 0b magnusFront
  .byte $0A
  .byte $F0,$55,$00,$F5
  .byte $F0,$56,$00,$FD
  .byte $F0,$57,$00,$05
  .byte $F8,$58,$00,$F5
  .byte $F8,$59,$00,$FD
  .byte $F8,$5A,$00,$05
  .byte $00,$5B,$00,$F9
  .byte $00,$5C,$00,$01
  .byte $08,$5D,$00,$F9
  .byte $08,$5E,$00,$01
plr_spr_0C:               ; @9c98 0c rodTruckA
  .byte $0A
  .byte $FA,$6A,$00,$F0
  .byte $FA,$6B,$00,$F8
  .byte $FA,$6C,$00,$00
  .byte $FA,$6D,$00,$08
  .byte $FA,$6E,$00,$10
  .byte $02,$6F,$00,$F0
  .byte $02,$70,$00,$F8
  .byte $02,$71,$00,$00
  .byte $02,$72,$00,$08
  .byte $02,$73,$00,$10
plr_spr_0D:               ; @9cc1 0d rodTruckB
  .byte $0A
  .byte $F9,$6A,$00,$F0
  .byte $F9,$6B,$00,$F8
  .byte $F9,$6C,$00,$00
  .byte $F9,$6D,$00,$08
  .byte $F9,$6E,$00,$10
  .byte $01,$74,$00,$F0
  .byte $01,$75,$00,$F8
  .byte $01,$76,$00,$00
  .byte $01,$77,$00,$08
  .byte $01,$78,$00,$10
plr_spr_0E:               ; @9cea 0e primeHead
  .byte $06
  .byte $F0,$E0,$00,$F8
  .byte $F0,$E1,$00,$00
  .byte $F8,$E2,$00,$F8
  .byte $F8,$E3,$00,$00
  .byte $00,$E4,$00,$F8
  .byte $00,$E5,$00,$00
plr_spr_0F:               ; @9d03 0f explosionA
  .byte $10
  .byte $F0,$79,$00,$F0
  .byte $F0,$7A,$00,$F8
  .byte $F0,$7A,$40,$00
  .byte $F0,$79,$40,$08
  .byte $F8,$7B,$00,$F0
  .byte $F8,$7C,$00,$F8
  .byte $F8,$7C,$40,$00
  .byte $F8,$7B,$40,$08
  .byte $00,$7B,$80,$F0
  .byte $00,$7C,$80,$F8
  .byte $00,$7C,$C0,$00
  .byte $00,$7B,$C0,$08
  .byte $08,$79,$80,$F0
  .byte $08,$7A,$80,$F8
  .byte $08,$7A,$C0,$00
  .byte $08,$79,$C0,$08
plr_spr_10:               ; @9d44 10 explosionB
  .byte $10
  .byte $F0,$7D,$00,$F0
  .byte $F0,$7E,$00,$F8
  .byte $F0,$7E,$40,$00
  .byte $F0,$7D,$40,$08
  .byte $F8,$7F,$00,$F0
  .byte $F8,$80,$00,$F8
  .byte $F8,$80,$40,$00
  .byte $F8,$7F,$40,$08
  .byte $00,$7F,$80,$F0
  .byte $00,$80,$80,$F8
  .byte $00,$80,$C0,$00
  .byte $00,$7F,$C0,$08
  .byte $08,$7D,$80,$F0
  .byte $08,$7E,$80,$F8
  .byte $08,$7E,$C0,$00
  .byte $08,$7D,$C0,$08
plr_spr_11:               ; @9d85 11 rodFront
  .byte $0B
  .byte $F0,$5F,$00,$F5
  .byte $F0,$60,$00,$FD
  .byte $F0,$61,$00,$05
  .byte $F8,$62,$00,$F5
  .byte $F8,$63,$00,$FD
  .byte $F8,$64,$00,$05
  .byte $00,$65,$00,$F5
  .byte $00,$66,$00,$FD
  .byte $00,$67,$00,$05
  .byte $08,$68,$00,$F8
  .byte $08,$69,$00,$00

wpn_spr_tbl:              ; @$9DB2-9DF1  weapon sprite table
  .word wpn_spr_00        ;	.byte $BC,$9D       ; bullet
  .word wpn_spr_01        ;	.byte $C1,$9D       ; missile
  .word wpn_spr_02        ;	.byte $C6,$9D       ; missile explosion A
  .word wpn_spr_03        ;	.byte $D7,$9D       ; missile explosion B
  .word wpn_spr_05        ;	.byte $ED,$9D       ; enemy bullet
      ;  y,tile,attr,x
wpn_spr_00:               ; @d9bc bullet
  .byte $01               ; number of tiles
  .byte $FC,$F3,$01,$FC
wpn_spr_01:               ; @d9c1 missile
  .byte $01
  .byte $FC,$84,$01,$FC
wpn_spr_02:               ; @9dc6 Explosion A
  .byte $04
  .byte $F8,$8C,$C0,$F8
  .byte $00,$8B,$00,$F8
  .byte $F8,$8B,$C0,$00
  .byte $00,$8C,$00,$00
wpn_spr_03:               ; @9dd7 Explosion B
  .byte $04
  .byte $F8,$87,$00,$F8
  .byte $00,$89,$00,$F8
  .byte $F8,$88,$00,$00
  .byte $00,$8A,$00,$00
wpn_spr_04:               ; @9de8 small explosion (used below) trypticon bullet?
  .byte $01
  .byte $FC,$81,$00,$FC
wpn_spr_05:               ; @9ded enemy bullet
  .byte $01
  .byte $FC,$54,$00,$FC


stage_eny_spr_tbl:              ; @$9DF2-9EF1 a jump table
	.word eny_spr_00,eny_spr_00   ; .byte $7E,$9F,$7E,$9F ; ramjet
  .word eny_spr_01,eny_spr_01   ; .byte $8B,$9F,$8B,$9F ; blitzwing
  .word eny_spr_02a,eny_spr_02b ; .byte $A0,$9F,$B9,$9F ; bot
  .word eny_spr_03,eny_spr_03   ; .byte $D2,$9F,$D2,$9F ; crack
  .word eny_spr_04a,eny_spr_04b ; .byte $DF,$9F,$E8,$9F ; gosupu
  .word eny_spr_05,eny_spr_05   ; .byte $F1,$9F,$F1,$9F ; hammer
  .word eny_spr_06,eny_spr_06   ; .byte $FA,$9F,$FA,$9F ; tosher
  .word eny_spr_07,eny_spr_07   ; .byte $03,$A0,$03,$A0 ; heru
	.word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_0Aa,eny_spr_0Ab ; .byte $47,$A0,$4C,$A0 ; gau
  .word eny_spr_0B,eny_spr_0B   ; .byte $51,$A0,$51,$A0 ; laggar
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_0D,eny_spr_0D   ; .byte $56,$A0,$56,$A0 ; laserbeak
  .word eny_spr_0E,eny_spr_0E   ; .byte $7C,$A0,$7C,$A0 ; condor
  .word eny_spr_0F,eny_spr_0F   ; .byte $89,$A0,$89,$A0 ; zunonbat
	.word eny_spr_10,eny_spr_10   ; .byte $92,$A0,$92,$A0 ; zunonbat flying
  .word eny_spr_11,eny_spr_11   ; .byte $9B,$A0,$9B,$A0 ; marakirasu
  .word eny_spr_12,eny_spr_12   ; .byte $30,$A3,$30,$A3 ; guardian
  .word eny_spr_13,eny_spr_13   ; .byte $A8,$A0,$A8,$A0 ; azak
  .word eny_spr_14a,eny_spr_14b ; .byte $F8,$A0,$09,$A1 ; ratbat
  .word eny_spr_15,eny_spr_15   ; .byte $1A,$A1,$1A,$A1 ; ratbat tape
  .word eny_spr_16,eny_spr_16   ; .byte $23,$A1,$23,$A1 ; snow commander
  .word eny_spr_17,eny_spr_17   ; .byte $34,$A1,$34,$A1 ; wasta
	.word eny_spr_18,eny_spr_18   ; .byte $3D,$A1,$3D,$A1 ; zaffuru
  .word eny_spr_19,eny_spr_19   ; .byte $4A,$A1,$4A,$A1 ; bugs
  .word eny_spr_1A,eny_spr_1A   ; .byte $AC,$A1,$AC,$A1 ; starscream jet
  .word eny_spr_1B,eny_spr_1B   ; .byte $B9,$A1,$B9,$A1 ; starscream bot
  .word eny_spr_1C,eny_spr_1C   ; .byte $CE,$A1,$CE,$A1 ; gido
  .word eny_spr_1C,eny_spr_1C   ; .byte $CE,$A1,$CE,$A1 ; gido
  .word eny_spr_1E,eny_spr_1E   ; .byte $76,$A2,$76,$A2 ; takara baby
  .word eny_spr_1F,eny_spr_1F   ; .byte $87,$A2,$87,$A2 ; energon cube
	.word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word eny_spr_1C,eny_spr_1C   ; .byte $CE,$A1,$CE,$A1 ; maara
  .word wpn_spr_02,wpn_spr_04   ; .byte $C6,$9D,$E8,$9D ; explosion B
  .word plr_spr_0A,plr_spr_0A   ; .byte $6E,$9C,$6E,$9C ; invisible floating ball spawner
  .word eny_spr_0Aa,eny_spr_0Ab ; .byte $47,$A0,$4C,$A0 ; floating balls?/gau?
  .word eny_spr_25,eny_spr_25   ; .byte $3B,$A4,$3B,$A4 ; unused platform?
  .word eny_spr_26a,eny_spr_26b ; .byte $FD,$A1,$06,$A2 ; rabu
  .word eny_spr_26a,eny_spr_26b ; .byte $FD,$A1,$06,$A2 ; ganzo slug
	.word eny_spr_28,eny_spr_28   ; .byte $3D,$A3,$3D,$A3 ; megatron poster?
  .word plr_spr_0A,plr_spr_0A   ; .byte $6E,$9C,$6E,$9C ; blank sprite
  .word eny_spr_2A,eny_spr_2A   ; .byte $0F,$A2,$0F,$A2 ; 
  .word eny_spr_2B,eny_spr_2B   ; .byte $20,$A2,$20,$A2 ; 
  .word eny_spr_2Ca,eny_spr_2Cb ; .byte $21,$A2,$32,$A2 ; 
  .word eny_spr_2Da,eny_spr_2Db ; .byte $43,$A2,$58,$A2 ; 
  .word eny_spr_2E,eny_spr_2E   ; .byte $6D,$A2,$6D,$A2 ; 
  .word eny_spr_19,eny_spr_19   ; .byte $4A,$A1,$4A,$A1 ; bugs, repeated?
	.word eny_spr_00,eny_spr_00   ; .byte $7E,$9F,$7E,$9F ; ramjet with powerup
  .word eny_spr_00,eny_spr_00   ; .byte $7E,$9F,$7E,$9F ; ramjet with barrier
  .word eny_spr_00,eny_spr_00   ; .byte $7E,$9F,$7E,$9F ; ramjet with 1up
  .word eny_spr_00,eny_spr_00   ; .byte $7E,$9F,$7E,$9F ; ramjet with rodimus letter
  .word eny_spr_34,eny_spr_34   ; .byte $94,$A2,$94,$A2 ; p powerup
  .word eny_spr_35,eny_spr_35   ; .byte $A1,$A2,$A1,$A2 ; f powerup
  .word eny_spr_36,eny_spr_36   ; .byte $AE,$A2,$AE,$A2 ; d powerup
  .word eny_spr_37,eny_spr_37   ; .byte $BB,$A2,$BB,$A2 ; b powerup
	.word eny_spr_38,eny_spr_38   ; .byte $C8,$A2,$C8,$A2 ; 1 up
  .word eny_spr_39,eny_spr_39   ; .byte $D5,$A2,$D5,$A2 ; r
  .word eny_spr_3A,eny_spr_3A   ; .byte $E2,$A2,$E2,$A2 ; o
  .word eny_spr_3B,eny_spr_3B   ; .byte $EF,$A2,$EF,$A2 ; d
  .word eny_spr_3C,eny_spr_3C   ; .byte $FC,$A2,$FC,$A2 ; i
  .word eny_spr_3D,eny_spr_3D   ; .byte $09,$A3,$09,$A3 ; m
  .word eny_spr_3E,eny_spr_3E   ; .byte $16,$A3,$16,$A3 ; u
  .word eny_spr_3F,eny_spr_3F   ; .byte $23,$A3,$23,$A3 ; s

boss_eny_spr_tbl:    ; @$9EF2-9FF1
	.word bos_spr_00,bos_spr_00   ; .byte $1D,$A0,$1D,$A0 ; planet boss
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word eny_spr_08,eny_spr_08   ; .byte $10,$A0,$10,$A0 ; platform
  .word bos_spr_05a,bos_spr_05b ; .byte $2E,$A0,$33,$A0 ; kabusu
  .word bos_spr_05a,bos_spr_05b ; .byte $2E,$A0,$33,$A0 ; kabusu
  .word bos_spr_07,bos_spr_07   ; .byte $38,$A0,$38,$A0 ; decepticon symbol red
	.word bos_spr_08a,bos_spr_08b ; .byte $3D,$A0,$42,$A0 ; cymbal from red decepticon symbol
  .word bos_spr_09,bos_spr_09   ; .byte $D1,$A0,$D1,$A0 ; nemesis?
  .word bos_spr_0Aa,bos_spr_0Ab ; .byte $D6,$A0,$E7,$A0 ; ?
  .word bos_spr_07,bos_spr_07   ; .byte $38,$A0,$38,$A0 ; decepticon symbol blue
  .word bos_spr_08a,bos_spr_08b ; .byte $3D,$A0,$42,$A0 ; cymbal from blue decepticon symbol
  .word bos_spr_0D,bos_spr_0D   ; .byte $4F,$A1,$4F,$A1 ; scary spider
  .word bos_spr_07,bos_spr_07   ; .byte $38,$A0,$38,$A0 ; decepticon boss
  .word bos_spr_08a,bos_spr_08b ; .byte $3D,$A0,$42,$A0 ; cymbal from purple decepticon symbol
	.word bos_spr_10,bos_spr_10   ; .byte $60,$A1,$60,$A1 ; trypticon boss
  .word bos_spr_11a,bos_spr_11b ; .byte $71,$A1,$82,$A1 ; trypticon blast explosion
  .word bos_spr_12,bos_spr_12   ; .byte $93,$A1,$93,$A1 ; menasor boss
  .word bos_spr_13a,bos_spr_13b ; .byte $98,$A1,$9D,$A1 ; bruticus/megatron bullet
  .word bos_spr_14,bos_spr_14   ; .byte $A2,$A1,$A2,$A1 ; bruticus boss
  .word bos_spr_15,bos_spr_15   ; .byte $A7,$A1,$A7,$A1 ; megatron boss
  .word plr_spr_0A,plr_spr_0A   ; .byte $6E,$9C,$6E,$9C ; ? blank sprite
  .word bos_spr_17a,bos_spr_17b ; .byte $FE,$A3,$0F,$A4 ; bumblebee botmode
  .word bos_spr_18,bos_spr_18   ; .byte $18,$A4,$18,$A4 ; bumblebee carmode
  .word bos_spr_19a,bos_spr_19b ; .byte $29,$A4,$32,$A4 ; menasor laser
  .word bos_spr_1Aa,bos_spr_1Ab ; .byte $4C,$A4,$51,$A4 ; ?
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_03   ; .byte $C6,$9D,$D7,$9D ; explosion A
  .word wpn_spr_02,wpn_spr_04   ; .byte $C6,$9D,$E8,$9D ; explosion B
  .word wpn_spr_02,wpn_spr_04   ; .byte $C6,$9D,$E8,$9D ; explosion B


eny_spr_00:               ; @9f7e ramjet
  .byte $03
  .byte $FC,$C0,$41,$04
  .byte $FC,$C1,$41,$FC
  .byte $FC,$C2,$41,$F4
eny_spr_01:               ; @9f8b blitzwing
  .byte $05
  .byte $F4,$C4,$41,$FC
  .byte $F4,$C3,$41,$04
  .byte $FC,$C5,$01,$F4
  .byte $FC,$C6,$41,$FC
  .byte $FC,$C5,$41,$04
eny_spr_02a:              ; @9fa0 bot
  .byte $06
  .byte $F4,$C8,$41,$00
  .byte $FC,$CC,$41,$00
  .byte $04,$D0,$41,$00
  .byte $F4,$C9,$41,$F8
  .byte $FC,$CD,$41,$F8
  .byte $04,$D1,$41,$F8
eny_spr_02b:              ; @9fb9 bot
  .byte $06
  .byte $F4,$CA,$41,$00
  .byte $FC,$CE,$41,$00
  .byte $04,$D2,$41,$00
  .byte $F4,$CB,$41,$F8
  .byte $FC,$CF,$41,$F8
  .byte $04,$D3,$41,$F8
eny_spr_03:               ; @9fd2 crack
	.byte $03
  .byte $FC,$FA,$42,$F4
  .byte $FC,$F9,$42,$FC
  .byte $FC,$F8,$42,$04
eny_spr_04a:              ; @9fdf gosupu
  .byte $02
  .byte $F8,$F7,$01,$FC
  .byte $00,$E9,$01,$FC
eny_spr_04b:              ; @9fe8 gosupu
  .byte $02
  .byte $F8,$F7,$01,$FC
  .byte $00,$E8,$01,$FC
eny_spr_05:               ; @9ff1 hammer
  .byte $02
  .byte $F8,$E0,$02,$FC
  .byte $00,$E1,$02,$FC
eny_spr_06:               ; @9ffa tosher
  .byte $02
  .byte $FC,$E2,$01,$F8
  .byte $FC,$E3,$01,$00
eny_spr_07:               ; @a003 heru
  .byte $03
  .byte $F6,$F0,$01,$FC
  .byte $FE,$F1,$01,$F8
  .byte $FE,$F2,$01,$00
eny_spr_08:               ; @a010 platform
  .byte $03
  .byte $FC,$82,$01,$F4
  .byte $FC,$83,$01,$FC
  .byte $FC,$82,$41,$04
  ; Boss enemies
bos_spr_00:                   ; @a01d planet boss
  .byte $04
  .byte $F8,$BC,$03,$F8
  .byte $F8,$BD,$03,$00
  .byte $00,$BE,$03,$F8
  .byte $00,$BF,$03,$00
bos_spr_05a:                  ; @a02e kabusu
  .byte $01
  .byte $FC,$EA,$21,$FC
bos_spr_05b:                  ; @a033 kabusu
  .byte $01
  .byte $FC,$EB,$21,$FC
bos_spr_07:                 ; @a038 decepticon symbol bosses
  .byte $01
  .byte $FC,$EE,$03,$FC
bos_spr_08a:                ; @a03d
  .byte $01
  .byte $FC,$B0,$22,$FC
bos_spr_08b:                ; @a042
  .byte $01
  .byte $FC,$B1,$22,$FC
eny_spr_0Aa:                ; @a047 gau
  .byte $01
  .byte $FC,$EC,$22,$FC
eny_spr_0Ab:                ; @a04c gau
  .byte $01
  .byte $FC,$ED,$22,$FC
eny_spr_0B:                 ; @a051 laggar
  .byte $01
  .byte $FC,$E8,$22,$FC
eny_spr_0D:                 ; @a056 laserbeak
  .byte $03
  .byte $FC,$EB,$41,$F4
  .byte $FC,$EA,$41,$FC
  .byte $FC,$E9,$41,$04
  ; @? ***************
  .byte $06
  .byte $F0,$E0,$01,$F8
  .byte $F0,$E0,$41,$00
  .byte $F8,$E2,$01,$F8
  .byte $F8,$E2,$41,$00
  .byte $00,$E1,$01,$FC
  .byte $08,$E3,$01,$FC
eny_spr_0E:                 ; @a07c condor
  .byte $03
  .byte $FC,$EB,$42,$F4
  .byte $FC,$EA,$42,$FC
  .byte $FC,$E9,$42,$04
eny_spr_0F:                 ; @a089 zunonbat nesting
  .byte $02
  .byte $FC,$FC,$02,$FC
  .byte $04,$FD,$02,$FC
eny_spr_10:                 ; @a092 zunonbat flying
	.byte $02
  .byte $FC,$FE,$02,$F8
  .byte $FC,$FE,$42,$00
eny_spr_11:                 ; @a09b marakirasu
  .byte $03
  .byte $F4,$E7,$22,$FC
  .byte $FC,$E5,$22,$FC
  .byte $04,$E6,$22,$FC
eny_spr_13:                 ; @a0a8 azak
  .byte $0A
  .byte $F0,$D6,$62,$00
  .byte $F0,$D7,$62,$F8
  .byte $F8,$D8,$62,$00
  .byte $F8,$D9,$62,$F8
  .byte $00,$DA,$62,$00
  .byte $00,$DB,$62,$F8
  .byte $08,$DC,$62,$00
  .byte $08,$DD,$62,$F8
  .byte $00,$DE,$62,$08
  .byte $08,$DF,$62,$08
bos_spr_09:                 ; @a0d1 nemesis?
  .byte $01
  .byte $FC,$C7,$03,$FC
bos_spr_0Aa:                ; @a0d6
  .byte $04
  .byte $F8,$C3,$02,$F8
  .byte $F8,$C4,$02,$00
  .byte $00,$C5,$02,$F8
  .byte $00,$C6,$02,$00
bos_spr_0Ab:                ; @a0e7
  .byte $04
  .byte $F8,$C6,$C2,$F8
  .byte $F8,$C5,$C2,$00
  .byte $00,$C4,$C2,$F8
  .byte $00,$C3,$C2,$00
eny_spr_14a:                ; @a0f8 ratbat
  .byte $04
  .byte $FC,$9F,$02,$F4
  .byte $FC,$9D,$02,$FC
  .byte $FC,$9F,$42,$04
  .byte $04,$9E,$02,$FC
eny_spr_14b:                ; @a109 ratbat
  .byte $04
  .byte $FC,$9C,$02,$F4
  .byte $FC,$9D,$02,$FC
  .byte $FC,$9C,$42,$04
  .byte $04,$9E,$02,$FC
eny_spr_15:                 ; @a11a ratbat tape
  .byte $02
  .byte $FC,$9A,$02,$F8
  .byte $FC,$9B,$02,$00
eny_spr_16:                 ; @a123 snow commander
  .byte $04
  .byte $F5,$B1,$43,$F8
  .byte $F5,$B0,$43,$00
  .byte $FD,$B3,$43,$F8
  .byte $FD,$B2,$43,$00
eny_spr_17:                 ; @a134 wasta
  .byte $02
  .byte $FC,$B8,$02,$F8
  .byte $FC,$B9,$02,$00
eny_spr_18:                 ; @a13d zaffuru
  .byte $03
  .byte $F8,$F4,$02,$F8
  .byte $F8,$F5,$02,$00
  .byte $00,$F6,$02,$FC
eny_spr_19:                 ; @a14a bugs
  .byte $01
  .byte $FC,$BF,$02,$FC
bos_spr_0D:                 ; @a14f
  .byte $04
  .byte $F8,$EE,$02,$F8
  .byte $F8,$EE,$42,$00
  .byte $00,$EF,$02,$F8
  .byte $00,$EF,$42,$00
bos_spr_10:                  ; @a160 trypitcon
  .byte $04
  .byte $04,$FA,$03,$F8
  .byte $FC,$F8,$03,$F8
  .byte $FC,$F9,$03,$00
  .byte $F4,$F7,$03,$00
bos_spr_11a:                 ; @a171 trypitcon explosion blast
  .byte $04
  .byte $F8,$B7,$02,$F8
  .byte $F8,$B8,$02,$00
  .byte $00,$B9,$02,$F8
  .byte $00,$BA,$02,$00
bos_spr_11b:                ; @a182 trypitcon explosion blast
  .byte $04
  .byte $F8,$BB,$02,$F8
  .byte $F8,$BC,$02,$00
  .byte $00,$BD,$02,$F8
  .byte $00,$BE,$02,$00
bos_spr_12:                 ; @a193 Menasor
  .byte $01
  .byte $FD,$E5,$03,$FD
bos_spr_13a:                ; @a198 megatron/bruticus bullet
  .byte $01
  .byte $FC,$D4,$02,$FC
bos_spr_13b:                ; @a19d megatron/bruticus bullet
  .byte $01
  .byte $FC,$D5,$02,$FC
bos_spr_14:                 ; @a1a2 bruticus
  .byte $01
  .byte $FD,$E6,$03,$FD
bos_spr_15:                 ; @a1a7 megatron
  .byte $01
  .byte $FC,$E7,$03,$FC
eny_spr_1A:                 ; @a1ac starscream jet
  .byte $03
  .byte $FC,$C0,$42,$04
  .byte $FC,$C1,$42,$FC
  .byte $FC,$C2,$42,$F4
eny_spr_1B:                 ; @a1b9 starscream bot
  .byte $05
  .byte $FC,$8E,$02,$F8
  .byte $04,$8F,$02,$F8
  .byte $FC,$8D,$02,$00
  .byte $FC,$86,$02,$08
  .byte $F4,$85,$02,$00
eny_spr_1C:                 ; @a1ce gido
  .byte $04
  .byte $F8,$68,$02,$F8
  .byte $00,$69,$02,$F8
  .byte $F8,$68,$42,$00
  .byte $00,$69,$42,$00
  ; ************@a1df not called
  .byte $04
  .byte $FC,$F1,$02,$F0
  .byte $FC,$F2,$02,$F8
  .byte $FC,$F2,$42,$00
  .byte $FC,$F1,$42,$08
  ; ************@a1f0 not called
  .byte $03
  .byte $FC,$F5,$02,$F4
  .byte $FC,$F6,$02,$FC
  .byte $FC,$F5,$02,$04
eny_spr_26a:                  ; @a1fd rabu/ganzo
  .byte $02
  .byte $F8,$B4,$02,$FC
  .byte $00,$B5,$02,$FC
eny_spr_26b:                  ; @a206 rabu/ganzo
  .byte $02
  .byte $F8,$B6,$02,$FC
  .byte $00,$B7,$02,$FC
eny_spr_2A:                   ; @a20f ?
  .byte $04
  .byte $F8,$B0,$02,$F8
  .byte $F8,$B1,$02,$00
  .byte $00,$B2,$02,$F8
  .byte $00,$B3,$02,$00
eny_spr_2B:                   ; @a220 ?
  .byte $00
eny_spr_2Ca:                  ; @a221
  .byte $04
  .byte $F8,$D4,$02,$F8
  .byte $F8,$D5,$02,$00
  .byte $00,$D8,$02,$F8
  .byte $00,$D9,$02,$00
eny_spr_2Cb:                  ; @a232
	.byte $04
  .byte $F8,$D4,$02,$F8
  .byte $F8,$D5,$02,$00
  .byte $00,$D6,$02,$F8
  .byte $00,$D7,$02,$00
eny_spr_2Da:                  ; @a243
  .byte $05
  .byte $F8,$90,$02,$F0
  .byte $F8,$91,$02,$F8
  .byte $F8,$92,$02,$00
  .byte $00,$93,$02,$F8
  .byte $00,$94,$02,$00
eny_spr_2Db:                  ; @a258
  .byte $05
  .byte $F8,$91,$02,$F8
  .byte $F8,$92,$02,$00
  .byte $00,$97,$02,$F0
  .byte $00,$98,$02,$F8
  .byte $00,$94,$02,$00
eny_spr_2E:                   ; @a26d
  .byte $02
  .byte $F8,$9B,$03,$FC
  .byte $00,$9C,$03,$FC
eny_spr_1E:                   ; @a276 takara baby
  .byte $04
  .byte $F8,$DC,$43,$F8
  .byte $F8,$DB,$43,$00
  .byte $00,$DE,$43,$F8
  .byte $00,$DD,$43,$00
eny_spr_1F:                   ; @a287 energon cube
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A7,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_34:                   ; @a294 p powerup
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A2,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_35:               ; @a2a1 f powerup
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A3,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_36:               ; @a2ae d powerup
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A4,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_37:               ; @a2bb b powerup
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A5,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_38:               ; @a2c8 1up
  .byte $03
  .byte $FC,$A1,$41,$F4
  .byte $FC,$A6,$41,$FC
  .byte $FC,$A0,$41,$04
eny_spr_39:               ; @a2d5 rodimus r
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$A9,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3A:               ; @a2e2 rodimus o
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$AA,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3B:               ; @a2ef rodimus d
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$A9,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3C:               ; @a2fc rodimus i
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$AB,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3D:               ; @a309 rodimus m
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$AC,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3E:               ; @a316 rodimus u
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$A9,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_3F:               ; @a323 rodimus s
  .byte $03
  .byte $FC,$A8,$01,$F4
  .byte $FC,$A9,$41,$FC
  .byte $FC,$A8,$41,$04
eny_spr_12:               ; @a330 guardian
  .byte $03
  .byte $FC,$D0,$02,$F4
  .byte $FC,$D1,$02,$FC
  .byte $FC,$D0,$42,$04
eny_spr_28:               ; Megatron Poster A3D3
  .byte $30
  .byte $E8,$DF,$42,$E0
  .byte $E8,$DE,$42,$E8
  .byte $E8,$DD,$42,$F0
  .byte $E8,$DC,$42,$F8
  .byte $E8,$DB,$42,$00
  .byte $E8,$DA,$42,$08
  .byte $E8,$D9,$42,$10
  .byte $E8,$D8,$42,$18
  .byte $F0,$FF,$42,$E0
  .byte $F0,$FE,$42,$E8
  .byte $F0,$FD,$42,$F0
  .byte $F0,$FC,$42,$F8
  .byte $F0,$FB,$42,$00
  .byte $F0,$FA,$42,$08
  .byte $F0,$F9,$42,$10
  .byte $F0,$F8,$42,$18
  .byte $F8,$B7,$42,$E0
  .byte $F8,$B6,$42,$E8
  .byte $F8,$B5,$42,$F0
  .byte $F8,$B4,$42,$F8
  .byte $F8,$B3,$42,$00
  .byte $F8,$B2,$42,$08
  .byte $F8,$B1,$42,$10
  .byte $F8,$B0,$42,$18
  .byte $00,$BF,$42,$E0
  .byte $00,$BE,$42,$E8
  .byte $00,$BD,$42,$F0
  .byte $00,$BC,$42,$F8
  .byte $00,$BB,$42,$00
  .byte $00,$BA,$42,$08
  .byte $00,$B9,$42,$10
  .byte $00,$B8,$42,$18
  .byte $08,$C7,$42,$E0
  .byte $08,$C6,$42,$E8
  .byte $08,$C5,$42,$F0
  .byte $08,$C4,$42,$F8
  .byte $08,$C3,$42,$00
  .byte $08,$C2,$42,$08
  .byte $08,$C1,$42,$10
  .byte $08,$C0,$42,$18
  .byte $10,$CF,$42,$E0
  .byte $10,$CE,$42,$E8
  .byte $10,$CD,$42,$F0
  .byte $10,$CC,$42,$F8
  .byte $10,$CB,$42,$00
  .byte $10,$CA,$42,$08
  .byte $10,$C9,$42,$10
  .byte $10,$C8,$42,$18
bos_spr_17a:                  ; @a3fe bumblebee bot
  .byte $04
  .byte $F8,$90,$01,$F8
  .byte $F8,$91,$01,$00
  .byte $00,$92,$01,$F8
  .byte $00,$93,$01,$00
bos_spr_17b:                  ; @a40f bumblebee bot
  .byte $02
  .byte $F8,$94,$01,$FC
  .byte $00,$95,$01,$FC
bos_spr_18:                   ; @a418 bumblebee car
  .byte $04
  .byte $F8,$96,$01,$F8
  .byte $F8,$97,$01,$00
  .byte $00,$98,$01,$F8
  .byte $00,$99,$01,$00
bos_spr_19a:                  ; @a429 menasor bullet 
  .byte $02
  .byte $FC,$BA,$02,$F8
  .byte $FC,$BA,$02,$00
bos_spr_19b:                  ; @a432 menasor bullet
	.byte $02
  .byte $FC,$BB,$01,$F8
  .byte $FC,$BB,$01,$00
eny_spr_25:                   ; @a43b unknown *****
  .byte $04
  .byte $FC,$F2,$01,$F4
  .byte $FC,$FF,$01,$FC
  .byte $FC,$F2,$41,$04
  .byte $04,$FB,$01,$FC
bos_spr_1Aa:                  ; @a44c
  .byte $01
  .byte $FC,$EA,$01,$FC
bos_spr_1Ab:                  ; @a451
  .byte $01
  .byte $FC,$EB,$01,$FC


eny_spawn_chkpt:
  lda stage_orientation   ; get stage orientation
  and #$C0                ; check for vertical level
  beq b_a460
  jsr eny_spawn_vert_chkpt      ; jump if vertical level
  rts
b_a460:                   ; horizontal level
  jsr eny_spawn_horiz_chkpt
  jsr dec_frm_cnt_96
  rts
eny_spawn_horiz_chkpt:          ; this routine checks if player is within 1-1.5 pages from enemy spawn point and spawns enemy
  jsr get_eny_chkpt
  lda plr_x_prog_pg
  clc
  adc #$01
  sta $03                 ; load player x page, add 1 and store to 03 ram
  lda plr_x_prog_hi
  sta $02                 ; load player x prog high and store to 02 ram
  lda $00
  sec
  sbc $02                 ; subtract lvl table result - plr_x_prog_hi
  lda $01
  sbc $03                 ; now subtract the page bytes with the carry
  bcc passed_eny_chkpt    ; branch to increment enemy counter if plr_x_prog at least 1 page away from the checkpoint, dont spawn enemy if we're on the same page
  lda plr_x_prog_hi
  clc
  adc #$80
  sta $02                 ; add 80 + plr_x_prog_hi and store in 02 ram
  lda plr_x_prog_pg
  adc #$01
  sta $03                 ; add 1 + plr_x_prog_pg and store in 03 ram
  lda $00                 ; load the thing from the table
  sec
  sbc $02
  lda $01
  sbc $03                 ; subtract to see if player is less than 1.5 pages to enemy checkpoint
  bcc b_a499              ; branch if player is within 1.5 pages from enemy checkpoint
  rts                     ; rts if player hasnt reached at least 1 or 1.5 pages from next enemy checkpoint
b_a499:
  lda #$0F
  sta $00 
rdy_eny_x_y_typ:
  ldx #$00
  jsr find_open_eny_ram_slot
  lda $00
  beq b_a4c9              ; exit if no more enemy slots
  lda ($09),Y
  sta eny_spr_x_pos_hi,X
  iny
  lda ($09),Y
  sta eny_spr_x_pos_page,X
  iny
  lda ($09),Y
  sta eny_spr_y_pos_hi,X
  iny
  lda ($09),Y
  sta eny_spr_y_pos_page,X
  iny
  lda ($09),Y
  sta eny_spr_type,X
  iny
  jsr set_new_enemy
passed_eny_chkpt:
  inc subtitle_timer
b_a4c9:
  rts
get_eny_chkpt:
  lda current_level
  asl
  tax                     ; multiply current level by 2 and use as x index
  lda eny_chkpt_tbl,X    ; @$bc6d
  sta $09
  lda eny_chkpt_tbl+1,X
  sta $0A                 ; store x location from eny_chkpt_tbl
  lda subtitle_timer      ; load subtitle_timer, we're using it as the enemy counter in this case
  sta $00                 ; store subtitle_timer in 00 ram
  asl
  asl                     
  clc
  adc $00                 ; multiply subtitle_timer by 5
  tay                     ; use as y index
  lda ($09),Y
  sta $00
  iny
  lda ($09),Y
  sta $01                 ; get enemy x location checkpoint to ram
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
  jsr find_open_eny_ram_slot
  lda $00
  beq b_a549
  jsr rng_rtn
  lda rng_ram
  and #$01
  sta $02
  lda current_level
  asl
  tay
  lda lvl_addr_tbl_2,Y    ; @$BFE0
  sta $00
  lda lvl_addr_tbl_2+1,Y
  sta $01
  lda plr_x_prog_pg
  asl
  clc
  adc $02
  tay
  lda #$40
  sta $02
  lda #$00
  sta $03
  lda $02
  sta eny_spr_y_pos_hi,X
  lda $03
  sta eny_spr_y_pos_page,X
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
  jsr set_new_enemy_no_reset_exp_timer
  jsr enemy_new_pos
  lda current_level
  asl
  tay
  lda enemy_addr_tbl_1,y  ; $@C0C6
  sta $05
  lda enemy_addr_tbl_1+1,Y
  sta $06
  lda plr_x_prog_pg
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
  jsr find_open_eny_ram_slot
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
  sta eny_spr_y_pos_hi,X
  lda $03
  sta eny_spr_y_pos_page,X
  lda $0B
  bpl b_a5b0
  lda $04
  clc
  adc #$10
  sta $04
b_a5b0:
  lda $04
  sta eny_exp_timer,X
  lda $0B
  and #$BF
  sta eny_spr_type,X
  jsr enemy_new_pos
  jsr set_new_enemy_no_reset_exp_timer
  dec $01
  bne b_a570
  rts
enemy_new_pos:
  lda plr_x_prog_hi
  clc
  adc #$80
  sta eny_spr_x_pos_hi,X
  lda plr_x_prog_pg
  adc #$01
  sta eny_spr_x_pos_page,X
  jsr set_new_enemy_no_reset_exp_timer
  rts
level_sub_a:
  lda #$00
  sta subtitle_timer
  sta eny_chkpt_cntr
  lda stage_orientation
  and #$C0                        ; check for vertical level
  bne b_a60f                      ; branch if vertical level, 40 down or 80 up to skip check enemy checkpoint routine
  lda #$0F
  sta $0C                         ; loop the following section 0F times
chk_eny_chkpt:
  jsr get_eny_chkpt
  lda plr_x_prog_pg
  clc
  adc #$01                        ; add 1 to player x page
  sta $03
  lda plr_x_prog_hi
  sta $02
  lda $00
  sec
  sbc $02
  lda $01
  sbc $03                         ; subtract enemy checkpoint - player x position
  bcs b_a60a                      ; branch if have not reached checkpoint
  lda #$0F
  sta $00
  jsr rdy_eny_x_y_typ
b_a60a:
  dec $0C
  bpl chk_eny_chkpt               ; loop back 0F times
  rts
b_a60f:
  jsr chk_eny_chkpt_rtn
  bne b_a619              ; branch if not at the end of table
  lda #$00                ; load 00 into eny_chkpt_cntr if we're at the end of the table
  sta eny_chkpt_cntr
  rts
b_a619:
  lda plr_y_prog_hi
  sta $02                 ; store player y prog to 02, high point
  clc
  adc #$F0
  sta $04                 ; store player y prog - 0f to 04, the low point
  lda plr_y_prog_pg
  sta $03                 ; store player y page to 03
  adc #$00
  sta $05                 ; store the low page to 05
  jsr chk_plr_eny_chkpt_range
  bcs b_a632
  jsr lvl_misc_rtn_a10
b_a632:
  inc eny_chkpt_cntr
  jmp b_a60f
eny_spawn_vert_chkpt:
  lda #$04
  sta $08
lvl_misc_rtn_a11:
  jsr chk_eny_chkpt_rtn
  bne chk_plr_y_eny_chkpt
  lda #$00
  sta eny_chkpt_cntr
  jmp lvl_misc_rtn_a11
chk_plr_y_eny_chkpt:
  lda plr_y_prog_hi
  sta $04                 ; store player y prog to 04
  sec
  sbc #$40
  sta $02                 ; store player y prog + 40 above to 02
  lda plr_y_prog_pg
  sta $05                 ; store player y page to 05
  sbc #$00
  sta $03                 ; store player y page with offset to 03
  jsr chk_plr_eny_chkpt_range
  bcs b_a663
  jsr lvl_misc_rtn_a10
  jmp b_a685
b_a663:
  lda plr_y_prog_hi
  clc
  adc #$F0
  sta $02                     ; store the high point, player progress high + f0 , below player
  lda plr_y_prog_pg
  adc #$00
  sta $03                     ; store the offset page to 03
  lda plr_y_prog_hi
  clc
  adc #$30
  sta $04                     ; lower the low point 1 page and 30 y prog hi and store to 04 and 05 for the page
  lda plr_y_prog_pg
  adc #$01
  sta $05
  jsr chk_plr_eny_chkpt_range
  bcs b_a685
  jsr lvl_misc_rtn_a10
b_a685:
  inc eny_chkpt_cntr
  dec $08
  bne lvl_misc_rtn_a11
  rts
chk_eny_chkpt_rtn:
  lda current_level
  and #$FE
  tay
  lda vert_lvl_eny_spawn_tbl,Y  ; @$c130
  sta $00
  lda vert_lvl_eny_spawn_tbl+1,Y
  sta $01
  lda eny_chkpt_cntr
  asl
  sta $09               ; offset times 2
  asl                   ; offset times 4
  clc
  adc $09               ; offset times 6
  clc
  adc $00               ; add offset to address location
  sta $00
  lda $01
  adc #$00
  sta $01
  ldy #$01
  lda ($00),Y           ; load the second byte from the table
  cmp #$FF              ; compare with a terminator flag
  rts
chk_plr_eny_chkpt_range:; carry clear if player within checkpoint range, carry set if not within checkpoint range
  dey                   ; decrement y so its now 0, presumably it was 01 coming in here because we were checking for a terminator with y=01
  lda ($00),Y           ; load first byte
  sec
  sbc $02               ; tbl_byte_00 - plr_y_prog_hi high point
  iny 
  lda ($00),Y
  sbc $03               ; tbl_byte_01 - plr_y_prog_pg high point
  bcc b_a6cf            ; branch if player if below table byte 00,01
  dey                   ; decrement y and now check for the low point because our high point is above the table checkpoint y value
  lda ($00),Y
  sec
  sbc $04               ; plr_y_prog_hi low point
  iny
  lda ($00),Y
  sbc $05               ; plr_y_prog_pg low point
  rts
b_a6cf:
  sec
  rts
lvl_misc_rtn_a10:
  ldy #$05
  lda ($00),Y           ; get the last byte from the table row
  asl
  asl
  asl
  asl
  tax
  lda eny_spr_status,X
  bpl b_a6e0            ; branch if enemy status slot is empty and load another enemy
  rts
b_a6e0:
  jsr set_new_enemy
  lda #$00
  sta eny_spr_x_pos_lo,X
  sta eny_spr_y_pos_lo,X
  ldy #$00
  lda ($00),Y
  sta eny_spr_y_pos_hi,X
  iny
  lda ($00),Y
  sta eny_spr_y_pos_page,X
  iny
  lda ($00),Y
  sta eny_spr_x_pos_hi,X
  iny
  lda ($00),Y
  sta eny_spr_x_pos_page,X
  iny
  lda ($00),Y
  sta eny_spr_type,X
  rts
find_open_eny_ram_slot:
  lda eny_spr_status,X
  bpl :+                ; branch if we have an empty slot, use this x register
  txa
  clc
  adc #$10
  tax
  dec $00
  bne find_open_eny_ram_slot
:
  rts
set_new_enemy:
  lda #$00
  sta eny_exp_timer,X
set_new_enemy_no_reset_exp_timer:
  lda #$00
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
  sta eny_altmode,X
  sta eny_boss_wpn_timer,X
  sta eny_spr_substatus,X
  lda #$80
  sta eny_spr_status,X      ; activate new enemy
  rts
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
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
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
  bne b_a7a0
b_a792:
  lsr num_bosses
  bne b_a7a0
  lda #$01
  sta state             ; store 01 to state, indicating level is completed
  lda #$00
  sta flash_counter
  sta boss_explosion_counter
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
  sta boss_explosion_counter
  rts
b_a7b7:                   ; this gets loaded at the pre-stage screen
  lda #$80
  sta eny_spr_status,X
  lda #$28
  sta eny_spr_type,X
  lda #$80
  sta eny_spr_x_pos_hi,X
  lda #$00
  sta eny_spr_x_pos_page,X
  sta eny_spr_y_pos_page,X
  lda #$58
  sta eny_spr_y_pos_hi,X
  rts
enemy_sprite_rtn:
  ldx #$00
  lda #$0F
  sta $0C
b_a7da:
  stx current_enemy
  lda eny_spr_status,X
  bpl b_a820
  lda #>b_a820
  pha
  lda #<b_a820
  pha
  lda eny_spr_status,X
  and #$10
  bne b_a83e
  lda eny_spr_status,X
  and #$40
  beq b_a7f8
  jmp eny_spr_clear_data
b_a7f8:                     ; something gets called from here and its direct... so is messing things up****************
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
;*********** a810 this gets called from somewhere.....
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
  lda current_enemy
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
  lda eny_altmode,X
  sta eny_spr_type,X
  lda #$00
  sta eny_exp_timer,X
  sta eny_altmode,X
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
eny_mov_despawn:
  ldx #$00
  lda #$0F
  sta $04
j_a877:
  lda eny_spr_status,X
  bpl nxt_eny_ram_slot
  lda eny_spr_substatus,X
  and #$10
  bne nxt_eny_ram_slot
  lda eny_x_spd_lo,X
  sta $00
  lda eny_x_spd_hi,X
  sta $01
  jsr eny_x_y_mov_rtn
  lda eny_y_spd_lo,X
  sta $00
  lda eny_y_spd_hi,X
  sta $01
  inx
  inx
  inx
  jsr eny_x_y_mov_rtn
  dex
  dex
  dex
  lda plr_x_prog_hi
  clc
  adc #$08
  sta $00
  lda plr_x_prog_pg
  adc #$00
  sta $01
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  lda eny_spr_x_pos_page,X
  sbc $01
  bcc remove_eny_spr
  lda plr_x_prog_hi
  clc
  adc #$88
  sta $00
  lda plr_x_prog_pg
  adc #$01
  sta $01
  lda eny_spr_x_pos_hi,x
  sec
  sbc $00
  lda eny_spr_x_pos_page,X
  sbc $01
  bcs remove_eny_spr
  lda eny_spr_y_pos_hi,X
  sec
  sbc plr_y_prog_hi
  sta $00
  lda eny_spr_y_pos_page,X
  sbc plr_y_prog_pg
  sta $01
  bpl b_a907                ; branch if player is above enemy
  jsr flip_bits_1
  lda $01
  bne remove_eny_spr        ; branch if player is 1 page or more away
  lda $00
  cmp #$70
  bcc nxt_eny_ram_slot      ; go to next ram slot if player is closer than 70 y progress high
remove_eny_spr:
  lda #$00
  sta eny_spr_status,X
nxt_eny_ram_slot:
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
  bcc nxt_eny_ram_slot
  bne remove_eny_spr
  lda $00
  cmp #$70
  bcc nxt_eny_ram_slot
  jmp remove_eny_spr
eny_x_y_mov_rtn:
  ldy #$00
  lda $01
  bpl b_a922
  dey
b_a922:
  sty $02
  lda eny_spr_x_pos_lo,X
  clc
  adc $00
  sta eny_spr_x_pos_lo,X
  lda eny_spr_x_pos_hi,X
  adc $01
  sta eny_spr_x_pos_hi,X
  lda eny_spr_x_pos_page,X
  adc $02
  sta eny_spr_x_pos_page,X
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
  lda eny_spr_x_pos_hi,X
  sec
  sbc plr_x_prog_hi
  sta $02
  lda eny_spr_x_pos_page,X
  sbc plr_x_prog_pg
  bne b_a98a
  lda eny_spr_y_pos_hi,X
  sec
  sbc plr_y_prog_hi
  sta $01
  lda eny_spr_y_pos_page,X
  sbc plr_y_prog_pg
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
  lda #$F0
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
  lda eny_altmode,X
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
  lda sideroom_state
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
boss_defeated:
  inc flash_counter         ; increment flash counter
  lda flash_counter
  cmp #$C0
  bcs b_aa69                ; branch when flash counter reaches C0
  and #$0F
  bne b_aa68
  lda boss_explosion_counter
  cmp #$07
  bcs b_aa68
  inc boss_explosion_counter
  lda #$0F
  sta $00
  ldx #$00
  jsr find_open_eny_ram_slot
  lda $00
  beq b_aa68
  jsr set_new_enemy
  lda #$00
  sta eny_spr_x_pos_page,X
  sta eny_spr_y_pos_page,X
  lda #$20
  sta eny_spr_type,X
  lda #$C0
  sta eny_spr_status,X
  lda current_level
  and #$FE
  tay
  lda boss_explosion_tbl,y  ; @$c95f,y enemy pos addr tbl
  sta $02
  lda boss_explosion_tbl+1,Y
  sta $03
  lda boss_explosion_counter
  asl
  tay
  lda ($02),Y
  sta eny_spr_x_pos_hi,X
  iny
  lda ($02),Y
  sta eny_spr_y_pos_hi,X
  iny
  jsr play_boss_exp_sound
b_aa68:
  rts
b_aa69:
  lda #$40
  sta state
  rts
eny_misc_jmp_tbl:   ; @$AA6E-AA71
  .word enemy_lookup_tbl  ;  .byte $72,$AA,$F2,$AA
  .word boss_lookup_tbl
enemy_lookup_tbl:   ; @$aa72-ab27
	.word eny_00  ;.byte $5C,$B2 ramjet
  .word eny_01  ;.byte $79,$B2 blitzwing
  .word eny_02  ;.byte $CE,$B2 bot 
  .word eny_03  ;.byte $23,$B3 crack
  .word eny_04  ;.byte $45,$B3 gosupu
  .word eny_05  ;.byte $55,$B3 hammer
  .word eny_06  ;.byte $6B,$B3 tosher
  .word eny_07  ;.byte $77,$B3 heru
  .word eny_08  ;.byte $F0,$B3 platform
  .word eny_09  ;.byte $5C,$B6 platform
  .word eny_0a  ;.byte $B9,$B6 gau
  .word eny_0b  ;.byte $22,$B4 laggar
  .word eny_0c  ;.byte $6A,$B6 platform
  .word eny_0d  ;.byte $78,$B6 laserbeak
  .word eny_0e  ;.byte $2A,$B7 condor
  .word eny_0f  ;.byte $64,$B7 zunobat
	.word eny_10  ;.byte $87,$B7 zunobat flying
  .word eny_11  ;.byte $AC,$B7 Marakirasu
  .word eny_12  ;.byte $7B,$BB Guardian
  .word eny_13  ;.byte $1C,$B8 azak
  .word eny_14  ;.byte $D3,$B8 ratbat
  .word eny_15  ;.byte $DF,$B8 ratbat tape
  .word eny_16  ;.byte $E8,$B8 snow commander
  .word eny_17  ;.byte $0F,$B9 wasta
  .word eny_18  ;.byte $2A,$B9 zaffuru
  .word eny_19  ;.byte $32,$B9 bugs
  .word eny_1a  ;.byte $96,$B9 starscream jet
  .word eny_1b  ;.byte $A1,$B9 starscream bot
  .word eny_none;.byte $3F,$AB gido
  .word eny_none;.byte $3F,$AB gido
  .word eny_1e  ;.byte $1D,$BB takara baby
  .word eny_1e  ;.byte $1D,$BB energon cube
  .word eny_none;.byte $3F,$AB explostion A
  .word eny_21  ;.byte $3D,$BA Maara
  .word eny_none;.byte $3F,$AB explostion B
  .word eny_23  ;.byte $82,$BA invisible floating ball spawner, not used? maybe from the volcanos...
  .word eny_24  ;.byte $A6,$BA floating balls?
  .word eny_25  ;.byte $0F,$BC unused platforms (level 9) you need to shoot them to get them to stop and stand on them. otherwise magnus gets hurt if he touches one and it explodes
  .word eny_26  ;.byte $49,$BA rabu
  .word eny_27  ;.byte $5D,$BA ganzo wall slug
  .word eny_28  ;.byte $8E,$BB megatron poster
  .word eny_none;.byte $3F,$AB
  .word eny_2a  ;.byte $DA,$BA
  .word eny_2b  ;.byte $69,$BA
  .word eny_2c  ;.byte $9B,$BA
  .word eny_2d  ;.byte $E6,$BA
  .word eny_2e  ;.byte $0C,$BB
  .word eny_19  ;.byte $32,$B9
  .word eny_pu_jet  ;.byte $41,$BB  ramjet with powerup
  .word eny_pu_jet  ;.byte $41,$BB  ramjet with Barrier
  .word eny_pu_jet  ;.byte $41,$BB  ramjet with 1Up
  .word eny_pu_jet  ;.byte $41,$BB  ramjet with rodimus letter
  .word eny_powerup  ;.byte $72,$BB P
  .word eny_powerup  ;.byte $72,$BB F
  .word eny_powerup  ;.byte $72,$BB D
  .word eny_powerup  ;.byte $72,$BB B
  .word eny_powerup  ;.byte $72,$BB 1Up
  .word eny_powerup  ;.byte $72,$BB R
  .word eny_powerup  ;.byte $72,$BB O
  .word eny_powerup  ;.byte $72,$BB D
  .word eny_powerup  ;.byte $72,$BB I
  .word eny_powerup  ;.byte $72,$BB M
  .word eny_powerup  ;.byte $72,$BB U
  .word eny_powerup  ;.byte $72,$BB S
boss_lookup_tbl:    ; boss stuff
	.word bos_00  ;.byte $3C,$B4  planet boss
  .word eny_08  ;.byte $F0,$B3  platform
  .word bos_02  ;.byte $04,$B4  platform
  .word bos_03  ;.byte $0E,$B4  platform
  .word bos_04  ;.byte $18,$B4  platform
  .word bos_05  ;.byte $2D,$B5  kabusu
  .word bos_06  ;.byte $70,$B5  kabusu
  .word bos_07  ;.byte $AB,$B4  Decepticon Red
  .word bos_08  ;.byte $C2,$B5  Cymbal from red decepticon
  .word bos_09  ;.byte $77,$B8  Nemesis
  .word bos_0a  ;.byte $C7,$B8  
  .word bos_0b  ;.byte $3E,$B9  Decepticon Blue
  .word bos_0c  ;.byte $49,$B9  cymbal from blue decepticon (unused firewheel, nemesis palette/boss fight)
  .word bos_0d  ;.byte $5B,$B9  scary spider
  .word bos_0e  ;.byte $6E,$B9  decepticon boss
  .word bos_0f  ;.byte $79,$B9  nemesis boss
	.word bos_10  ;.byte $D0,$B9  trypticon
  .word eny_0d  ;.byte $78,$B6  trypticon blast explosion
  .word bos_12  ;.byte $E1,$B9  Menasor
  .word eny_0d  ;.byte $78,$B6  Bruticus/Megatron bullet
  .word bos_14  ;.byte $FA,$B9  Bruticus
  .word bos_15  ;.byte $13,$BA  Megatron
  .word bos_16  ;.byte $2C,$BA
  .word bos_17  ;.byte $E5,$BB  bumblebee botmode
  .word bos_18  ;.byte $97,$BB  bumblebee carmode
  .word bos_19  ;.byte $FC,$BB  menasor laser
  .word bos_1a  ;.byte $1B,$BC


move_enemy_vert:        ; b_ab28
  lda eny_y_spd_lo,X
  sta $06
  lda eny_y_spd_hi,X
  sta $07
  jsr enemy_move_rtn
  lda $06
  sta eny_y_spd_lo,X
  lda $07
  sta eny_y_spd_hi,X
eny_none:  ; ab1d
  rts
ratbat_platform_x_rtn:
  lda eny_x_spd_lo,X
  sta $06
  lda eny_x_spd_hi,X
  sta $07
  jsr enemy_move_rtn
  lda $06
  sta $00
  lda $07
  sta $01
  lda $00
  sta eny_x_spd_lo,X
  lda $01
  sta eny_x_spd_hi,X
  rts
enemy_misc_rtn_16:
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01
  beq :+
  lsr $05
  jmp enemy_invert_direction
enemy_move_rtn:
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01          ; 0th bit indicates y acceleration, 0 acellerate down, 1 acellerate up
  beq :+        ; skip flipping bits
enemy_invert_direction:
  jsr flip_bits_0   ; flip bits to negative
  :
  lda $06           ; enemy y speed low
  clc
  adc $00           ; add speed increment
  sta $00           ; store added speed
  sta $02
  lda $07           ; enemy y speed high
  adc $01           ; add the carry to the y speed high byte
  sta $01
  sta $03
  jsr flip_bits_1   ; flip bits if they're negative
  lda $01
  cmp $05           ; compare with enemy max speed
  bcc b_abac        ; store the new speed if its less than max speed
  lda eny_spr_substatus,X
  and #$01          ; check enemy substatus for 0th bit set
  beq b_aba3        ; set the 0th bit
  lda $03           ; if preflipped bits speed is plus, then add new speed
  bpl b_abac
b_aba3:
  lda eny_spr_substatus,X
  eor #$01
  sta eny_spr_substatus,X ; change vertical direction
  rts
b_abac:
  lda $02
  sta $06
  lda $03
  sta $07           ; set new enemy vertical speed
  rts
enemy_vert_off_plr_rtn:
  lda eny_spr_substatus,X
  sta $08                   ; store enemy substatus to 08 ram
  jsr move_enemy_vert
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_abf2                ; branch to exit if enemy hasnt changed y direction
  ldy #$00
  lda eny_spr_y_pos_hi,X
  clc
  adc $09                   ; add enemy y offset to enemy y position 
  sta $04
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $05                   ; store enemy location with offset
  jsr plr_stage_y_loc       ; get player y coordinates
  lda $04                   ; load enemy y location with offset
  sec
  sbc $00                   ; enemy y pos(+offset) - player y pos
  lda $05
  sbc $01
  bcc b_abe6                ; branch if player above enemy
  iny                       ; increment Y if enemy is around or just above player y location
b_abe6:
  sty $00
  lda eny_spr_substatus,X
  and #$FE                  ; clear enemy substatus vertical acceleration
  ora $00
  sta eny_spr_substatus,X   ; set vertical acceleration as needed
b_abf2:
  rts

move_tosher:
  lda eny_spr_x_pos_hi,X    ; load enemy x position high
  sec
  sbc plr_x_prog_hi         ; subract player x progress high
  sta $01                   ; store in 01 ram
  lda eny_spr_x_pos_page,X  ; load enemy x position page
  sbc plr_x_prog_pg         ; subtract player progress page
  bne b_ac10                ; branch if Tosher is not on same page as player
  lda $01
  cmp #$C0
  bcc b_ac1b                ; branch of Tosher is within C0 horizontal pixels or ~10(24?) tiles from player
b_ac08:
  lda #$00                  ; stop Tosher vertical movement if farther than C0 from player
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
b_ac10:                     ; continue moving Tosher horizonal
  lda #$80
  sta eny_x_spd_lo,X        ; store 80 to Tosher speed low byte
  lda #$FE
  sta eny_x_spd_hi,X        ; store FE to Tosher speed high byte, moving left
  rts
b_ac1b:                     ; Tosher is within ~10 tiles from player
  jsr plr_stage_y_loc
  lda $00                   ; load player y stage location high byte
  sec
  sbc #$0F                  ; subtract 0F from player y location, probably an offset because of the actual location point
  sta $00
  lda $01                   ; load player y page location
  sbc #$00                  ; subtract any carry from the page
  sta $01
  lda eny_spr_y_pos_hi,X 
  sec
  sbc $00                   ; enemy y position - player y position
  lda eny_spr_y_pos_page,X
  sbc $01                   ; enemy y page - player y page
  bcs b_ac08                ; branch if player is above enemy, or if player position is higher
  lda #$00                  ; stop Tosher horizontal movement
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  lda #$80
  sta eny_y_spd_lo,X        ; store 80 to Tosher y speed low byte
  lda #$04
  sta eny_y_spd_hi,X        ; store 04 to Tosher y speed high byte, speed of 4.5
  rts   

eny_ground_collision:
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcs b_ac66          ; branch if colided with ground
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  lda #$02
  sta eny_y_spd_hi,X  ; add gravity to enemy by making 2.0 y speed
  rts
b_ac66:
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
  rts
move_enemy_horiz:        ; @$ac6f
  lda #$00
  sta $01
  lda eny_spr_substatus,X ; check substatus
  and #$02
  beq b_ac7d              ; if substatus doesnt have 02 then skip flipping bits, enemy is moving left, time to move enemy right
  jsr flip_bits_0         ; if enemy substatus has 1th bit enabled, then flip bits, enemy is moving right, lets make enemy move left
b_ac7d:
  lda eny_x_spd_lo,X
  clc
  adc $00
  sta $00
  sta $02                 ; add speed increment and store to 00 and 02 ram
  lda eny_x_spd_hi,X
  adc $01
  sta $01                 ; add carry with enemy x speed high and store in 01 and 03 ram
  sta $03
  bpl b_acaf              ; branch out and set enemy sprite status with 02 if enemy speed is positive
  jsr flip_bits_1         ; flip bits to positive
  lda $01
  cmp $05                 ; compare new enemy x speed high with max speed
  bcc b_aca4              ; branch out and increment enemy x speed if we havent reached max x speed
  lda eny_spr_substatus,X
  and #$FD
  sta eny_spr_substatus,X ; clear bit for x direction in enemy sprite status if enemy reached max x speed
  rts
b_aca4:
  lda $02
  sta eny_x_spd_lo,X
  lda $03
  sta eny_x_spd_hi,X      ; increment x speed
  rts
b_acaf:
  lda eny_spr_substatus,X
  ora #$02
  sta eny_spr_substatus,X   ; set enemy sprite status with 02 for positive x speed or 00 
  rts
eny_wall_collision:        ; @$ acb8
  lda stage_boss
  asl
  tay
  lda eny_hitbox_jmp_tbl,y   ; @$c898,y
  sta $04
  lda eny_hitbox_jmp_tbl+1,Y
  sta $05
  lda eny_spr_type,X
  asl
  tay
  lda ($04),y
  sta $00                   ; get enemy x hitbox
  lda #$00
  sta $01                   ; uh, did we not want to get the y hitbox dimension?
  lda eny_x_spd_hi,X
  bpl b_acf5                ; branch if enemy has a positive speed
  jsr flip_bits_0           ; flip hitbox bits to negative
  lda $02
  sec
  sbc #$01
  sta $02
  lda $03
  sbc #$00
  eor #$FF
  sta eny_x_spd_hi,X
  lda $02
  eor #$FF
  sta eny_x_spd_lo,X        ; set nevative direction
  jmp b_acff
b_acf5:
  lda $02
  sta eny_x_spd_lo,X
  lda $03
  sta eny_x_spd_hi,x        ; set positive directgion
b_acff:
  lda eny_spr_x_pos_hi,X
  clc
  adc $00
  sta $00
  lda eny_spr_x_pos_page,X
  adc $01
  sta $01
  lda eny_spr_y_pos_hi,X
  sta $0E
  lda eny_spr_y_pos_page,X
  sta $0F
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcc b_ad32
  lda eny_x_spd_lo,X
  eor #$FF
  sta eny_x_spd_lo,X
  lda  eny_x_spd_hi,X
  eor #$FF
  sta eny_x_spd_hi,X
b_ad32:
  rts
ram_misc_35:
  lda stage_boss
  asl
  tay
  lda eny_hitbox_jmp_tbl,Y
  sta $04
  lda eny_hitbox_jmp_tbl+1,Y
  sta $05
  lda eny_spr_type,X
  asl
  tay
  iny
  lda ($04),Y
  sta $00
  lda #$00
  sta $01
  lda eny_y_spd_hi,X
  bpl b_ad71
  jsr flip_bits_0
  lda $02
  sec
  sbc #$01
  sta $02
  lda $03
  sbc #$00
  eor #$FF
  sta eny_y_spd_hi,X
  lda $02
  eor #$FF
  sta eny_y_spd_lo,X
  jmp j_ad7b
b_ad71:
  lda $02
  sta eny_y_spd_lo,X
  lda $03
  sta eny_y_spd_hi,X
j_ad7b:
  lda eny_spr_y_pos_hi,X
  clc
  adc $00
  sta $0E
  lda eny_spr_y_pos_page,X
  adc $01
  sta $0F
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcc b_adae
  lda eny_y_spd_lo,X
  eor #$FF
  sta eny_y_spd_lo,X
  lda eny_y_spd_hi,X
  eor #$FF
  sta eny_y_spd_hi,X
b_adae:
  rts
ramjet_cymbalP_timer:
  lda eny_boss_wpn_timer,X
  beq :++                   ; branch if timer reached 00
  dec eny_boss_wpn_timer,X  ; decrement timer and rts
:
  rts
:                           ; timer reached 00, do stuff
  jsr plr_stage_y_loc       ; get player y location to ram
  lda $00
  sec
  sbc eny_spr_y_pos_hi,X    ; player y pos hi - enemy y pos high
  sta $00
  lda $01
  sbc eny_spr_y_pos_page,X  ; player y page - enemy y page
  bne :--                   ; exit if enemy is on different page
  lda $00
  cmp #$04
  bcs :--                   ; exit if enemy is more than 04 vertical pixels above player
  jsr eny_wpn_pos_rtn
  bcc :--                   ; exit
  lda eny_time_ram
  sta eny_boss_wpn_timer,X  ; add time to enemy/boss weapon timer
  lda #$30
  sta eny_wpn_timer,Y       ; store 30 to enemy weapon timer
  lda #$00
  sta $00
  lda #$04
  sta $01                   ; store positive speed (to the right) of 4 to 00
  lda eny_spr_substatus,X   ; if enemy substatus is positive, then flip bits to -ve to leftwards velocity of 4
  bmi :+                    ; if enemy substatus is negative, branch and store positive/right velocity of 4
  jsr flip_bits_0
:                           ; b_adef
  lda $00
  sta eny_wpn_x_speed_lo,Y
  lda $01
  sta eny_wpn_x_speed_hi,Y  ; store enemy bullet speed of +/- 4.0 depending on enemy substatus
  lda #$00
  sta eny_wpn_y_speed_lo,Y
  sta eny_wpn_y_speed_hi,Y  ; store enemy bullet y speed of 0
  rts
dec_boss_wpn_timer_2:
  lda eny_boss_wpn_timer,x
  beq b_ae0b
  dec eny_boss_wpn_timer,x
b_ae0a:
  rts
b_ae0b:
  jsr eny_wpn_pos_rtn
  bcc b_ae0a
  sty $0B
  jsr ram_misc_28
  ldy $0B
  lda $0A
  and #$F0
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
  sta eny_wpn_status,Y
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
  sta eny_wpn_x_speed_lo,Y
  lda $05
  sta eny_wpn_x_speed_hi,Y
  lda $00
  sta eny_wpn_y_speed_lo,Y
  lda $01
  sta eny_wpn_y_speed_hi,Y
  lda eny_time_ram
  sta eny_boss_wpn_timer,X
  lda #$30
  sta eny_wpn_timer,Y
  rts
ram_misc_28:
  jsr plr_stage_x_y_loc
  lda $00
  sec
  sbc eny_spr_x_pos_hi,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_page,X
  sta $01
  sta $08
  jsr flip_bits_1
  lda $00
  sta $06
  lda $02
  sec
  sbc eny_spr_y_pos_hi,X
  sta $00
  lda $03
  sbc eny_spr_y_pos_page ,X
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
  beq b_af1a                ; branch if boss weapon timer reaches 0 and fire another weapon
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
  jsr eny_wpn_pos_rtn
  bcc b_af5a
  lda #$00
  sta eny_wpn_x_speed_lo,Y
  sta eny_wpn_x_speed_hi,Y
  lda $04
  sta eny_wpn_y_speed_lo,Y
  lda $05
  sta eny_wpn_y_speed_hi,Y
  lda #$40
  sta eny_wpn_timer,Y
  lda eny_time_ram
  sta eny_boss_wpn_timer,X
b_af5a:
  rts
eny_18_wpn_timer:     ; ******
  lda eny_boss_wpn_timer,X
  beq b_af64
  dec eny_boss_wpn_timer,X
  rts
b_af64:
  jsr plr_stage_x_loc
  lda $00
  sec
  sbc eny_spr_x_pos_hi,X
  lda $01
  sbc eny_spr_x_pos_page,X
  bcs b_af80
  jmp fire_eny_wpn
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
  beq fire_eny_wpn
  dec eny_boss_wpn_timer,X
  rts
fire_eny_wpn:
  lda #$00
  sta $04
  lda #$Fe
  sta $05
j_af9c:               ; this section of the subroutine is repeated above ****
  jsr eny_wpn_pos_rtn
  bcc b_afbd
  lda #$00
  sta eny_wpn_y_speed_lo,Y
  sta eny_wpn_y_speed_hi,Y
  lda $04
  sta eny_wpn_x_speed_lo,Y
  lda $05
  sta eny_wpn_x_speed_hi,Y
  lda #$40
  sta eny_wpn_timer,Y
  lda eny_time_ram
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
  jsr eny_wpn_pos_rtn
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
  sta eny_wpn_x_speed_lo,Y
  lda $01
  sta eny_wpn_x_speed_hi,Y
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
  sta eny_wpn_y_speed_lo,Y
  lda $01
  sta eny_wpn_y_speed_hi,Y
  lda #$20
  sta eny_wpn_timer,Y
  dec $0B
  bpl b_afcb
b_b00f:
  lda eny_time_ram
  sta eny_boss_wpn_timer,X
  rts
find_eny_wpn_rdy:
  ldy #$00
:
  lda eny_wpn_status,Y      ; 0540 - 05F0 are for enemy weapon stuff
  bpl b_b027
  tya
  clc
  adc #$10
  tay
  cpy #$C0                  ; check up to 05F0
  bcc :-
  ldy #$FF
b_b027:
  rts
eny_wpn_pos_rtn:
  jsr eny_set_wpn_time
  lda eny_spr_status,X
  and #$20
  bne b_b0a8
  lda eny_spr_x_pos_hi,X
  sec
  sbc plr_x_prog_hi
  lda eny_spr_x_pos_page,X
  sbc plr_x_prog_pg
  bne b_b0a8
  lda eny_spr_y_pos_hi,X
  sec
  sbc plr_y_prog_hi
  lda eny_spr_y_pos_page,X
  sbc plr_y_prog_pg
  bne b_b0a8
  lda stage_boss
  asl
  tay
  lda eny_wpn_off_tbl,y    ; @$b1a2,y
  sta $00
  lda eny_wpn_off_tbl+1,Y
  sta $01
  lda eny_spr_type,X
  asl
  tay
  lda ($00),Y
  sta $03             ; store lower value from table to 03
  iny
  lda ($00),y
  sta $02             ; store upper value from table to 02
  lda $03
  sta $00             ; store lower value from 03 to 00 ram
  lda #$00
  sta $01             ; store 00 to 01 ram
  lda eny_spr_substatus,X
  bmi :+              ; b_b078  branch if enemy is flipped horizontally with 80 in substatus
  jsr flip_bits_0     ; flip positive to negative
:
  jsr find_eny_wpn_rdy
  cpy #$FF                ; ff would have been loaded if all eny_wpn_status' are negative from 540 up to 5F0
  beq b_b0a8              ; clc and exit if all are negative
  lda eny_spr_x_pos_hi,X
  clc
  adc $00
  sta eny_wpn_x_pos_hi,Y
  lda eny_spr_x_pos_page,X
  adc $01
  sta eny_wpn_x_pos_page,Y
  lda eny_spr_y_pos_hi,X
  clc
  adc $02
  sta eny_wpn_y_pos_hi,Y
  lda $02
  bpl b_b0aa
  lda eny_spr_y_pos_page,X  ; add the carry here if the offset is negative
  adc #$FF
  sta eny_wpn_y_pos_page,Y
  jmp fire_eny_bullet
b_b0a8:
  clc
  rts
b_b0aa:                     ; add the carry here if the offset is positive
  lda eny_spr_y_pos_page,X
  adc #$00
  sta eny_wpn_y_pos_page,Y
fire_eny_bullet:
  lda #$80
  sta eny_wpn_status,Y
  lda #$04
  sta eny_wpn_sprite_type,Y
  sec
  rts
plr_stage_x_loc:
  lda plr_x_prog_hi
  clc
  adc plr_x_pos_hi
  sta $00
  lda plr_x_prog_pg
  adc #$00
  sta $01
  rts
plr_stage_y_loc:
  lda plr_y_prog_hi
  clc
  adc plr_y_pos_hi
  sta $00
  lda plr_y_prog_pg
  adc #$00
  sta $01
  rts
plr_stage_x_y_loc:
  jsr plr_stage_y_loc
  lda $00
  sta $02
  lda $01
  sta $03
  jsr plr_stage_x_loc
  rts
eny_set_wpn_time:
  lda current_level   ; load current level
  sta level_backup    ; store into current level backup
  lda eny_status_ram  ; load eny_status_ram
  sec                 ; set carry
  sbc level_backup    ; subtract current level backup
  bcc b_b0ff          ; branch if eny_status_ram is less than current level backup
  cmp #$10
  bcc b_b0ff          ; branch if eny_status_ram is up to $10 more than current level backup
  cmp #$80
  bcs b_b104
  sta eny_time_ram
  rts
b_b0ff:
  lda #$10
  sta eny_time_ram
  rts
b_b104:
  sta eny_time_ram
  lda eny_spr_status,X
  ora #$20
  sta eny_spr_status,X
  rts
boss_vert_move_rtn:
  lda game_cmplt_cnt      ; how many times game was complete
  and #$03                ; only count up to 3, increase vertical speed every game completion up to 3 times
  asl
  asl
  asl
  asl
  asl                     ; shift left 5 times 0000 00xx => 0xx0 0000
  clc
  adc #$80                ; at 7bit => 1xx0 0000
  sta $00
  lda #$00
  sta $01
  lda eny_spr_substatus,X
  and #$01
  bne b_b14e              ; branch if enemy is accelerating left
  lda y_scroll_lo
  sec
  sbc $00
  sta y_scroll_lo
  lda y_scroll_hi
  sbc $01
  cmp #$F0
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
  sta eny_y_spd_lo,X
  lda $01
  sta eny_y_spd_hi,X
  rts
b_b14e:
  lda y_scroll_lo
  clc
  adc $00
  sta y_scroll_lo
  lda y_scroll_hi
  adc $01
  cmp #$F0
  bcc b_b15f
  sbc #$F0
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
  rts
lvl_8_10_flash_pal:
  lda current_level
  cmp #$0E                  ; check if level 8
  beq flash_st8_10_pal
  cmp #$12                  ; check if level 10
  beq flash_st8_10_pal
  rts
flash_st8_10_pal:
  lda timer_lo_byte         ; flash every 8 frames
  and #$08
  bne :+                    ; flip colours in palette
  lda #$0F
  sta text_flash_pal_ram
  lda #$00
  sta text_flash_pal_ram_B  ; palette ram
  rts
:                           ; b_b199
  lda #$00
  sta text_flash_pal_ram
  lda #$0F
  sta text_flash_pal_ram_B
  rts

eny_wpn_off_tbl:            ; @$B1A2-B1A5
  .word eny_wpn_off_tbl_lvl ; @$B1A6
  .word eny_wpn_off_tbl_bos ; @$B226
eny_wpn_off_tbl_lvl:        ; @$B1A6-B225
;         x eny wpn offset
;         |   y eny wpn offset
  .byte $0C,$03,$0C,$F9,$00,$00,$00,$04 ; 00 ramjet,blitzwing,bot,Crack (lobster)
  .byte $00,$00,$00,$00,$0C,$00,$00,$F7 ; 04 Gosupu(rocket),hammer(plumbus),tosher(ufo),heru(mouse drone)
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 08 platform,Platform,Gau,Laggar
  .byte $00,$00,$00,$00,$0A,$03,$00,$00 ; 0C platform,laserbeak,condor,Zunonbat(closed)
  .byte $00,$00,$00,$00,$00,$00,$06,$F8 ; 10 Zunobat(flying),Marakirasu,Guardian,Azak
  .byte $00,$00,$00,$00,$00,$08,$00,$00 ; 14 Ratbat,Ratbat(tape),Snow Commander,Wasta(orange dome ufo)
  .byte $00,$00,$00,$00,$0C,$03,$00,$00 ; 18 Zaffuru(Rosie),bugs,Starscream(Jet),Starscream(Bot)
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 1C Gido,Gido,Takara Baby,Energon Cube
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 20 Explosion A,Gido,Explosion B,
  .byte $00,$00,$00,$00,$04,$00,$04,$00 ; 24 Burcane Ball,,Rabu(wall pyramid)/ganzo left side,rabu/ganzo(wallslug)right side
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 28 Megatron poster,,,
  .byte $00,$00,$0C,$08,$04,$08,$00,$00 ; 2C ,pickaxe,goldbar,Gau
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 30 Ramjet,
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 34 P,F,D,B
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 38 1Up,R,O,D
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 3C I,M,U,S
eny_wpn_off_tbl_bos:        ; @$B226-B25B
	.byte $00,$00,$00,$00,$00,$00,$00,$00 ; 00 planet,platform,platform,platform
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 04 platform,Kabusu,Kabusu,Decepticon-red
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 08 cymbals-Dred,Nemesis,,Decepticon-Blue
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 0C Unused firewheel(Nemesis palette)cymbals-Dblue,Scary Spider,Decepticon-Purp,cymbals-Purp
	.byte $00,$00,$00,$00,$00,$00,$00,$00 ; 10 Trypticon,Trypticonblast/Explosion A,Menasor,Bruticus/Megatron Bullet
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 14 Bruticus,Megatron,,Bumblebee(Bot)
  .byte $00,$00,$00,$00,$00,$00         ; 18 Bumblebee,Menasor Laser,brainwaves

eny_00:                   ; swooping Ramjet
  lda #$08                ; load 08 to 00 ram
  sta $00
  lda #$02                ; load 02 to 05 ram
  sta $05
  jsr move_enemy_vert     ; progress enemy y speed if needed
  lda #$80                ; load speed of -1.5
  sta eny_x_spd_lo,X
  lda #$FE
  sta eny_x_spd_hi,X      ; store speed of -1.5
  lda #$30
  sta eny_status_ram
  jsr ramjet_cymbalP_timer
  rts
eny_01: ; @$B279  Blitzwing
  lda #$40
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  clc 
  adc #$02
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcc b_b2b1
  lda #$00
  sta eny_y_spd_lo,X
  lda #$Fe 
  sta eny_y_spd_hi,X
  rts
b_b2b1:
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  clc
  adc #$04
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F
  jsr eny_ground_collision
  rts
eny_02: ; @b2ce           bot
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  clc
  adc #$0A
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0f
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcc b_b306
  lda #$00
  sta eny_y_spd_lo,X
  lda #$Fe
  sta eny_y_spd_hi,X
  rts
b_b306:
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  clc
  adc #$0C
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F
  jsr eny_ground_collision
  rts
eny_03:  ; @$B323
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr move_enemy_horiz
  lda #$18
  sta $00
  lda #$03
  sta $05
  jsr move_enemy_vert
  lda #$50
  sta eny_status_ram
  lda #$10
  sta $0A
  jsr dec_boss_wpn_timer_2  ; same as the first ****
  rts
eny_04:                   ; Crack (lobster)
  lda #$40
  sta $00                 ; load speed increment
  lda #$04
  sta $05                 ; load max speed
  lda #$18
  sta $09                 ; load y offset
  jsr enemy_vert_off_plr_rtn  ; set y speed depending on player y location or max speed change vertical acceration direction
  rts
eny_05:                   ; hammer (plumbus)
  lda #$08                ; speed increment
  sta $00
  lda #$02
  sta $05                 ; max speed
  jsr move_enemy_vert
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  rts
eny_06:                   ; Tosher routine (ufo)
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr move_tosher
  rts
eny_07: ; @$B377          Heru routine (mouse drone)
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F                     ; get enemy x and y position and store to ram 00 01 and 0e 0f, but offset y by adding 06
  jsr eny_ground_collision
  bcc b_b3ef
  lda #$04
  sta $00
  lda #$00
  sta $01
  lda eny_x_spd_hi,X
  bpl b_b3a5
  jsr flip_bits_0
b_b3a5:
  lda eny_spr_x_pos_hi,X
  clc
  adc $00
  sta $00
  lda eny_spr_x_pos_page,X
  adc $01
  sta $01
  lda eny_spr_y_pos_hi,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcs b_b3dd          
  lda eny_x_spd_lo,X
  eor #$FF
  sta eny_x_spd_lo,X
  lda eny_x_spd_hi,X
  eor #$FF
  sta eny_x_spd_hi,X  ; reverse direction if enemy is not colliding with floor/reached the edge of a platform
b_b3dd:
  lda #$00
  sta $02
  lda #$02
  sta $03
  jsr eny_wall_collision   ; @$ACB8 if collided with a wall, reverse direction
  lda #$40
  sta eny_status_ram
  jsr dec_boss_wpn_timer_4
b_b3ef:
  rts
eny_08:                         ; b3f0 platform, also bos_01  
  lda #$04
  sta $00                       ; y speed increment
  lda #$01
  sta $05                       ; max y speed
b_b3f8:
  jsr move_enemy_vert
j_b3fb:
  lda eny_spr_substatus,X
  ora #$08
  sta eny_spr_substatus,X       ; set 3rd bit of enemy sprite status
  rts

bos_02: ; b404
  lda #$04
  sta $00
  lda #$01
  sta $05
  bne b_b3f8
bos_03: ; b40e
  lda #$0C
  sta $00
  lda #$01
  sta $05
  bne b_b3f8
bos_04: ; b418
  lda #$08
  sta $00
  lda #$02
  sta $05
  bne b_b3f8
eny_0b: 
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_vert_off_plr_rtn
  lda #$40
  sta  eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  rts
bos_00:
  jsr enemy_misc_rtn_6
  lda eny_boss_wpn_timer,x
  beq spawn_kabusu
  dec eny_boss_wpn_timer,x
  rts
spawn_kabusu:
  lda #$0F
  sta $00
  ldx #$00
  jsr find_open_eny_ram_slot
  lda $00
  beq b_b4aa
  jsr set_new_enemy
  stx $00
  ldx current_enemy
  ldy $00
  lda eny_spr_x_pos_hi,X
  sta eny_spr_x_pos_hi,Y
  lda eny_spr_x_pos_page,X
  sta eny_spr_x_pos_page,Y
  lda eny_spr_y_pos_hi,X
  sta eny_spr_y_pos_hi,Y
  lda eny_spr_y_pos_page,X
  sta eny_spr_y_pos_page,Y
  lda #$05                      ; spawn Kabusu A
  sta $00
  jsr rng_rtn
  lda rng_ram
  and #$01
  bne spawn_boss_enemy
  lda #$06                      ; spawn Kabusu B
  sta $00
spawn_boss_enemy:
  lda $00
  sta eny_spr_type,Y
  jsr rng_rtn
  lda rng_ram
  sta eny_y_spd_lo,Y            ; randomly assign initial vertical speed
  lda #$C0
  sta eny_status_ram
  lda num_bosses
  and #$02                      ; check if 2 bosses
  beq :+                        ; branch if only one boss
  lda #$F0
  sta eny_status_ram            ; f0 to eny_status_ram for 2 bosses, c0 for 1
:
  jsr eny_set_wpn_time
  lda eny_time_ram
  sta eny_boss_wpn_timer,X
b_b4aa:
  rts
bos_07: ; b4ab
  lda #$80
  sta eny_status_ram
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
  jsr find_open_eny_ram_slot
  lda $00
  beq b_b50f
  jsr play_boss_wpn_sound
  jsr set_new_enemy
  stx $00
  ldx current_enemy
  ldy $00
  lda eny_spr_x_pos_hi,X
  sec
  sbc $0E
  sta eny_spr_x_pos_hi,Y
  lda eny_spr_x_pos_page,X
  sbc #$00
  sta eny_spr_x_pos_page,Y
  lda eny_spr_y_pos_hi,X
  clc
  adc $0F
  sta eny_spr_y_pos_hi,Y
  lda eny_spr_y_pos_page,X
  adc #$00
  sta eny_spr_y_pos_page,Y
  lda $0B
  sta eny_spr_type,Y
  jsr eny_set_wpn_time
  lda eny_time_ram
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
  sty unused_ram_2
  rts
bos_05: ; b52d                Kabusu A
  lda eny_spr_substatus,X
  and #$04
  bne b_b560
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X   ; set ememy sprite status 2nd bit, left right bit
  jsr plr_stage_x_loc       ; get player x location to 00 and 01 ram
  lda #$C0
  sta eny_x_spd_lo,X
  lda #$00
  sta eny_x_spd_hi,X        ; set enemy speed 0.75 to the right
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  lda eny_spr_x_pos_page,x
  sbc $01
  bcc b_b560
  lda #$40
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
b_b560:
  lda #$20
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_vert_off_plr_rtn
  rts
bos_06:  ; b570         Kabusu B
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda eny_y_spd_lo,X
  sta $06
  lda eny_y_spd_hi,X
  sta $07
  lda eny_spr_substatus,X
  sta $08
  jsr enemy_misc_rtn_16
  lda $06
  sta eny_y_spd_lo,X
  lda $07
  sta eny_y_spd_hi,X
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_b5c1
  jsr plr_stage_x_loc
  lda #$80
  sta eny_x_spd_lo,X
  lda #$00
  sta eny_x_spd_hi,X
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  lda eny_spr_x_pos_page,X
  sbc $01
  bcc b_b5c1
  lda #$80
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
b_b5c1:
  rts

bos_08: ; b5c2
  lda #$C0
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda eny_spr_substatus,X
  and #$04
  beq b_b5e4
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,x
  sta eny_x_spd_lo,X
  lda #$Fe
  sta eny_x_spd_hi,X
  rts
b_b5e4:
  lda #$0C
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_17
  jsr plr_stage_x_loc
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_page,X
  sbc $01
  bne b_b627
  lda $00
  cmp #$50
  bcs b_b627
  jsr plr_stage_y_loc
  lda eny_spr_y_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_y_pos_page,X
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
  sta eny_status_ram
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
enemy_misc_rtn_17:
  lda eny_spr_substatus,X
  sta $08
  jsr move_enemy_vert
  lda eny_spr_substatus,X
  eor $08
  and #$01
  beq b_b65b
  ldy #$00
  lda eny_spr_y_pos_hi,X
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
eny_09:                       ; b65c platform X
  lda #$06
  sta $00                     ; x speed increment
  lda #$01
  sta $05                     ; x max speed
  jsr ratbat_platform_x_rtn
  jmp j_b3fb
eny_0c:                       ; b66a platform stationary
  lda #$80
  sta $02
  lda #$00
  sta $03
  jsr eny_wall_collision
  jmp j_b3fb
eny_0d:                       ;b678 laserbeak
  lda eny_spr_substatus,X
  and #$04
  bne b_b6b8
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FE
  sta eny_x_spd_hi,X          ; set speed of -2.0
  jsr plr_stage_x_loc         ; get player x location
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00                     ; eny x loc - plr x loc
  lda eny_spr_x_pos_page,X
  sbc $01                     ; check page
  bne b_b6b8                  ; branch out if different page
j_b699:
  jsr ram_misc_28
  lda $04
  sta eny_x_spd_lo,X
  lda $05
  sta eny_x_spd_hi,X
  lda $00
  sta eny_y_spd_lo,X
  lda $01
  sta eny_y_spd_hi,X
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b6b8:
  rts
eny_0a:   ; b6b9 
  lda eny_spr_substatus,X
  and #$04
  bne b_b714
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  lda #$02
  sta eny_y_spd_hi,X
  jsr plr_stage_y_loc
  lda $00
  sec
  sbc#$10
  sta $00
  lda $01
  sbc #$00
  sta $01
  lda eny_spr_y_pos_hi,X
  sec
  sbc $00
  lda eny_spr_y_pos_page,X
  sbc $01
  bcc b_b713
  lda eny_spr_x_pos_hi,X
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01
  lda eny_spr_y_pos_hi,X
  sta $0E
  lda eny_spr_y_pos_page,X
  sta $0F
  jsr get_sprite_bg_tile
  jsr collision_chk_rtn
  ldx current_enemy
  bcs b_b713
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
b_b713:
  rts
b_b714:
  lda #$80
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr ram_misc_35
  rts
eny_0e: ; b72a            condor
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X      ; store enemy speed of -1.0
  lda #$00
  sta $00
  sta $01
  lda eny_spr_y_pos_hi,X
  cmp #$28
  beq b_b74e              ; branch to stop y velocity at y position 28
  lda #$20
  sta $00
  lda #$00
  sta $01                 ; ready vertical velocity of +0.125
  bcc b_b74e
  jsr flip_bits_0
b_b74e:
  lda $00
  sta eny_y_spd_lo,X
  lda $01
  sta eny_y_spd_hi,X      ; store new vertical velocity
  lda #$38
  sta eny_status_ram      ; store 0x38 in enemy status ram for weapon timer
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
eny_0f:                     ; zunonbat closed
  jsr plr_stage_x_loc       ; get player x location
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_page,X
  sbc $01
  sta $01                   ; get the x difference between Zunonbat and player
  jsr flip_bits_1           ; flip bits if player is coming from the right
  lda $01
  bne :+                    ; branch to exit if on different page
  lda $00
  cmp #$40                  ; branch to exit if 0x40 or more pixels away
  bcs :+
  inc eny_spr_type,X        ; increment enemy sprite type to zunonbat flying
:                           ; b_b786
  rts
eny_10: ; b787              ; zunonbat flying
  lda #$80
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X        ; store -0.5 to Zunonbat speed
  lda #$20
  sta $00                   ; speed increment
  lda #$02
  sta $05                   ; max speed
  lda #$00
  sta $09                   ; 00 offset
  jsr enemy_vert_off_plr_rtn
  lda #$A0
  sta eny_status_ram
  lda #$00
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
eny_11: ; b7ac
  lda eny_spr_substatus,x
  and #$04
  bne b_b7db
  jsr plr_stage_x_loc
  lda $00
  sec
  sbc eny_spr_x_pos_hi,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_page,X
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
  sta eny_y_spd_lo,X
  lda #$01
  sta eny_y_spd_hi,X
  rts
b_b7f5:
  lda eny_spr_substatus,X
  and #$Fe
  sta eny_spr_substatus,X
  rts
b_b7fe:
  lda eny_boss_wpn_timer,X
  cmp #$1A
  bcs b_b813
  inc eny_boss_wpn_timer,X
  lda #$00
  sta eny_y_spd_lo,X
  lda #$FF
  sta eny_y_spd_hi,X
  rts
b_b813:
  lda eny_spr_substatus,X
  ora #$01
  sta eny_spr_substatus,X
  rts
eny_13: ; b81c Azak
  lda eny_spr_substatus,X
  and #$04                  ; check enemy substatus to see if Azak has already popped up
  bne b_b84e                ; branch out if it is
  jsr plr_stage_x_loc       ; get player x location
  lda $00
  sec
  sbc eny_spr_x_pos_hi,X    ; player x location - enemy x location
  sta $00
  lda $01
  sbc eny_spr_x_pos_page,X  ; player x page - enemy x page
  sta $01
  jsr flip_bits_1           ; flip bits to positive if negative, which it should be if we're approaching from the left, enemy would have a higher x value
  lda $01
  bne b_b84d                ; branch if enemy is on a different page from player
  lda $00
  cmp #$48                  ; check if player is 0x48 away from Azak
  bcs b_b84d                ; branch out if player is 0x48 away or more
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X   ; set enemy sprite status to 04, active
  jsr play_azak_sound       ; play Azak unique sound
b_b84d:
  rts
b_b84e:
  lda eny_exp_timer,X
  cmp #$10
  bcs :+
  lda #$00
  sta eny_y_spd_lo,X
  lda #$Fe
  sta eny_y_spd_hi,X
  inc eny_exp_timer,X
  rts
:               ; b_b863
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
  lda #$B0
  sta eny_status_ram
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
bos_09: ; b877    nemesis
  jsr enemy_misc_rtn_6
  inc eny_exp_timer,X
  jsr boss_vert_move_rtn
  lda eny_boss_wpn_timer,X
  beq :+
  dec eny_boss_wpn_timer,X
  rts
:             ; b_b889
  lda #$50
  sta eny_status_ram              ; store 50 to eny_status_ram
  jsr eny_wpn_pos_rtn
  bcc b_b8c6
  lda #$00
  sta eny_wpn_x_speed_lo,Y
  lda  #$Fe
  sta eny_wpn_x_speed_hi,Y
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
  sta eny_wpn_y_speed_lo,Y
  lda $01
  sta eny_wpn_y_speed_hi,Y
  lda #$40
  sta eny_wpn_timer,Y
  lda eny_time_ram
  sta eny_boss_wpn_timer,X
b_b8c6:
  rts
bos_0a: ; b8c7
  lda #$40
  sta eny_status_ram
  lda #$00
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
eny_14: ; b8d3  ratbat
  lda #$10
  sta $00
  lda #$02    ; enemy max y speed
  sta $05
  jsr ratbat_platform_x_rtn
  rts
eny_15: ; b8df  ratbat tape
  lda eny_spr_substatus,X
  ora #$08
  sta eny_spr_substatus,X     ; load enemy with substatus of 08
  rts
eny_16: ; b8e8            snow commander (this guy sounds awesome, why has nobody made a character called snow commander?)
  lda #$00
  sta eny_x_spd_lo,X
  lda #$Fe
  sta eny_x_spd_hi,X          ; set enemy x speed of -2.0
  lda eny_spr_x_pos_hi,x
  sta $00
  lda eny_spr_x_pos_page,X
  sta $01                     ; get enemy x position into ram
  lda eny_spr_y_pos_hi,X
  clc
  adc #$06
  sta $0E
  lda eny_spr_y_pos_page,X
  adc #$00
  sta $0F                     ; get enemy y position but add 06 (offset) before storing to ram
  jsr eny_ground_collision
  rts
eny_17: ;b90f                 wasta, similar to crack lobster, the pattern is wavy but has a y offset of 0C, so stays closer to player's height
  lda #$20
  sta $00
  lda #$02
  sta $05
  jsr move_enemy_horiz
  lda #$20
  sta $00
  lda #$02
  sta $05
  lda #$0C
  sta $09
  jsr enemy_vert_off_plr_rtn
  rts
eny_18: ; b92a              zaffuru, just a turret, no movement, just shoot on a timer
  lda #$60                  ; ready enemy timer with 60
  sta eny_status_ram
  jsr eny_18_wpn_timer
  rts
eny_19: ; b932 gau/bugs also eny_2f
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr ram_misc_35
  rts

bos_0b: ; b93e
  lda #$80
  sta eny_status_ram
  lda #$0C
  sta $0B
  jmp b_b4b3
bos_0c: ; b948
  lda eny_spr_substatus,X
  and #$04
  bne :+
  jmp j_b699
:               ;b_b953
  lda #$B0
  sta eny_status_ram
  jsr dec_boss_wpn_timer_3
  rts
bos_0d: ; b95b
  lda #$05
  sta $00
  lda #$01
  sta $05
  jsr move_enemy_vert
  lda #$80
  sta eny_status_ram
  jsr dec_boss_wpn_timer_8
  rts
bos_0e: ; b96e
  lda #$98
  sta eny_status_ram
  lda #$0F
  sta $0B
  jmp b_b4b3
bos_0f: ; b979  cymbal from purple decepticon
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda #$0C
  sta $00
  lda #$02
  sta $05
  jsr enemy_misc_rtn_17
  lda #$90
  sta eny_status_ram
  jsr ramjet_cymbalP_timer
  rts
eny_1a: ; b996              Starscrem jetmode
  lda #$00
  sta eny_x_spd_lo,X
  lda #$Fe
  sta eny_x_spd_hi,X        ; set x speed to -2.0
  rts
eny_1b: ; b9a1              Starscrem bot
  lda #$00
  sta eny_x_spd_lo,X
  lda #$03
  sta eny_x_spd_hi,X        ; set x speed to 3.0
  lda #$80
  sta eny_spr_substatus,X   ; set substatus to active
  lda plr_x_prog_hi
  clc
  adc #$40                  ; add 40 to player x progress because thats 1/4 of the screen, already player progress starts at the middle of the sceen which is 80, so the actual distance is C0 minimum
  sta $00
  lda plr_x_prog_pg
  adc #$01
  sta $01
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  lda eny_spr_x_pos_page,X
  sbc $01
  bcc :+
  lda #$00
  sta eny_spr_status,X      ; remove enemy once 3/4 of a screen away from player
:                           ; b_b9cf
  rts
bos_10:  ; b9d0
  inc eny_exp_timer,X
  jsr boss_vert_move_rtn
  lda #$78
  sta eny_status_ram
  lda #$11
  sta $0B
  jmp b_b4b3
bos_12: ; b9e1
  inc eny_exp_timer,X
  jsr boss_vert_move_rtn
  lda #$80
  sta eny_status_ram
  lda #$19
  sta $0B
  lda #$19
  sta $0F
  lda #$12
  sta $0E
  jmp j_b4bb
bos_14: ; b9fa
  inc eny_exp_timer,X
  jsr boss_vert_move_rtn
  lda #$50
  sta eny_status_ram
  lda #$13                  ; spawn bruticus bullet
  sta $0B
  lda #$0C
  sta $0F
  lda #$12
  sta $0E
  jmp j_b4bb
bos_15: ; ba13
  inc eny_exp_timer,X
  jsr boss_vert_move_rtn
  lda #$80
  sta eny_status_ram
  lda #$13                  ; spawn bruticus bullet
  sta $0B
  lda #$18
  sta $0F
  lda #$27
  sta $0E
  jmp j_b4bb
bos_16: ; ba2c
  lda #$B8
  sta eny_status_ram
  lda #$05                  ; spawn kabusu
  sta $0B
  lda #$00
  sta $0E
  sta $0f
  jmp dec_boss_wpn_timer_11
eny_21: ; ba3d              Maara     just goes horizontally until it hits a wall then reverses direction
  lda #$00
  sta $02
  lda #$01
  sta $03
  jsr eny_wall_collision
  rts
eny_26: ; ba49
  lda #$60
  sta eny_status_ram
  lda #$80
  sta $0A
  jsr dec_boss_wpn_timer_2
  lda eny_spr_substatus,X
  ora #$80
  sta eny_spr_substatus,X
  rts
eny_27: ; ba5d
  lda #$60
  sta eny_status_ram
  lda #$40
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
eny_2b: ; ba69
  lda eny_spr_substatus,X
  and #$20
  sta eny_spr_substatus,X
  lda #$60
  sta eny_status_ram
  lda #$2C
  sta $0B                   ; load which enemy to spawn
  lda #$00
  sta $0E
  sta $0F
  jmp dec_boss_wpn_timer_11
eny_23: ; ba82              ball spawner
  lda eny_spr_substatus,X
  and #$20
  sta eny_spr_substatus,X
  lda #$80
  sta eny_status_ram
  lda #$24
  sta $0B                   ; load which enemy to spawn
  lda #$00
  sta $0E
  sta $0F
  jmp dec_boss_wpn_timer_11
eny_2c: ; ba9b
  lda #$00
  sta eny_y_spd_lo,X
  lda #$Fe
  sta eny_y_spd_hi,X
  rts
eny_24: ; baa6
  lda eny_spr_substatus,X
  and #$04
  bne b_bac0
  lda #$80
  sta eny_y_spd_lo,X
  lda #$Fe
  sta eny_y_spd_hi,X
  lda eny_spr_substatus,X
  ora #$04
  sta eny_spr_substatus,X
  rts
b_bac0:
  lda #$00
  sta eny_x_spd_lo,X
  lda #$FF
  sta eny_x_spd_hi,X
  lda #$10
  sta $00
  lda #$02
  sta $05
  lda #$00
  sta $09
  jsr enemy_vert_off_plr_rtn
  rts
eny_2a: ; bada
  lda #$60
  sta eny_status_ram
  lda #$10
  sta $0A
  jsr dec_boss_wpn_timer_2
  rts
eny_2d: ; bae6
  lda #$00
  sta $02
  lda #$02
  sta $03
  jsr eny_wall_collision
  lda eny_x_spd_hi,X
  and #$80
  sta eny_spr_substatus,X
  lda #$38
  sta eny_status_ram
  lda #$2E
  sta $0B
  lda #$00
  sta $0E
  lda #$10
  sta $0F
  jmp dec_boss_wpn_timer_11
eny_2e: ; bb0c
  lda #$00
  sta eny_x_spd_lo,X
  sta eny_x_spd_hi,X
  sta eny_y_spd_lo,X
  lda #$03
  sta eny_y_spd_hi,X
  rts                 ; hidden boss code end
eny_1e: ; bb1d
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
eny_pu_jet: ; bb41
  lda #$C0
  sta $00
  lda #$01
  sta $01
  lda game_cmplt_cnt    ; increase powerup jet speed every game completion up to 3 times
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
  sta eny_x_spd_lo,X
  lda $01
  sta eny_x_spd_hi,X
  rts
eny_powerup: ; bb72
  lda eny_spr_substatus,X
  ora #$20
  sta eny_spr_substatus,X
  rts
eny_12: ; bb7b      Guardian
  lda #$00                    ; speed increment 
  sta $02
  lda #$02                    ; max speed
  sta $03
  jsr eny_wall_collision
  lda #$40                    ; weapon time
  sta eny_status_ram
  jsr dec_boss_wpn_timer_3
  rts
eny_28: ; bb8e              Megatron poster
  lda eny_spr_substatus,X
  ora #$20
  sta eny_spr_substatus,X   ; or the substatus with 20
  rts
bos_18: ; bb97
  lda eny_spr_substatus,X
  ora #$80
  sta eny_spr_substatus,X
  and #$04
  bne b_bbe0
  lda #$01
  sta state
  jsr plr_stage_x_loc
  lda $00
  sec
  sbc eny_spr_x_pos_hi,X
  sta $00
  lda $01
  sbc eny_spr_x_pos_page,X
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
  sta eny_altmode,X
b_bbdf:
  rts
b_bbe0:
  lda #$00
  sta state
  rts
bos_17: ; bbe5
  lda #$01
  sta state
  jsr plr_stage_x_loc
  lda $00
  clc
  adc #$30
  sta eny_spr_x_pos_hi,X
  lda $01
  adc #$00
  sta eny_spr_x_pos_page,X
  rts
bos_19: ; bbfc
  lda #$80
  sta eny_x_spd_lo,X
  lda #$FD
  sta eny_x_spd_hi,X
  lda #$00
  sta eny_y_spd_lo,X
  sta eny_y_spd_hi,X
  rts
eny_25: ; bc0f
  lda #$80
  sta $02
  lda #$00
  sta $03
  jsr ram_misc_35
  rts
bos_1a: ; bc1b
  lda current_level
  and #$02
  bne b_bc32
  lda eny_spr_y_pos_hi,X
  cmp #$04
  bcs b_bc31
  lda #$00
  sta eny_spr_status,X
  lda #$FF
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
  sta eny_x_spd_lo,X
  lda $05
  sta eny_x_spd_hi,X
  lda $00
  sta eny_y_spd_lo,X
  lda $01
  sta eny_y_spd_hi,X
b_bc58:
  lda eny_spr_y_pos_hi,X
  cmp plr_y_pos_hi
  bcc b_bc31
  lda #$00
  sta eny_spr_status,X
  lda #$0F
  sta state
  lda #$00
  sta flash_counter
  rts


eny_chkpt_tbl: ; @$BC6D-BFDF  table of enemy placements which are also used to spawn the enemy when the player is between 1-1.5 pages away
	.word eny_chkpt_s1,eny_chkpt_b1             ; .byte $CF,$BC,$1A,$BD ; stage 1, boss 1
  .word eny_chkpt_s2,eny_chkpt_b2             ; .byte $24,$BD,$83,$BD ; stage 2, boss 2
  .word eny_chkpt_vert,eny_chkpt_b3           ; .byte $EB,$BE,$92,$BD ; stage 3, boss 3
  .word eny_chkpt_s4,eny_chkpt_b4             ; .byte $AB,$BD,$00,$BE ; stage 4, boss 4
  .word eny_chkpt_s5,eny_chkpt_b5             ; .byte $19,$BE,$82,$BE ; stage 5, boss 5
  .word eny_chkpt_vert,eny_chkpt_b6           ; .byte $EB,$BE,$9B,$BE ; stage 6, boss 6
  .word eny_chkpt_s7,eny_chkpt_b7             ; .byte $B4,$BE,$F0,$BE ; stage 7, boss 7
  .word eny_chkpt_vert,eny_chkpt_b8           ; .byte $EB,$BE,$09,$BF ; stage 8, boss 8
  .word eny_chkpt_s9,eny_chkpt_b9             ; .byte $22,$BF,$8B,$BF ; stage 9, boss 9
  .word eny_chkpt_vert,eny_chkpt_b10          ; .byte $EB,$BE,$A4,$BF ; stage 10, boss 10
  .word eny_chkpt_siderm,eny_chkpt_brain1     ; .byte $BD,$BF,$A7,$BC ; pickaxe room st3/10, brainwave out
  .word eny_chkpt_siderm,eny_chkpt_brain2     ; .byte $BD,$BF,$BB,$BC ; pickaxe room st6, brainwave in
  .word eny_chkpt_oth,eny_chkpt_vert          ; .byte $C7,$BF,$EB,$BE ; guardian room,?
  .word eny_chkpt_vert,eny_chkpt_vert         ; .byte $EB,$BE,$EB,$BE ; unused pickaxe room, ?
  .word eny_chkpt_warp                        ; .byte $D6,$BF         ; warp zone 
      ; Xhi,Xpg,Yhi,Ypg,sprite type 
eny_chkpt_brain1:                 ; @bca7 prime brainwave going out
	.byte $80,$00,$38,$00,$1A       ; brainwave
  .byte $80,$00,$38,$00,$1A       ; brainwave
  .byte $80,$00,$38,$00,$1A       ; brainwave
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_brain2:                 ; @bcbb
  .byte $30,$00,$00,$00,$1A       ; brainwave
  .byte $80,$00,$00,$00,$1A       ; brainwave
  .byte $D0,$00,$00,$00,$1A       ; brainwave
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_s1:                     ; @bccf wheres the first ramjets and blitzwings?
  .byte $80,$02,$80,$00,$04       ; gosupu
  .byte $80,$03,$80,$00,$30       ; ramjet powerup
  .byte $60,$04,$80,$00,$04       ; gosupu
  .byte $80,$04,$80,$00,$30       ; ramjet powerup
  .byte $00,$05,$70,$00,$29       ; hidden energon cube
  .byte $80,$05,$80,$00,$30       ; ramjet powerup
  .byte $60,$06,$80,$00,$04       ; gosupu
  .byte $80,$06,$80,$00,$30       ; ramjet powerup
  .byte $80,$07,$80,$00,$33       ; ramjet rodimus letter
  .byte $80,$08,$80,$00,$04       ; gosupu
  .byte $00,$09,$80,$00,$01       ; blitzwing
  .byte $00,$0A,$70,$00,$29       ; hidden energon cube
  .byte $80,$0A,$80,$00,$04       ; gosupu
  .byte $00,$0B,$70,$00,$29       ; hidden energon cube
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b1:; @bd1a
  .byte $90,$00,$50,$00,$00       ; planet
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_s2:  ; @bd24
  .byte $D0,$00,$A0,$00,$07       ; heru
  .byte $D8,$01,$6F,$00,$18       ; zaffuru
  .byte $60,$02,$30,$00,$29       ; hidden energon cube
  .byte $80,$02,$78,$00,$07       ; heru
  .byte $80,$02,$30,$00,$30       ; ramjet powerup
  .byte $68,$03,$A7,$00,$18       ; zaffuru
  .byte $80,$03,$68,$00,$30       ; ramjet powerup
  .byte $17,$04,$38,$00,$29       ; hidden energon cube
  .byte $80,$05,$78,$00,$30       ; ramjet powerup
  .byte $40,$06,$B8,$00,$07       ; heru
  .byte $68,$06,$77,$00,$18       ; zaffuru
  .byte $A0,$06,$50,$00,$33       ; ramjet rodimus letter
  .byte $A8,$06,$28,$00,$29       ; hidden energon cube
  .byte $28,$07,$28,$00,$29       ; hidden energon cube
  .byte $00,$09,$60,$00,$1A       ; starscream jet
  .byte $00,$0A,$30,$00,$30       ; ramjet powerup
  .byte $08,$0A,$78,$00,$07       ; heru
  .byte $48,$0B,$B7,$00,$18       ; zaffuru
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b2:  ; @bd83
  .byte $90,$00,$50,$00,$00       ; planet
  .byte $D0,$00,$70,$00,$00       ; planet
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b3:  ; @bd92
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $C8,$00,$58,$00,$0E       ; decepticon purple
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_s4:                     ; @bdab
  .byte $A0,$02,$58,$00,$30       ; ramjet powerup
  .byte $C0,$03,$48,$00,$30       ; ramjet powerup
  .byte $78,$04,$74,$00,$11       ; marakirasu
  .byte $88,$04,$58,$00,$0F       ; zunonbat (closed)
  .byte $98,$04,$58,$00,$0F       ; zunonbat (closed)
  .byte $D0,$04,$60,$00,$29       ; hidden energon cube
  .byte $A0,$05,$68,$00,$33       ; ramjet rodimus letter
  .byte $78,$06,$74,$00,$11       ; marakirasu
  .byte $90,$06,$40,$00,$29       ; hidden energon cube
  .byte $80,$07,$60,$00,$29       ; hidden energon cube
  .byte $88,$07,$58,$00,$0F       ; zunonbat (closed)
  .byte $80,$08,$68,$00,$30       ; ramjet powerup
	.byte $30,$08,$74,$00,$11       ; marakirasu
  .byte $90,$09,$40,$00,$29       ; hidden energon cube
  .byte $F8,$09,$58,$00,$0F       ; zunonbat (closed)
  .byte $28,$0B,$48,$00,$0F       ; zunonbat (closed)
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b4:                 ; @be00
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $A0,$00,$5E,$00,$09       ; nemesis
  .byte $FF,$FF,$FF,$FF,$FF
eny_chkpt_s5:                 ; @be19
  .byte $A0,$00,$78,$00,$08       ; platform vertical
  .byte $40,$01,$78,$00,$08       ; platform vertical
  .byte $D0,$01,$58,$00,$2B       ; volcano spawner
  .byte $C8,$02,$BC,$00,$0C       ; platform horizontal
  .byte $20,$03,$30,$00,$29       ; ball spawner
  .byte $40,$03,$88,$00,$30       ; ramjet powerup
  .byte $50,$03,$B0,$00,$29       ; ball spawner
  .byte $B0,$03,$78,$00,$23       ; bug spawner
  .byte $10,$04,$B0,$00,$29       ; ball spawner
  .byte $18,$05,$40,$00,$33       ; ramjet rodimus letter
  .byte $C0,$05,$98,$00,$08       ; platform vertical
  .byte $40,$06,$48,$00,$30       ; ramjet powerup
  .byte $E0,$06,$60,$00,$08       ; platform vertical
  .byte $90,$07,$58,$00,$2B       ; spawner
  .byte $20,$08,$BC,$00,$0C       ; platform horizontal
  .byte $20,$08,$48,$00,$30       ; ramjet powerup
  .byte $30,$09,$B0,$00,$29       ; spawner
  .byte $38,$09,$78,$00,$23       ; spawner
  .byte $80,$09,$B0,$00,$29       ; spawner
  .byte $90,$0A,$58,$00,$2B       ; spawner
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b5:                 ; @be82
  .byte $18,$00,$60,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $BB,$00,$4A,$00,$12       ; menasor
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b6:                 ; @be9b
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $C8,$00,$58,$00,$07       ; decepticon red
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_s7:                 ; @beb4  alot of stuff is missing from this level, like ufos, swooping ramjets and more
  .byte $20,$02,$80,$00,$30       ; ramjet powerup
  .byte $40,$04,$70,$00,$29       ; hidden energon cube
  .byte $A0,$04,$E0,$00,$13       ; azak
  .byte $00,$05,$80,$00,$30       ; ramjet powerup
  .byte $40,$06,$70,$00,$29       ; hidden energon cube
  .byte $A0,$06,$E0,$00,$13       ; azak
  .byte $40,$08,$70,$00,$29       ; hidden energon cube
  .byte $E0,$08,$80,$00,$33       ; ramjet rodimus letter
  .byte $60,$08,$E0,$00,$13       ; azak
  .byte $E0,$09,$60,$00,$1A       ; starscream jet
  .byte $17,$0B,$70,$00,$29       ; hidden energon cube
eny_chkpt_vert:               ; @beeb
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b7:                 ; @bef0
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $BA,$00,$5B,$00,$14       ; bruticus
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b8:                 ; @bf09
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $C8,$00,$58,$00,$0B       ; Decepticon Blue
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_s9:                 ; @bf22
  .byte $A8,$00,$A7,$00,$18       ; zaffuru
  .byte $68,$01,$97,$00,$18       ; zaffuru
  .byte $70,$01,$47,$00,$18       ; zaffuru
  .byte $80,$01,$30,$00,$30       ; ramjet powerup
  .byte $28,$02,$97,$00,$18       ; zaffuru
  .byte $48,$02,$47,$00,$18       ; zaffuru
  .byte $D8,$02,$98,$00,$18       ; zaffuru
  .byte $60,$03,$20,$00,$29       ; hidden energon cube
  .byte $A8,$03,$C0,$00,$2F       ; gau
  .byte $B8,$03,$C0,$00,$19       ; bugs
  .byte $C8,$03,$C0,$00,$19       ; bugs
  .byte $00,$04,$78,$00,$30       ; ramjet powerup
  .byte $90,$05,$20,$00,$29       ; hidden energon cube
  .byte $58,$07,$78,$00,$0F       ; zunonbat (closed)
  .byte $68,$07,$78,$00,$0F       ; zunonbat (closed)
  .byte $80,$07,$80,$00,$33       ; ramjet rodimus letter
  .byte $C8,$07,$28,$00,$0F       ; zunonbat (closed)
  .byte $D8,$07,$28,$00,$0F       ; zunonbat (closed)
  .byte $50,$08,$60,$00,$29       ; hidden energon cube
  .byte $30,$09,$20,$00,$29       ; hidden energon cube
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b9:                 ; @bf8b
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $C5,$00,$44,$00,$15       ; megatron
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_b10:                ; @bfa4
  .byte $18,$00,$90,$00,$01       ; platform
  .byte $50,$00,$40,$00,$04       ; platform
  .byte $78,$00,$80,$00,$02       ; platform
  .byte $A8,$00,$54,$00,$10       ; trypticon
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_siderm:             ; @bfbd sideroom
  .byte $80,$00,$38,$00,$2D       ; Gold bar/pickaxe guy?
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_oth:      	        ; @bfc7
  .byte $80,$00,$58,$00,$12       ; guardian
  .byte $E0,$00,$C0,$00,$3E       ; rodimus U
  .byte $FF,$FF,$FF,$FF,$00
eny_chkpt_warp:               ; @bfd6
  .byte $80,$00,$CC,$00,$18       ; bumblebee
  .byte $FF,$FF,$FF,$FF,$00
 
lvl_addr_tbl_2: ; @$BFE0-C0C5
	.word lvl_tbl_a,lvl_tbl_g ; .byte $1A,$C0,$AE,$C0 ; stage 1
  .word lvl_tbl_b,lvl_tbl_g ; .byte $36,$C0,$AE,$C0 ; stage 2
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0 ; stage 3
  .word lvl_tbl_c,lvl_tbl_g ; .byte $4E,$C0,$AE,$C0 ; stage 4
  .word lvl_tbl_d,lvl_tbl_g ; .byte $66,$C0,$AE,$C0 ; stage 5
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0 ; stage 6
  .word lvl_tbl_e,lvl_tbl_g ; .byte $7E,$C0,$AE,$C0 ; stage 7
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0 ; stage 8
	.word lvl_tbl_f,lvl_tbl_g ; .byte $96,$C0,$AE,$C0 ; stage 9
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0 ; stage 10
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0
  .word lvl_tbl_g,lvl_tbl_g ; .byte $AE,$C0,$AE,$C0
  .word lvl_tbl_g           ; .byte $AE,$C0
lvl_tbl_a:                  ; @c01a
	.byte $00,$00,$00,$00
  .byte $01,$01,$01,$01
  .byte $01,$03,$01,$03
  .byte $01,$03,$01,$03
  .byte $05,$85,$05,$05
  .byte $85,$85,$85,$85
  .byte $00,$00,$06,$81
lvl_tbl_b:                  ; @c036
  .byte $00,$00,$00,$00
  .byte $01,$03,$01,$03
  .byte $03,$01,$03,$03
  .byte $03,$03,$06,$06
  .byte $06,$06,$06,$06
  .byte $85,$85,$85,$85
lvl_tbl_c:                  ; @c04e
  .byte $00,$00,$00,$00
  .byte $24,$24,$FF,$FF
  .byte $8A,$8A,$8A,$8A
  .byte $8A,$8B,$FF,$FF
  .byte $8B,$8B,$8B,$8B
  .byte $8A,$8A,$8A,$8A
lvl_tbl_d:                  ; @c066
  .byte $0B,$24,$00,$24
  .byte $FF,$FF,$0B,$0B
  .byte $FF,$24,$0D,$24
  .byte $0D,$24,$FF,$24
  .byte $FF,$FF,$0D,$FF
  .byte $8B,$8B,$8B,$8B
lvl_tbl_e:                  ; @c07e
  .byte $06,$06,$86,$86
  .byte $03,$03,$03,$16
  .byte $03,$16,$03,$16
  .byte $03,$06,$03,$06
  .byte $03,$00,$16,$97
  .byte $16,$00,$06,$97
lvl_tbl_f:                  ; @c096
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$0A,$0A
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$0B,$0B
  .byte $0B,$0B,$FF,$FF
lvl_tbl_g:                  ; @c0ae
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF

enemy_addr_tbl_1: ; @$C0C6-C12F
	.word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1 ; stage 1
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1 ; stage 2
  .word eny_tbl_b,eny_tbl_a ; .byte $0C,$C1,$00,$C1 ; stage 3
  .word eny_tbl_b,eny_tbl_b ; .byte $0C,$C1,$0C,$C1 ; stage 4
  .word eny_tbl_a,eny_tbl_b ; .byte $00,$C1,$0C,$C1 ; stage 5
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1 ; stage 6
  .word eny_tbl_c,eny_tbl_a ; .byte $18,$C1,$00,$C1 ; stage 7
  .word eny_tbl_b,eny_tbl_a ; .byte $0C,$C1,$00,$C1 ; stage 8
	.word eny_tbl_d,eny_tbl_b ; .byte $24,$C1,$0C,$C1 ; stage 9
  .word eny_tbl_a,eny_tbl_b ; .byte $00,$C1,$0C,$C1 ; stage 10
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1
  .word eny_tbl_a,eny_tbl_a ; .byte $00,$C1,$00,$C1
  .word eny_tbl_a           ; .byte $00,$C1
eny_tbl_a:                  ; @c100
	.byte $01,$01,$01,$01
  .byte $01,$01,$01,$01
  .byte $01,$01,$01,$01
eny_tbl_b:                  ; @c10c
  .byte $01,$01,$01,$01
  .byte $01,$01,$01,$01
  .byte $01,$01,$01,$02
eny_tbl_c:                  ; @c118
  .byte $01,$01,$01,$01
  .byte $02,$02,$01,$02
	.byte $01,$01,$01,$01
eny_tbl_d:                  ; @c124
  .byte $01,$01,$01,$01
  .byte $01,$01,$01,$01
  .byte $01,$01,$01,$02

vert_lvl_eny_spawn_tbl:     ; @$C130-C233
	.word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_y   ; .byte $46,$C1  ; stage 3
  .word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_y   ; .byte $46,$C1 ; stage 6
  .word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_z   ; .byte $C0,$C1 ; stage 8
  .word lvl_tbl_x   ; .byte $44,$C1
  .word lvl_tbl_z   ; .byte $C0,$C1 ; stage 10
lvl_tbl_x:          ; @c144
	.byte $FF,$FF     ; horizontal stages
lvl_tbl_y:          ; @c146
; for stages 3 and 6, we use the same spawn locations
; we also use this table to find out if we need to spawn these enemies if player is within a given distance
;         enemy y position high
;         |   enemy y position page
;         |   |   enemy x position high
;         |   |   |   enemy x position page
;         |   |   |   |   enemy sprite type
;         |   |   |   |   |   enemy ram slot  
  .byte $57,$00,$E8,$00,$18,$00   ; zaffuru
  .byte $18,$01,$70,$00,$21,$01   ; gido
  .byte $18,$01,$80,$00,$21,$02   ; gido
  .byte $18,$01,$90,$00,$21,$03   ; gido
  .byte $68,$01,$B0,$00,$14,$05   ; ratbat
	.byte $68,$01,$20,$00,$29,$06   ;         hidden energon cube
  .byte $A8,$01,$DC,$00,$27,$08   ; ganzo
  .byte $08,$02,$70,$00,$21,$09   ; gido
  .byte $08,$02,$80,$00,$21,$0A   ; gido
  .byte $37,$02,$E8,$00,$18,$0B   ; zaffuru
  .byte $67,$02,$18,$00,$18,$0D   ; zaffuru
  .byte $98,$02,$DC,$00,$27,$0E   ; ganzo
  .byte $08,$03,$E8,$00,$29,$0F   ;         hidden energon cube
  .byte $27,$03,$E8,$00,$18,$00   ; zaffuru
  .byte $48,$03,$B0,$00,$14,$02   ; ratbat
  .byte $68,$03,$24,$00,$26,$03   ; ganzo, left side
  .byte $98,$03,$E8,$00,$29,$05   ;         hidden energon cube
  .byte $E8,$03,$64,$00,$26,$06   ; ganzo, left side
  .byte $28,$04,$DC,$00,$27,$07   ; ganzo, right side facing left
  .byte $38,$04,$B0,$00,$14,$08   ; ratbat
  .byte $FF,$FF
lvl_tbl_z:          ; @c1c0
  .byte $77,$00,$80,$00,$21,$00   ; gido
  .byte $88,$00,$BC,$00,$27,$01   ; rabu, right
  .byte $D8,$00,$E8,$00,$29,$03   ;         hidden energon cube
  .byte $37,$01,$24,$00,$26,$04   ; rabu, left
  .byte $67,$01,$80,$00,$21,$05   ; gido
  .byte $78,$01,$BC,$00,$27,$06   ; rabu, right
	.byte $98,$01,$14,$00,$26,$07   ; rabu, left
  .byte $18,$02,$30,$00,$29,$09   ;         hidden energon cube
  .byte $27,$02,$68,$00,$21,$0B   ; gido
  .byte $60,$02,$BC,$00,$27,$0C   ; rabu, right
  .byte $88,$02,$14,$00,$26,$0D   ; rabu, left
  .byte $00,$03,$BC,$00,$27,$0E   ; rabu, right
  .byte $18,$03,$D8,$00,$29,$0F   ;         hidden energon cube
  .byte $37,$03,$C0,$00,$21,$00   ; gido
  .byte $70,$03,$14,$00,$26,$01   ; rabu, left
  .byte $98,$03,$80,$00,$21,$02   ; gido
  .byte $08,$04,$24,$00,$26,$03   ; rabu, left
  .byte $88,$04,$80,$00,$21,$04   ; gido
  .byte $88,$04,$68,$00,$21,$05   ; gido
  .byte $FF,$FF

; Hit detection stuff
wpn_eny_hit_detection:    ; @$C234
  lda timer_lo_byte
  and #$01
  beq chk_wpn_status
  jmp chk_eny_wpn_status  ; jmp every other frame check enemy bullet
chk_wpn_status:           ; every other frame check plr bullet
  ldx #$00
chk_wpn_slot:
  stx $0E
  lda wpn_status,X
  bpl nxt_wpn_slot        ; branch if bullet ram slot is not active
  jsr wpn_status_active   ; jsr if wpn status is -ve, which means its active
nxt_wpn_slot:             ; increment bullet ram slot
  lda $0E
  clc
  adc#$10                 ; next row of wpn ram
  tax
  cpx #$40                ; max 4 bullets at a time, enemy bullet slots start at $540
  bcc chk_wpn_slot        ; loop back if 4 or less bullets
  rts
wpn_status_active:
  lda #$0F
  sta $04
  ldy #$00
chk_eny_status:
  sty $0F
  lda eny_spr_status,Y
  bmi :+                  ; branch if enemy sprite status is active
nxt_eny_slot:
  jmp inc_eny_slot        ; go to next enemy slot in ram
:
  and #$10                ; check if odd or even ram
  bne nxt_eny_slot        ; skip every other ram?
  lda eny_spr_status,Y
  and #$40                ; enemy is now exploding
  bne nxt_eny_slot
  lda stage_boss          ; stage or boss has different hibox tables
  asl
  tay
  lda eny_hitbox_jmp_tbl,Y
  sta $00
  lda eny_hitbox_jmp_tbl+1,Y
  sta $01
  ldy $0F
  lda eny_spr_type,Y      ; get hitbox based on sprite type
  asl
  tay
  lda ($00),Y             ; get enemy hitbox x value
  sta $02
  iny
  lda ($00),Y
  sta $03                 ; get enemy hitbox y value
  ldy $0F
  lda wpn_status,X
  and #$01                ; check if missile is exploding, either 81 or 83
  beq active_wpn_eny_hit_detection
  lda $02
  clc
  adc #$08                ; add 08 to the hitbox x value for exploding missiles
  sta $02
  lda $03
  clc
  adc #$08                ; add 08 to the hitbox y value for exploding missiles
  sta $03
active_wpn_eny_hit_detection:   ; weapon/enemy hit detection for active player bullet
  lda #$00
  sta $00
  sta $01
  lda eny_spr_x_pos_hi,Y
  sec
  sbc wpn_x_pos_hi,X
  sta $00                   ; store difference of plr wpn and eny sprite x positioin
  lda eny_spr_x_pos_page,Y
  sbc wpn_x_pos_page,X
  sta $01                   ; store difference of x page position
  jsr flip_bits_1
  lda $01
  bne inc_eny_slot          ; bullet and enemy are on different pages, check next enemy slot
  lda $00
  cmp $02                   ; compare enemy x hitbox area
  bcs inc_eny_slot          ; missed enemy, check next enemy slot
  lda #$00                  ; reset difference for y hit check
  sta $00
  sta $01
  lda eny_spr_y_pos_hi,Y
  sec
  sbc wpn_y_pos_hi,X
  sta $00                   ; store difference for y position high
  lda eny_spr_y_pos_page,Y
  sbc wpn_y_pos_page,X
  sta $01                   ; store difference for y position page
  jsr flip_bits_1
  lda $01
  bne inc_eny_slot
  lda $00
  cmp $03                   ; compare enemy y hitbox
  bcc eny_was_hit
inc_eny_slot:
  lda $0F
  clc
  adc #$10
  tay
  dec $04                   ; total of 0f rows/slots, decrement each time we go up to the next slot
  bmi :+                    ; rts when we've done all 0f slots of enemy ram
  jmp chk_eny_status
:
  rts
eny_was_hit:
  lda #$01
  sta $08
  lda wpn_status,X
  and #$40                  ; is missile or bullet
  beq :+                    ; branch if bullet
  lda #$03
  sta $08
:
  lda #$00
  sta wpn_status,X          ; deactivate bullet
  lda eny_spr_substatus,Y   ; 
  and #$20                  ; check if enemy has(is) a powerup
  bne eny_is_powerup        ; branch if has(is) powerup?
  lda eny_altmode,Y
  clc
  adc $08
  sta eny_altmode,Y
  sta $08
  lda stage_boss            ; stage and boss has different altmode/powerup tables
  asl
  tay
  lda eny_altmode_addr_tbl,Y
  sta $06
  lda eny_altmode_addr_tbl+1,y
  sta $07
  ldy $0F
  lda eny_spr_type,Y
  asl
  tay
  lda ($06),Y               ; enemy sprite type 30 has the powerup, asl left is 60
  bmi eny_has_altmode       ; branch if enemy has a negative stored here, meaning theres an alt mode or powerup
  and #$40                  ; like an enemy needs more than one hit to change, or maybe just gets frozen if hit, like a rocket
  bne freeze_enemy
  iny
  lda ($06),Y               ; go to the next byte in the table
  cmp $08                   ; 1 for bullet or 3 for missile    
  bcs b_c35f
  jsr play_explosion_sound
  ldy $0F
  lda eny_spr_type,Y
  jsr get_eny_score
  lda #$00
  sta eny_exp_timer,Y
  lda eny_spr_status,Y
  ora #$40
  sta eny_spr_status,Y
eny_is_powerup:
  jmp inc_eny_slot
b_c35f:
  jsr play_enemy_damage_sound
  jmp inc_eny_slot
eny_has_altmode:
  ldy $0F
  and #$3f
  sta eny_altmode,Y
  lda eny_spr_type,Y
  jsr get_eny_score
  jsr play_enemy_hit_sound
  lda eny_spr_status,Y
  ora #$10
  sta eny_spr_status,Y
  lda eny_spr_type,Y
  cmp #$33
  beq rod_letter            ; 33 is ramjet with rodimus letter
  cmp #$30                  ; 30 is ramjet with a powerup
  beq show_powerup
enemy_stop:
  lda #$00
  sta eny_x_spd_lo,Y
  sta eny_x_spd_hi,Y
  sta eny_y_spd_lo,Y
  sta eny_y_spd_hi,Y
  sta eny_exp_timer,Y
  rts
freeze_enemy:
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
rod_letter:
  lda current_level         ; get current level
  lsr
  tay
  lda rod_up_tbl,Y          ; get the rodimus letter for the correct level:1,2,4,5,7,9 only horizontal levels
  ldy $0F
  sta eny_altmode,Y         ; store the letter in tenemy altmode ram
  jmp enemy_stop            ; stop enemy movement because it will become a powerup
show_powerup:
  jsr rng_rtn
  lda rng_ram
  and #$07
  tay
  lda eny_powerup_tbl,Y
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
  sta eny_altmode,Y
  jmp enemy_stop

eny_powerup_tbl:            ; @$C3EE-C3F5 I think it might be a random selection from this table, B,P,F,D,1Up
  .byte $34,$35,$36,$37,$38,$34,$35,$36

chk_plr_eny_col:
  lda plr_sprite_status
  and #$F7
  sta plr_sprite_status
  ldx #$00
  stx enemy_speed_lo
  stx enemy_speed_hi
  lda #$0F
  sta $0C                   ; load total ram slots to 0c ram
j_c406:
  lda eny_spr_status,X
  bpl b_c40f                ; branch if ram slot is available/empty
  and #$50
  beq b_c412                ; branch if ram slot is 80, or maybe 20
b_c40f:
  jmp nxt_eny_slot_2                ; next enemy ram slot if enemy status is 10 or 40 or 50
b_c412:
  lda stage_boss
  asl
  tay
  lda eny_hitbox_jmp_tbl,Y
  sta $00
  lda eny_hitbox_jmp_tbl+1,Y
  sta $01
  lda #$06                  ; plr x hitbox
  sta $04
  lda #$0C                  ; plr y hitbox
  sta $05
  lda plr_sprite_status
  bpl b_c434                ; branch if botmode
  lda #$0E
  sta $04                   ; plr x hitbox
  lda #$06
  sta $05                   ; plr y hitbox
b_c434:
  lda eny_spr_type,X
  asl
  tay
  lda ($00),Y
  clc
  adc $04
  sta $02                   ; add and store player + enemy x hitbox
  iny
  lda ($00),Y
  clc
  adc $05
  sta $03                   ; add and store player + enemy y hitbox
  lda eny_spr_substatus,X
  and #$08                  ; check if enemy doesnt cause damage
  beq powerup_collision
  jmp platform_collision
powerup_collision:
  jsr plr_stage_x_loc
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_page,X
  sbc $01
  sta $01
  jsr flip_bits_1
  lda $01
  bne nxt_eny_slot_2
  lda $00
  cmp $02
  bcs nxt_eny_slot_2
  jsr plr_stage_y_loc
  lda eny_spr_y_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_y_pos_page,X
  sbc $01
  sta $01
  jsr flip_bits_1
  lda $01
  bne nxt_eny_slot_2
  lda $00
  cmp $03
  bcs nxt_eny_slot_2
  lda state 
  beq get_powerup
nxt_eny_slot_2:                     ; check next enemy ram slot
  txa
  clc
  adc #$10
  tax
  dec $0C
  bmi :+
  jmp j_c406
:
  rts
plr_collide_eny_wpn:
  lda power_up
  and #$20              ; player was hit, check for powerup
  beq plr_died          ; no powerup, you died
  lda eny_spr_type,X
  jsr get_eny_score     ; still get the points for a suicide kill
  lda #$00
  sta eny_exp_timer,X   ; set 0 to enemy explosion timer
  lda eny_spr_status,X
  ora #$40
  sta eny_spr_status,X  ; or 40 with enemy sprite status
  inc hits_taken        ; increment hits taken
  lda #$00
  sta eny_wpn_status,X  ; disable enemy bullet
  lda hits_taken
  cmp #$04              ; check if we've recieved max hits taken
  bcc nxt_eny_slot_2            ; branch if we still have hits left
  lda power_up          ; remove barrier after 4 hits
  and #$DF              ; remove barrier
  sta power_up
  jsr play_stage_music  ; restart stage music when we lose barrier
  jmp nxt_eny_slot_2
plr_died:
  lda #$02              ; plr died
  sta state             ; load 02 to state
  lda #$00
  sta flash_counter
  jsr play_plr_exp_sound
  rts
get_powerup:
  lda eny_spr_type,X
  cmp #$1E
  beq clear_powerup_sprite
  cmp #$1F                  ; 1f is energon cube
  beq get_energon_cube
  cmp #$29                  ; 29 is blank space with an energon cube
  beq nxt_eny_slot_2
  cmp #$23                  ; 23 is blank space?
  beq nxt_eny_slot_2
  cmp #$34                  ; 33 is jet w/powerup
  bcc plr_collide_eny_wpn
  ldy #$40                  ; dbl shot powerup is 40
  cmp #$35                  ; 34 is P powerup
  bcc get_x_powerup
  ldy #$80                  ; flight powerup is 80
  cmp #$36                  ; 35 is F powerup
  bcc get_x_powerup
  cmp #$37                  ; 36 is D powerup
  bcc get_d_powerup
  cmp #$38                  ; 37 is B powerup
  bcc get_b_powerup
  beq get_1up_powerup
  sec
  sbc #$39
  sta $00
  sec 
  lda #$00
:
  ror
  dec $00
  bpl :-
  ora rodimus_ram
  sta rodimus_ram           ; add letter to rodimus ram
clear_powerup_sprite:
  lda #$00
  sta eny_spr_status,X
  jsr play_powerup_sound
  lda eny_spr_type,X
  jsr get_eny_score
  jmp nxt_eny_slot_2
get_energon_cube:
  lda #$64
  sta incScoreLo            ; add 1000 points 
  lda #$00
  sta incScoreHi
  jsr increment_score
  jmp clear_powerup_sprite
get_x_powerup:
  tya                       ; add the b, f or p powerup, depending on y value coming in here
  ora power_up
  sta power_up
  jmp clear_powerup_sprite
get_1up_powerup:
  inc lives
  jmp clear_powerup_sprite
get_d_powerup:
  lda power_up
  and #$3F
  sta power_up
  lda plr_sprite_status
  and #$EF
  sta plr_sprite_status
  jmp clear_powerup_sprite
get_b_powerup:
  jsr play_barrier_music
  lda #$00
  sta hits_taken
  ldy #$20                  ; ready to add barrier flag to powerup in ram
  jmp get_x_powerup
platform_collision:
  lda $03
  clc
  adc #$04
  sta $03
  jsr plr_stage_y_loc
  lda #$00
  sta $06
  lda eny_spr_y_pos_hi,X
  sec
  sbc $00
  sta $00
  sta $04
  lda eny_spr_y_pos_page,X
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
  cmp #$08
  bcs b_c5a5
  lda #$FF
  sta $06
b_c5a5:
  lda $02
  sec
  sbc #$02
  sta $04
  jsr plr_stage_x_loc
  lda eny_spr_x_pos_hi,X
  sec
  sbc $00
  sta $00
  lda eny_spr_x_pos_page,X
  sbc $01
  sta $01
  sta $07
  jsr flip_bits_1
  lda $01
  bne b_c5dd
  lda $00
  cmp $04
  bcc b_c5e0
  cmp $02
  bcs b_c5dd
  lda plr_x_speed_hi
  eor $07
  bmi b_c5dd
  lda #$00            ; player hit side of platform
  sta plr_x_speed_lo
  sta plr_x_speed_hi
b_c5dd:
  jmp nxt_eny_slot_2
b_c5e0:               ; player jumped into bottom of platform
  lda $06
  bne b_c5f3
  lda plr_y_speed_hi
  bpl b_c5dd
  lda #$00
  sta plr_y_speed_lo
  sta plr_y_speed_hi
  sta jump_hold
  jmp nxt_eny_slot_2
b_c5f3:
  lda jump_hold
  bpl b_c5fb
  lda plr_y_speed_hi
  bmi b_c5dd
b_c5fb:
  ldy #$00
  lda $08
  cmp #$02
  bcc b_c605
  ldy #$10
b_c605:                     ; player landed on platform
  sty $00
  lda eny_y_spd_lo,X
  sec
  sbc $00
  sta plr_y_speed_lo
  lda eny_y_spd_hi,X
  sbc #$00
  sta plr_y_speed_hi        ; give player same y speed as platform
  lda eny_x_spd_lo,X
  sta enemy_speed_lo
  lda eny_x_spd_hi,X
  sta enemy_speed_hi
  lda plr_sprite_status
  ora #$08                  ; crouching?
  sta plr_sprite_status
  jmp nxt_eny_slot_2
chk_eny_wpn_status:
  ldx #$00
chk_plr_hit:
  lda eny_wpn_status,X
  bpl nxt_eny_wpn_slot
  lda #$05                  ; player x hitbox botmode
  sta $02
  lda #$0C                  ; player y hitbox botmode
  sta $03
  lda plr_sprite_status     ; check truck mode
  bpl :+                    ; branch if bot mode b_c644
  lda #$0C                  ; player x hitbox truck
  sta $02
  lda #$06                  ; player y hitbox truck
  sta $03
:
  jsr plr_stage_x_loc
  lda $00                   ; load player x position hi
  sec
  sbc eny_wpn_x_pos_hi,X
  sta $00
  lda $01                   ; load player x position page
  sbc eny_wpn_x_pos_page,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne nxt_eny_wpn_slot      ; branch if on different page
  lda $00
  cmp $02
  bcs nxt_eny_wpn_slot
  jsr plr_stage_y_loc
  lda $00
  sec
  sbc eny_wpn_y_pos_hi,X
  sta $00
  lda $01
  sbc eny_wpn_y_pos_page,X
  sta $01
  jsr flip_bits_1
  lda $01
  bne nxt_eny_wpn_slot
  lda $00
  cmp $03
  bcs nxt_eny_wpn_slot
  lda state
  bne nxt_eny_wpn_slot
  lda power_up
  and #$20                  ; check if barrier is set
  bne inc_hits_taken
  lda #$02
  sta state                 ; player died, load 02 to status
  lda #$00
  sta flash_counter
  sta boss_explosion_counter
  jsr play_plr_exp_sound
  rts
nxt_eny_wpn_slot:
  txa
  clc
  adc #$10
  tax
  cpx #$C0
  bcc chk_plr_hit
  rts
inc_hits_taken:
  inc hits_taken
  lda #$00
  sta eny_wpn_status,X
  lda hits_taken
  cmp #$04
  bcc nxt_eny_wpn_slot
  lda power_up
  and #$DF
  sta power_up
  jsr play_stage_music
  jmp nxt_eny_wpn_slot
get_eny_score:
  sta $0B                   ; store enemy sprite type to 0b ram
  txa
  pha
  tya
  pha                       ; hold x and y registers to stack while we use them to find the score table
  lda stage_boss            ; 00 for level 01 for boss, odd or even, essentially
  asl
  tay
  lda eny_score_jmp_tbl,Y
  sta $09
  lda eny_score_jmp_tbl+1,Y
  sta $0A
  lda $0B                   ; load enemy sprite type
  asl
  tay
  lda ($09),Y
  sta incScoreLo            ; add score low byte
  iny
  lda ($09),Y
  sta incScoreHi            ; add score high byte
  jsr increment_score       ; increment score
  pla
  tay
  pla
  tax
  rts

;======================================================================================================================================

;Enemy score table low and high byte 
eny_score_jmp_tbl:          ; @$C6E6-C911
  .word enemy_score_table   ;	.byte $EA,$C6,$62,$C7
  .word boss_score_table
enemy_score_table:          ; @c6ea
    ; score low bite, high byte
  .byte $0A,$00,$1E,$00,$1E,$00,$32,$00
  .byte $64,$00,$1E,$00,$32,$00,$28,$00
  .byte $00,$00,$00,$00,$28,$00,$32,$00
  .byte $00,$00,$1E,$00,$00,$00,$64,$00
  .byte $1E,$00,$32,$00,$64,$00,$2C,$01
  .byte $1E,$00,$64,$00,$28,$00,$32,$00
  .byte $32,$00,$14,$00,$1E,$00,$F4,$01
  .byte $00,$00,$00,$00,$F4,$01,$00,$00
  .byte $00,$00,$1E,$00,$00,$00,$88,$13
  .byte $32,$00,$88,$13,$64,$00,$64,$00
  .byte $10,$27,$64,$00,$64,$00,$88,$13
  .byte $88,$13,$88,$13,$0A,$00,$0A,$00
  .byte $0A,$00,$0A,$00,$0A,$00,$0A,$00
  .byte $64,$00,$64,$00,$00,$00,$64,$00
  .byte $64,$00,$64,$00,$64,$00,$64,$00
boss_score_table:           ; @c762
  .byte $64,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$0A,$00,$0A,$00,$2C,$01
  .byte $14,$00,$90,$01,$32,$00,$E8,$03
  .byte $14,$00,$64,$00,$B8,$0B,$14,$00
  .byte $10,$27,$00,$F0,$F4,$01,$00,$F0
  .byte $D0,$07,$88,$13,$00,$00,$00,$00
  .byte $00,$00,$00,$F0,$00,$F0

; Enemy hitbox table X and Y sizes
eny_hitbox_jmp_tbl:         ; @c798
  .word eny_hitbox_table    ; .byte $9C,$C7,$1C,$C8   ; jump table
  .word bos_hitbox_table
eny_hitbox_table:           ; @c79c enemy hitbox stuff
      ;   X, Y
  .byte $0A,$03,$0A,$03,$06,$0A,$0A,$03 ; 00 ramjet,blitzwing,bot,Crack (lobster)
  .byte $04,$08,$04,$08,$08,$04,$08,$08 ; 04 Gosupu(rocket),hammer(plumbus),tosher(ufo),heru(mouse drone)
  .byte $0C,$04,$0C,$04,$04,$04,$04,$04 ; 08 platform,Platform,Gau,Laggar
  .byte $0C,$04,$08,$04,$0A,$04,$04,$08 ; 0C platform,laserbeak,condor,Zunonbat(closed)
  .byte $08,$04,$04,$0C,$0C,$04,$08,$10 ; 10 Zunobat(flying),Marakirasu,Guardian,Azak
  .byte $0C,$04,$08,$04,$08,$05,$08,$04 ; 14 Ratbat,Ratbat(tape),Snow Commander,Wasta(orange dome ufo)
  .byte $08,$08,$04,$04,$0A,$03,$08,$08 ; 18 Zaffuru(Rosie),bugs,Starscream(Jet),Starscream(Bot)
  .byte $00,$00,$00,$00,$08,$08,$04,$04 ; 1C Gido,Gido,Takara Baby,Energon Cube
  .byte $00,$00,$08,$08,$10,$04,$00,$00 ; 20 Explosion A,Gido,Explosion B,
  .byte $04,$04,$0C,$04,$04,$08,$04,$08 ; 24 Burcane Ball,,Rabu(wall pyramid)/ganzo left,rabu/ganzo(wallslug) right
  .byte $00,$00,$04,$04,$08,$08,$00,$00 ; 28 Megatron poster,,,
  .byte $08,$08,$08,$08,$04,$08,$04,$04 ; 2C ,pickaxe,goldbar,Gau
  .byte $0A,$04,$0A,$04,$0A,$04,$0A,$04 ; 30 Ramjet,
  .byte $04,$04,$04,$04,$04,$04,$04,$04 ; 34 P,F,D,B
  .byte $04,$04,$04,$04,$04,$04,$04,$04 ; 38 1Up,R,O,D
  .byte $04,$04,$04,$04,$04,$04,$04,$04 ; 3C I,M,U,S
bos_hitbox_table:           ; @c81c boss stuff
  .byte $06,$06,$0C,$04,$0C,$04,$0C,$04 ; 00 planet,platform,platform,platform
  .byte $0C,$04,$04,$05,$04,$05,$04,$06 ; 04 platform,Kabusu,Kabusu,Decepticon-red
  .byte $04,$04,$04,$06,$06,$06,$04,$06 ; 08 cymbals-Dred,Nemesis,,Decepticon-Blue
  .byte $04,$04,$08,$08,$04,$06,$04,$04 ; 0C Unused firewheel(Nemesis palette)cymbals-Dblue,Scary Spider,Decepticon-Purp,cymbals-Purp
  .byte $04,$08,$08,$08,$04,$06,$04,$04 ; 10 Trypticon,Trypticonblast/Explosion A,Menasor,Bruticus/Megatron Bullet
  .byte $04,$06,$04,$06,$0C,$04,$06,$06 ; 14 Bruticus,Megatron,,Bumblebee(Bot)
  .byte $06,$06,$08,$02                 ; 18 Bumblebee,Menasor Laser

; enemy altmodes and number of hits table
eny_altmode_addr_tbl:       ; @$C850
.word eny_altmode_tbl       ; .byte $54,$C8,$D4,$C8
.word bos_altmode_tbl
eny_altmode_tbl:            ; @c854   enemy sprite altmode table or how many hits does it take to kill wildlife on another planet?
    ; alt mode, number of hits
  .byte $82,$00,$82,$00,$00,$00,$00,$00 ; 
  .byte $7F,$FF,$00,$00,$00,$00,$00,$02 ; 
  .byte $00,$0F,$00,$0F,$00,$00,$00,$00 ; 
  .byte $00,$0F,$00,$00,$00,$03,$00,$0A ; 
  .byte $00,$00,$00,$02,$00,$05,$00,$0A ; 
  .byte $95,$00,$00,$0A,$00,$00,$00,$00 ; 
  .byte $00,$02,$00,$02,$9B,$00,$00,$00 ; 
  .byte $00,$00,$00,$00,$00,$80,$00,$00 ; 
  .byte $00,$00,$00,$02,$7F,$FF,$00,$FF ; 
  .byte $00,$00,$7F,$FF,$00,$02,$00,$02 ; 
  .byte $00,$FF,$9F,$00,$00,$02,$00,$FF ; 
  .byte $00,$30,$00,$00,$9F,$00,$9E,$00 ; 2C ,,,Gau
  .byte $80,$00,$B7,$00,$B8,$00,$80,$00 ; 30 Ramjet,
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 34 P,F,D,B
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 38 1Up,R,O,D
  .byte $00,$00,$00,$00,$00,$00,$00,$00 ; 3C I,M,U,S
bos_altmode_tbl:  ; @8cd4
  .byte $00,$03,$00,$0F,$00,$0F,$00,$0F ; 00 planet,platform,platform,platform
  .byte $00,$0F,$00,$00,$00,$00,$00,$03 ; 04 platform,Kabusu,Kabusu
  .byte $00,$00,$00,$03,$00,$05,$00,$03 ; 08 cymbals-Dred,Nemesis,,Decepticon-Blue
  .byte $00,$00,$00,$0A,$00,$04,$00,$00 ; 0C Unused firewheel(Nemesis palette),Scary Spider,Decepticon,Nemesis
  .byte $00,$09,$00,$30,$00,$03,$00,$30 ; 10 Trypticon,Explosion A,Menasor,Bruticus Bullet
  .byte $00,$04,$00,$04,$7F,$00,$00,$00 ; 14 Bruticus,Megatron,,Bumblebee(Bot)
  .byte $00,$00,$00,$30                 ; 18 Bumblebee,Menasor Laser


rod_up_tbl:
  .byte $39,$3A,$00,$3B,$3C,$00,$3D,$00,$3F,$00
chr_rom_bank_tbl: ; @$C912-C92E
  .byte $00,$00,$00,$00,$00,$02,$01,$01,$01,$00,$00,$02,$00,$00,$01,$02,$02,$00,$01,$02,$03,$00,$03,$00,$03,$00,$03,$00,$00
stage_boss_table:     ; @$C92F-C943
  .byte $00,$01,$00,$01,$00,$01,$00,$01,$00,$01   ; stages 1-5 (00 - 09)
  .byte $00,$01,$00,$01,$00,$01,$00,$01,$00,$01   ; stages 6-10 (0A - 13)
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$01   ; ride rooms and stuff? (14 - 2C)
stage_misc_tbl_1:; @$rom495c-496e/memory c94c
  .byte $01,$03,$01,$01,$01,$01,$01,$01,$01,$01
untbl_2:
  .byte $01,$01,$01,$01,$01,$01,$01,$01,$01
boss_explosion_tbl:
	;.byte $73,$C9,$83,$C9,$93,$C9,$A3,$C9,$B3,$C9,$93,$C9,$B3,$C9,$93,$C9,$B3,$C9,$C3,$C9   ; addresses
  .word eny_pos_tbl_00,eny_pos_tbl_01,eny_pos_tbl_02,eny_pos_tbl_03,eny_pos_tbl_04
  .word eny_pos_tbl_02,eny_pos_tbl_04,eny_pos_tbl_02,eny_pos_tbl_04,eny_pos_tbl_05
eny_pos_tbl_00:  ; @c973
  .byte $80,$40,$90,$60,$A0,$50,$80,$60,$90,$50,$A0,$40,$90,$30,$90,$70
eny_pos_tbl_01:  ; @c983
  .byte $80,$40,$A0,$60,$C0,$60,$C0,$80,$A0,$40,$80,$60,$E0,$60,$D0,$70
eny_pos_tbl_02:  ; @c993
  .byte $C0,$60,$E0,$50,$D0,$80,$B0,$70,$B0,$50,$E0,$80,$D0,$50,$B0,$90
eny_pos_tbl_03:  ; @c9a3
  .byte $A0,$30,$C0,$50,$E0,$40,$A0,$80,$E0,$80,$A0,$70,$D0,$50,$90,$50
eny_pos_tbl_04:  ; @c9b3
  .byte $D0,$A0,$B0,$80,$A0,$60,$D0,$50,$D0,$70,$A8,$30,$D0,$38,$C0,$20
eny_pos_tbl_05:  ; @c9c3
  .byte $C0,$50,$B0,$80,$E0,$70,$D0,$30,$A0,$30,$C0,$20,$A0,$60,$B0,$50

player_y_pos_tbl:     ; @$C9D3, y and x values alternate, 2 bytes per level
  .byte $50
player_x_pos_tbl:     ; @$C9D4-C9FA these are the x and y position for where the player starts in a given stage/boss
	.byte $10,$50,$10     ; stage 1
  .byte $50,$10,$50,$10 ; stage 2
  .byte $90,$28,$50,$10 ; stage 3 Y and X start positions
  .byte $50,$10,$50,$10
  .byte $50,$10,$50,$10
	.byte $50,$28,$50,$10 ; stage 6 has a different start point
  .byte $50,$10,$50,$10
  .byte $30,$34,$50,$10 ; stage 8 
  .byte $60,$10,$50,$10 ; stage 9
  .byte $90,$60,$50,$10 ; stage 10
	.byte $A0,$10,$C0,$08 ; endscreen, brainwaves going out
  .byte $80,$10,$50,$10 ; mining guy, brainwaves coming in
  .byte $A0,$10,$50,$10 ; guardian room, unk
  .byte $80,$50,$50,$10
  .byte $C0,$10 ; @$C9FB-CA0C
stage_tbl_2:          ; @$CA0D-CA10
  .word stage_table_start ;  .byte $32,$FB,$F2,$FD   ; stage table stuff @fb32, boss table stuff @fdf2
  .word boss_table_start
player_acceleration_tbl:     ; @$CA11-CA1A
  .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	.byte $20,$20,$0C,$20,$20,$20,$20,$20,$20,$20   ; stage 7 has low acceleration because of the ice
  .byte $20,$20,$20,$20,$20,$20,$20,$20,$20 ; @$CA1B-CA2CCC76

bg_column_table:          ; @$CA2D-CBC2 background column address jump table
  ; jump table
  .word stage_col_tbl_1a,stage_col_tbl_1b ; .byte $69,$CA,$9A,$CA ; stage 1
  .word stage_col_tbl_2a,stage_col_tbl_2b ; .byte $9E,$CA,$CF,$CA ; stage 2
  .word stage_col_tbl_3a,stage_col_tbl_3b ; .byte $D3,$CA,$D7,$CA ; stage 3
  .word stage_col_tbl_4a,stage_col_tbl_4b ; .byte $DB,$CA,$0C,$CB ; stage 4
  .word stage_col_tbl_5a,stage_col_tbl_5b ; .byte $10,$CB,$41,$CB ; stage 5
  .word stage_col_tbl_3a,stage_col_tbl_3b ; .byte $D3,$CA,$D7,$CA ; stage 6
  .word stage_col_tbl_7a,stage_col_tbl_7b ; .byte $45,$CB,$76,$CB ; stage 7
  .word stage_col_tbl_8a,stage_col_tbl_3b ; .byte $7A,$CB,$D7,$CA ; stage 8
  .word stage_col_tbl_9a,stage_col_tbl_9b ; .byte $7E,$CB,$AF,$CB ; stage 9
  .word stage_col_tbl_8a,stage_col_tbl_10b; .byte $7A,$CB,$B3,$CB ; stage 10
  .word stage_col_tbl_0a,stage_col_tbl_0b; .byte $B7,$CB,$BF,$CB ; pickaxe battle,brainwave1
  .word stage_col_tbl_0a,stage_col_tbl_0b; .byte $B7,$CB,$BF,$CB ; pickaxe battle2,brainwave2
  .word stage_col_tbl_0c,stage_col_tbl_0b; .byte $BB,$CB,$BF,$CB ; guardian room,
  .word stage_col_tbl_0c,stage_col_tbl_0b; .byte $BB,$CB,$BF,$CB ;
  .word stage_col_tbl_0b                  ; .byte $BF,$CB         ;

; padding
  .byte $00
; column tables for stages, which background columns to load
stage_col_tbl_1a:  ; @ca69 Stage 1
  .byte $00,$01,$02,$03,$06,$07,$01,$02,$03,$04,$05,$00,$05,$00
	.byte $01,$02,$03,$1A,$06,$07,$05,$00,$01,$02,$03,$04,$05
  .byte $06,$07,$05,$06,$07,$01,$02,$03,$1A,$1A,$06,$07,$01,$02,$03,$04,$05,$04,$05,$1A,$1A,$1A
stage_col_tbl_1b:  ; @ca9a Boss 1
  .byte $50,$51,$52,$16
stage_col_tbl_2a:  ; @ca9e Stage 2
  .byte $0A,$0A,$0B,$0D,$0E,$0B,$0D
	.byte $0E,$11,$0F,$10,$11,$0B,$0D,$0E,$08,$08,$0A,$0A,$0B,$0D,$0E,$0A,$0B,$0F,$10,$0B,$0C,$0C,$0C,$12,$0C,$12,$13,$13,$12,$0C,$08,$0F,$10,$10,$11,$0C,$0C,$0C,$08,$0A,$0A,$0A
stage_col_tbl_2b:  ; @cacf Boss 2
  .byte $50,$51,$52,$53
stage_col_tbl_3a:  ; @cad3 Stage 3 and 6
	.byte $14,$15,$1C,$1D
stage_col_tbl_3b:  ; @cad7 Boss 3 and 6 and 8
  .byte $4E,$4E,$1E,$1F
stage_col_tbl_4a:  ; @cadb Stage 4
  .byte $17,$18,$19,$1B,$17,$18,$19,$1B,$19,$18,$17,$19,$17,$18,$19,$1B,$24,$25,$20,$21,$22,$23,$22,$23,$24,$25,$26,$27,$20,$21,$22,$23,$24,$25,$26,$27,$24,$25
	.byte $26,$27,$17,$18,$19,$1B,$26,$27,$20,$21,$21
stage_col_tbl_4b:  ; @cb0c Boss 4
  .byte $4E,$4E,$44,$45
stage_col_tbl_5a:  ; @bc10 Stage 5
  .byte $37,$36,$38,$37,$38,$38,$2D,$2E,$38,$36,$38,$2F,$30,$31,$32,$33,$34,$36,$38,$37,$2B,$2C,$38,$38,$37,$38,$36,$38,$38,$2D,$2E
	.byte $36,$38,$2F,$30,$31,$32,$33,$34,$36,$38,$2D,$2E,$38,$36,$37,$2B,$2C,$2C
stage_col_tbl_5b:  ; @cb41 Boss 5
  .byte $4E,$4E,$2A,$3F
stage_col_tbl_7a:  ; @cb45 Stage 7
  .byte $00,$01,$02,$03,$04,$05,$06,$07,$05,$00,$01,$02,$03,$04,$05,$06,$07,$05,$1A,$04,$05,$1A,$04,$05
	.byte $04,$05,$1A,$04,$05,$00,$01,$02,$03,$1A,$04,$05,$00,$05,$04,$05,$00,$01,$02,$03,$1A,$09,$1A,$1A,$1A
stage_col_tbl_7b:  ; @cb76 Boss 7
  .byte $4E,$4E,$42,$43
stage_col_tbl_8a:  ; @cb7a Stage 8 and 10
  .byte $3B,$3C,$3D,$3E
stage_col_tbl_9a:  ; @cb7e Stage 9
  .byte $47,$48,$49,$4F,$54,$55,$4F,$54,$55,$4F,$54,$55,$4F
	.byte $4B,$4C,$4D,$4F,$46,$47,$48,$49,$4A,$48,$49,$49,$48,$4F,$54,$55,$55,$55,$55,$4F,$49,$48,$49,$4A,$48,$4F,$54,$55,$4F,$54,$55,$4F,$54,$55,$55,$55
stage_col_tbl_9b:  ; @cbaf Boss 9
  .byte $4E,$4E,$40,$41
stage_col_tbl_10b:  ; @cbb3 Boss 10
  .byte $4E,$4E,$28,$29
stage_col_tbl_0a:  ; @cbb7 pickaxe
  .byte $39,$56,$56,$3A
stage_col_tbl_0c:  ; @cbbb guardian room
  .byte $57,$58,$58,$59
stage_col_tbl_0b:  ; @cbbf other
  .byte $1A,$1A,$1A,$1A

bg_tile_table:          ; @$CBC3-CC76
  .word lvl_col_00,lvl_col_01 ; .byte $C6,$E0,$12,$E1 ; section 00,01
  .word lvl_col_02,lvl_col_03 ; .byte $5E,$E1,$AA,$E1
  .word lvl_col_04,lvl_col_05 ; .byte $F6,$E1,$42,$E2
  .word lvl_col_06,lvl_col_07 ; .byte $8E,$E2,$DA,$E2
  .word lvl_col_08,lvl_col_40 ; .byte $26,$E3,$C6,$F3 ; section 08,09
  .word lvl_col_09,lvl_col_0A ; .byte $72,$E3,$BE,$E3
  .word lvl_col_0B,lvl_col_0C ; .byte $0A,$E4,$56,$E4
  .word lvl_col_0D,lvl_col_0E ; .byte $A2,$E4,$EE,$E4
  .word lvl_col_0F,lvl_col_10 ; .byte $3A,$E5,$86,$E5 ; section 10,11
	.word lvl_col_11,lvl_col_12 ; .byte $D2,$E5,$1E,$E6
  .word lvl_col_41,lvl_col_42 ; .byte $12,$F4,$5E,$F4
  .word lvl_col_51,lvl_col_16 ; .byte $D2,$F8,$4E,$E7
  .word lvl_col_17,lvl_col_18 ; .byte $9A,$E7,$E6,$E7 ; section 18,19
  .word lvl_col_1A,lvl_col_19 ; .byte $7E,$E8,$32,$E8
  .word lvl_col_43,lvl_col_44 ; .byte $AA,$F4,$F6,$F4
  .word lvl_col_45,lvl_col_46 ; .byte $42,$F5,$8E,$F5
  .word lvl_col_1B,lvl_col_1C ; .byte $CA,$E8,$16,$E9 ; section 20,21
  .word lvl_col_1D,lvl_col_1E ; .byte $62,$E9,$AE,$E9
  .word lvl_col_1F,lvl_col_20 ; .byte $FA,$E9,$46,$EA
  .word lvl_col_21,lvl_col_22 ; .byte $92,$EA,$DE,$EA
  .word lvl_col_47,lvl_col_48 ; .byte $DA,$F5,$26,$F6 ; section 28,29
  .word lvl_col_49,lvl_col_23 ; .byte $72,$F6,$2A,$EB
  .word lvl_col_24,lvl_col_25 ; .byte $76,$EB,$C2,$EB
  .word lvl_col_26,lvl_col_27 ; .byte $0E,$EC,$5A,$EC
  .word lvl_col_28,lvl_col_29 ; .byte $A6,$EC,$F2,$EC ; section 30,31
  .word lvl_col_2A,lvl_col_2B ; .byte $3E,$ED,$8A,$ED
  .word lvl_col_2C,lvl_col_2C ; .byte $D6,$ED,$D6,$ED
  .word lvl_col_2D,lvl_col_2E ; .byte $22,$EE,$6E,$EE
  .word lvl_col_2F,lvl_col_13 ; .byte $BA,$EE,$6A,$E6 ; section 38,39
  .word lvl_col_14,lvl_col_30 ; .byte $B6,$E6,$06,$EF
  .word lvl_col_31,lvl_col_32 ; .byte $52,$EF,$9E,$EF
  .word lvl_col_33,lvl_col_4A ; .byte $EA,$EF,$BE,$F6
	.word lvl_col_4B,lvl_col_4C ; .byte $0A,$F7,$56,$F7 ; section 40,41
  .word lvl_col_4D,lvl_col_4E ; .byte $A2,$F7,$EE,$F7
  .word lvl_col_4F,lvl_col_50 ; .byte $3A,$F8,$86,$F8
  .word lvl_col_34,lvl_col_35 ; .byte $36,$F0,$82,$F0
  .word lvl_col_36,lvl_col_37 ; .byte $CE,$F0,$1A,$F1 ; section 48,49
  .word lvl_col_38,lvl_col_39 ; .byte $66,$F1,$B2,$F1
  .word lvl_col_3A,lvl_col_3B ; .byte $FE,$F1,$4A,$F2
  .word lvl_col_3D,lvl_col_3C ; .byte $E2,$F2,$96,$F2
  .word lvl_col_52,lvl_col_53 ; .byte $1E,$F9,$6A,$F9 ; section 50,51
  .word lvl_col_54,lvl_col_55 ; .byte $B6,$F9,$02,$FA
  .word lvl_col_3E,lvl_col_3F ; .byte $2E,$F3,$7A,$F3
  .word lvl_col_15,lvl_col_56 ; .byte $02,$E7,$4E,$FA
  .word lvl_col_57,lvl_col_58 ; .byte $9A,$FA,$E6,$FA ; section 58,59
stage_orientation_table:  ; @$CC77
  ; Stage orientation table
  ; First byte is the orientation
  ; $00 = Horizontal
  ; $40 = Vertical Up
  ; $80 = Vertical Down
  ; Second byte?
  ; Levels after 10 no scroll
	.byte $00,$00           ; Level 1 
  .byte $00,$00           ; Level 2
  .byte $40,$00           ; Level 3
  .byte $00,$01           ; Level 4
  .byte $00,$01           ; Level 5
  .byte $80,$00           ; Level 6
  .byte $00,$01           ; Level 7
  .byte $80,$00           ; Level 8
  .byte $00,$01           ; Level 9
  .byte $40,$01           ; Level 10
	.byte $00,$00           ; Level pickaxe battle from stage 3
  .byte $00,$00           ; Level pickaxe battle from stage 6
  .byte $00,$00           ; Level guardian room
  .byte $00,$00           ; Level ? probably pickaxe battle from stage 10 thats blocked
  .byte $00               ; Extra Byte?
collision_jmp_tbl:   ; @$CC94
  ;.byte $9E,$CC,$A6,$CC,$AE,$CC,$B6,$CC,$BE,$CC
  .word collision_all
  .word collision_top
  .word collision_rig
  .word collision_bot
  .word collision_lef
  ; level 1,2,4,6(vert_down),7,8(vert_down),9.... no this is depending on the tile number
  ; 53-7C, 7D-95, 96-A5, A6-AB, AC+
  ; each byte is the x pixel each bit of every byte is the y pixel
collision_all:    ; @cc9e Tile 53-7C
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    ; level 5? wrong
collision_top:    ; @cca6 tiles 7C-95
  .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
collision_rig:    ; @ccae tiles 96-A5
  .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
    ; level 3(vert_up)
collision_bot:    ; @ccb6 tiles A6-AB
	.byte $00,$00,$00,$00,$FF,$FF,$FF,$FF
collision_lef:    ; @ccbe tiles AC and up
  .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00


;======================================================
; Title screen stuff
;
; 00 = palette table/PPU_ADDR address low byte
; 01 = palette table/PPU_ADDR address high byte

draw_title:          ; @$CCC6
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003           ; ready chr rom bank 3
  sta $8003           ; set chr rom bank 3
  jsr draw_tf_title
  jsr draw_title_attributes
  lda #$00              ; load y position 0
  sta y_scroll_lo
  sta y_scroll_hi
  lda #$FE              ; load title to scroll from the right
  sta x_scroll
  jmp ppu_scroll
draw_title_attributes:
  lda #$23
  sta PPU_ADDR      ; Set PPU Address to top of attribute table @$23C0
  lda #$C0
  sta PPU_ADDR
  ldx #$00
:
  lda title_tbl,X
  sta PPU_VRAM_IO
  inx
  cpx #$40          ; 64 bytes of title screen attribute data
  bcc :-
  lda #<title_palette_tbl     ; load indirect address for title screen palette data @d01c
  sta $00
  lda #>title_palette_tbl
  sta $01
  jmp send_palette_to_ram
draw_tf_title:
  lda #$24
  sta $03     ; load #$24 into Ram $03, this is the start of the Transformers Logo in CHR rom bank 03
  lda #$05    ; set number of rows of transformers logo
  sta $02     ; load #$05 into Ram $02, lines of TF title logo
  lda #$21    
  sta $01     ; load #$21 into Ram $01, VRAN High byte
  lda #$02
  sta $00     ; load #$02 into Ram $00, VRAM Low byte $2102
tf_title_loop:
  lda PPU_STATUS  ; Clear PPU flags
  lda $01
  sta PPU_ADDR    ; Set high byte of VRAM address
  lda $00
  sta PPU_ADDR    ; Set low byte of VRAM address
  ldy #$00        ; Reset Y to 0
:
  lda $03
  sta PPU_VRAM_IO ; Write Transformers Logo to screen, starting with $24 from background table
  inc $03         ; Increment $03 to the next tile of the logo
  iny
  cpy #$1C        ; each row has 1C tiles
  bcc :-
  dec $02         ; Decrement number of lines left
  bpl :+          ; branch until no lines left for title TF logo
  rts
:
  lda $00
  clc
  adc #$20
  sta $00         ; add #$20 to VRAM low byte
  lda $01
  adc #$00
  sta $01         ; add carry to VRAM high byte
  jmp tf_title_loop
title_timer_rtn:
  lda #$10
  sta rtn_trk_a
  lda #$00
  sta demo_status       ; reset demo_status from its initial FF
  jsr set_PPU_CTRL_a  ; turn on screen
:                             ; this loop is redundant*******
  jsr get_player_input        ; these 4 lines arnt needed here ******
  lda controller_p1_current
  and #$0C                    ; is start or select pressed
  bne :-                      ; loop back if it is
  jsr disable_audio_channels
  lda #$20
  sta rtn_trk_a         ; set routine tracker a to #$20
  lda #$00
  sta timer_lo_byte     ; reset timer low byte
  sta timer_hi_byte     ; reset timer high byte
  sta plr_x_prog_pg     ; set player x progression high byte to 0
  sta state             ; reset state
  sta which_player      ; reset to player 1
  sta subtitle_timer    ; reset subtitle timer
  sta frame_counter_96  ; reset frame counter "96"
  sta y_scroll_hi       ; reset y scroll
  lda #$FE
  sta x_scroll          ; set x scroll to far right for later use
  jsr set_PPU_MASK_a    ; show sprites and backgrounds
:
  lda state
  bmi :+
  jmp :-      ; loop here until nmi hits/vblank ends (whatever) is hit or if start is pushed state would be negative coming into this routine
:             ; start has been pushed at title screen
  jsr disable_audio_channels
  jsr play_title_theme          ; @$D944 get title theme loaded
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
  bcs :++                   ; turn off screen and exit
  bit state
  bmi :+
  jmp :-                    ; loop back until vblank, this happens at the title screen
:                           ; start has been pushed to select number of players
  jsr disable_audio_channels
  lda sel_status
  sta which_player
  jsr set_PPU_CTRL_b
  lda #$00
  sta rtn_trk_a
  pla                       ; pull stuff from stack so we dont do title screen stuff anymore
  pla
  jmp title_loop_jmp        ; loop back if timer hi byte is less than 4 @$815F
:                           ; stop title screen and start demo routine next time we load up the screen
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  jsr disable_audio_channels
  lda #$00
  sta rtn_trk_a
  lda #$FF
  sta demo_status     ; title timed out, set demo_status with FF to start demo?
  rts
scroll_logo:
  lda x_scroll      ; starting from FE, roll the x-scroll down for the title to roll in from the left
  beq :+            ; branch down when x reaches 00
  dec x_scroll      ; decrement x-scroll twice for a speedy slide in
  dec x_scroll
  rts               ; we're done here until the transformers logo has finished sliding in
:
  inc subtitle_timer  ; start subtitle timer after finishing the title scroll-in
  lda subtitle_timer
  cmp #$0C            ; count the subtitle timer up to 0C before writing the next subtitle character/tile
  bcs :+              ; write next subtitle tile
  rts
:
  lda #$00                ; ready timer for next subtitle
  sta subtitle_timer      ; reset subtitle timer
  lda frame_counter_96  ; also acts as the subtitle tile locator
  cmp #$18              ; count up to 18 tiles of the subtitle then load the rest of the title screen text
  bcs :++
  tay
  lda #<subtitle_tbl
  sta $00               ; indirect addressing to @$D03C
  lda #>subtitle_tbl
  sta $01
  ldx #$01              ; load x with 01 to draw left and then right side of subtitle tiles
:
  tya
  lsr
  clc
  adc #$0A              ; offset subtitle towards the center of the screen 0A tiles
  sta $02
  lda #$22
  adc #$00
  sta $03
  jsr draw_subtitle
  dex
  bpl :-                ; loop back for right side of each subtitle
  tya
  sta frame_counter_96     ; store y into frame_counter_96 for next frame
  jsr play_subtitle_sound  ; @$D960
  rts
:
  lda #<hiscore_tbl      ; low byte of address for Hi-Score text table
  sta $00
  lda #>hiscore_tbl      ; high byte of address for Hi-Score text table @$D054
  sta $01
  jsr write_text  ; write "Hi-Score"
  jsr write_player
  lda #<takara_tbl      ; low byte of address for Takara text table @$D067
  sta $00
  lda #>takara_tbl      ; high byte of address for Takara text table @$D067
  sta $01
  jsr write_text  ; Write "©Takara 1986" 
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
draw_subtitle:
  lda $03
  sta PPU_ADDR        ; start at x position
  lda $02
  sta PPU_ADDR        ; start at y position
  lda ($00),Y         ; indirect addressing to the subtitle data within the title table @$D03C
  sta PPU_VRAM_IO     ; send tile to screen
  iny
  lda $02
  clc
  adc #$20
  sta $02             ; load the line below in y position
  lda $03
  adc #$00            ; this seems unnecessary********
  sta $03             
  sta PPU_ADDR        ; same x location as the tile above
  lda $02
  sta PPU_ADDR        ; load y location below the previous tile
  lda ($00),y
  sta PPU_VRAM_IO     ; load next tile to PPU data
  iny 
  rts
sel_sprite_rtn:
  lda sel_status        ; load which player is selected, 00 of FF
  bpl :+                ; branch if player 1
  jsr set_p1_sel_sprite
  lda #$B7                  ; load title sprite y position for player 2
  sta sprite1_y_pos         ; load y position to first sprite after score
  jmp enable_sel_sprite_PPU
:
  jsr set_p1_sel_sprite
enable_sel_sprite_PPU:
  lda #$1A        ; %0001 1010 sprite enable, background enable, background left column enabled
  sta ram_PPU_Mask
  sta PPU_MASK
  rts
set_p1_sel_sprite:
  ldx #$03
:
  lda cursor_tbl,X ;@$ce93
  sta sprite1_y_pos,X   ; set select sprite in ram for player 1
  dex
  bpl :-
  rts
cursor_tbl:
  .byte $A7,$8F,$00,$50       ; oam info for title screen cursor, yaddr, tile addr, attr, xaddr
titlescreen_input_check:
  lda controller_current
  and #$04
  bne :++                     ; branch if select is pushed at title
  lda controller_current
  and #$08 
  bne :+++                    ; branch if start is pushed at title
:
  rts                         ; return from subroutine because nothing was pushed at tile screen
:                             ; select is just pushed at tile screen
  lda controller_p1_last
  and #$04
  bne :--                     ; return from subroutine if select was pushed last frame
  lda sel_status
  eor #$FF                    ; swap 1 or 2 player modes in sel_status, 00 or FF
  sta sel_status
  rts
:                             ; start is just pushed at title screen
  lda #$80
  sta state                   ; state=80 means start is pushed at title screen
  rts
write_player:
  lda #$10              ; background pattern table $1000, sprite pattern table $0000, base nametable address $2400
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
  lda PPU_STATUS        ; reset PPU write flag
  lda #$22
  sta PPU_ADDR          ; set high byte of PPU address @22AC
  lda #$AC
  sta PPU_ADDR          ; set low byte of PPU address @22AC
  lda #$D1              ; draw '1' at start of '1 player'
  sta PPU_VRAM_IO
draw_player:            ; draw the 'player' part for '1 player' and '2 players' and wherever else need to be on screen
  lda #$20
  sta PPU_VRAM_IO       ; draw a space before player
  ldx #$00
:
  lda write_player_tbl,x
  sta PPU_VRAM_IO       ; store letter in PPU Data
  inx                   ; increment x to get next letter
  cpx #$06              ; write 6 letters of 'player'
  bcc :-
  rts

write_player_tbl:
  .byte $E9,$E5,$DA,$F2,$DE,$EB       ;"PLAYER"

; screen before stage starts stuff
write_stage_num:
  lda #$20              ; draw a space
  sta PPU_VRAM_IO
  lda current_level     ; check level
  lsr                   ; divide level by 2 to get the stage number, because bosses are the odd numbers
  cmp #$09              ; compare with $09
  bcc :+                ; branch if stage is 9 or below, because $09 is level 10 (level 1 is $00)
  lda #$D1              ; draw a '1' for level 10
  sta PPU_VRAM_IO
  lda #$FF              ; load FF to A, this is to make the second digit a 0, if needed
:
  clc
  adc #$D1              ; add the number to the level to select the level number, interesting way to make levels up to 10
  sta PPU_VRAM_IO
:
  rts
pre_stage_screen: ; @cf17
  lda current_level
  and #$01
  bne :-                ; return if we're on a boss
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003             ; load palette 3
  sta $8003
  lda #<palette_table_2 ; ready the palette address lo byte
  sta $00
  lda #>palette_table_2 ; ready the palette address hi byte @d354
  sta $01
  jsr send_palette_to_ram
  lda #<stage_text_tbl  ; low byte of stage text table address
  sta $00
  lda #>stage_text_tbl  ; high byte of stage text table address
  sta $01
  jsr write_text
  jsr write_stage_num
  lda #$21              ; write which player is up
  sta PPU_ADDR          ; load x location
  lda #$CB
  sta PPU_ADDR          ; load y location
  ldx #$D1              ; ready to write '1'
  lda which_player
  beq :+                ; branch if player 1
  inx                   ; increment x if player 2 to write 2
:
  stx PPU_VRAM_IO       ; write 1 or 2 depending on players^^
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
  sta plr_y_prog_lo
  sta plr_y_prog_hi
  sta plr_y_prog_pg
  sta plr_sprite_status
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
  beq :-                    ; loop until sound is finished playing? Until timer hi byte is 1
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
  jsr hex2dec
  lda #$22
  sta PPU_ADDR
  lda #$6E
  sta PPU_ADDR
  lda #$FA              ; draw an x for "number of lives x player sprite"
  sta PPU_VRAM_IO
  lda #$20              ; draw a space
  sta PPU_VRAM_IO
  lda $06
  and #$F0              ; get the first digit and write it to ppu data
  lsr
  lsr
  lsr
  lsr
  clc
  adc #$D0              ; add the 0 tile to the number of lives then write it to PPU data
  sta PPU_VRAM_IO
  lda $06
  and #$0F
  clc
  adc #$D0              ; get the second digit and add it to 0 then write it to PPU data
  sta PPU_VRAM_IO
  rts

title_tbl: ;CFDC-D075  Title Attribute tables
 	.byte $00,$00,$00,$00
  .byte $00,$00,$00,$00
  .byte $00,$00,$00,$00
  .byte $00,$00,$00,$00
  .byte $00,$00,$00,$00
  .byte $00,$00,$00,$00
  .byte $05,$05,$05,$05
  .byte $05,$05,$05,$01

  .byte $A0,$A0,$A0,$A0
  .byte $A0,$A0,$A0,$A0
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF   
title_palette_tbl:  ; @d01c
	.byte $0F,$30,$10,$02
  .byte $0F,$30,$10,$16
  .byte $0F,$30,$10,$16
  .byte $0F,$36,$16,$20
  .byte $0F,$20,$21,$16
  .byte $0F,$30,$21,$30
  .byte $0F,$30,$26,$30
  .byte $0F,$36,$07,$1C
subtitle_tbl:
	.byte $04,$06,$05,$07,$08,$0A,$09,$0B,$0C,$0E,$0D,$0F,$10,$12,$11,$13,$14,$16,$15,$17,$18,$1A,$19,$1B       ; subtitle tiles d03c
hiscore_tbl:
  .byte $22,$68,$07,$E1,$E2,$F5,$EC,$DC,$E8,$EB,$DE     ; 'HI-SCORE' @D054
stage_text_tbl:
  .byte $20,$EB,$04,$EC,$ED,$DA,$E0,$DE     ; x position, y position, length, "Stage" @D05F
takara_tbl:
  .byte $23,$4A,$0B,$F4,$ED,$DA,$E4,$DA,$EB,$DA,$20,$D1,$D9,$D8,$D6   ;"©TAKARA 1986"  @D067


; End screen stuff
rodimus_check:              ; this is where the end screen stuff starts
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003                 ; load chr bank 3
  sta $8003
  lda  rodimus_ram
  and #$FE
  eor #$FE
  beq :+            ; branch if we got all rodimus letters and rodimus isnt enabled
  jmp magnus_wins_no_rod    ; skip loading the rodimus stuff
:                   ; start of loading rodimus stuff
  lda rodimus_ram   
  lsr               ; shift right, if rodimus is activated there will be a carry
  bcs rodimus_wins        ; branch if rodimus is already enabled (if rodimus_ram = 01)
  lda #$FF
  sta rodimus_ram   ; if no carry, load FF to rodimus ram for activating rodimus next game runthrough
  lda #$06          ; write "YUKE RODIMUS !"
  sta $02           ; load y offset for fetching text 
  lda #<magnus_wins_rod
  sta $03           ; load low byte for address of end screen text
  lda #>magnus_wins_rod          ; @d1d0
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
  sta player_sprite ; load endscreen sprite
  jmp start_endscreen_timer
rodimus_wins:
  lda #$00
  sta rodimus_ram   ; reset rodimus letters
  lda #$01          ; write score
  sta $02
  lda #<congrats_end_text  ; low byte of rodimus ending text table
  sta $03
  lda #>congrats_end_text  ; high byte of rodimus ending text table @d26c
  sta $04
  lda #$23
  sta $05                 ; set text x location
  lda #$D0
  sta $06                 ; set text y location
  jsr fetch_text
  lda #$A8
  sta $0F               ; set y position for score
  lda #$C8
  sta $0E               ; set x position for score
  lda which_player
  bne plr_2_wins                 ; write player 2 score instead of 1
  jsr write_pl1_score_b ; @$88CF write pl1 score
  jmp plr_1_wins            ; skip writing player 2 score
plr_2_wins:
  jsr write_pl2_score_b
plr_1_wins:
  lda #$80              ; load sprite x position of 80
  sta plr_x_pos_hi      ; speed acts as the x position on the text screens
  lda #$90              ; y position of player sprite
  sta plr_y_pos_hi
  lda #$0B              ; load Magnus stage/end screen sprite
  sta player_sprite
  jmp start_endscreen_timer
magnus_wins_no_rod:
  lda #$07              ; write "destron wo.."
  sta $02
  lda #<normal_ending_text_tbl    ; normal ending table start, @d28c
  sta $03
  lda #>normal_ending_text_tbl    ; normal ending table start high byte
  sta $04
  lda #$23
  sta $05               ; set x location of line break
  lda #$C8
  sta $06               ; set y location of line break
  jsr fetch_text
  lda #$80              ; set sprite x position
  sta plr_x_pos_hi
  lda #$28              ; set sprite y position
  sta plr_y_pos_hi
  lda #$0E              ; load prime head
  sta player_sprite
start_endscreen_timer:
  lda #$00
  sta timer_lo_byte
  sta timer_hi_byte
  sta plr_y_prog_lo
  sta plr_y_prog_hi
  sta plr_y_prog_pg
  sta plr_y_pos_lo
  sta plr_x_pos_lo
  lda #$08
  sta rtn_trk_a
  jsr play_endscreen_music
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
endscreen_loop:
  lda controller_p1_current
  and #$08
  bne endscreen_exit        ; branch out if start is pushed
  lda timer_hi_byte
  cmp #$F0
  bcs endscreen_exit        ; branch out if timer is up, 0F at the hi byte is pretty long
  ldx #$20                  ; load white text
  lda timer_lo_byte
  and #$08
  bne flash_white_text      ; load $20 white to text_flash_pal_ram every 8 frames
  ldx #$16                  ; load $16 red to text_flash_pal_ram every other 8 frames
flash_white_text:
  stx text_flash_pal_ram
  lda timer_hi_byte
  cmp #$01
  bne endscreen_loop        ; loop back and check if controller pressed start on the second loop of the timer, only?***
  jsr flip_rodimus_ram      ; check if rodimus ram is FF, show magnus 
  jmp endscreen_loop        ; jump back and check for start press
endscreen_exit:
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
show_magnus: 
  lda magnus_pal_tbl2,Y     ; load magnus 2 pal tbl
  sta player_palette_ram,Y  ; store magnus palette to ram
  dey
  bpl show_magnus                    ; load 3 bytes of the palette colours
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
  lda #<palette_table_2 ; @d354
  sta $00
  lda #>palette_table_2
  sta $01
  jsr send_palette_to_ram
  lda $05
  sta PPU_ADDR
  lda $06
  sta PPU_ADDR
  ldx #$00
  lda #$FF
b_d1c5:
  sta PPU_VRAM_IO
  inx
  cpx #$08
  bcc b_d1c5
  jmp ppu_scroll

magnus_wins_rod: ; @$D1D0-D353
	;.byte $DE,$D1,$F3,$D1,$07,$D2,$1B,$D2,$32,$D2,$42,$D2,$53,$D2                                                     ; text lookup table for the following text, second ending
	.word magnus_wa
  .word tatakai_ni
  .word shikashi
  .word tatakai_ga
  .word sematte_iru
  .word yuke_rodimus
  .word attack_rodimuscomboy
magnus_wa:  ; 'MAGNUS WA SAIGO NO'      Magnus won the final battle
  .byte $21,$07,$11,$E6,$DA,$E0,$E7,$EE,$EC,$20,$F0,$DA,$20,$EC,$DA,$E2,$E0,$E8,$20,$E7,$E8
tatakai_ni: ; 'TATAKAI NI KATTA'
	.byte $21,$47,$10,$ED,$DA,$ED,$DA,$E4,$DA,$E2,$20,$E7,$E2,$20,$E4,$DA,$ED,$ED,$DA,$F6
shikashi:   ; 'SHIKASHI  ARATANA'       However, a new battle aproaches!
	.byte $21,$87,$10,$EC,$E1,$E2,$E4,$DA,$EC,$E1,$E2,$20,$20,$DA,$EB,$DA,$ED,$DA,$E7,$DA
tatakai_ga: ; 'TATAKAI GA MENOMAENI'
	.byte $21,$C7,$13,$ED,$DA,$ED,$DA,$E4,$DA,$E2,$20,$E0,$DA,$20,$E6,$DE,$E7,$E8,$E6,$DA,$DE,$E7,$E2
sematte_iru:; 'SEMATTE IRU !'
	.byte $22,$07,$0C,$EC,$DE,$E6,$DA,$ED,$ED,$DE,$20,$E2,$EB,$EE,$20,$F9
yuke_rodimus:; 'YUKE RODIMUS !'          Go, Rodimus!
	.byte $22,$67,$0D,$F2,$EE,$E4,$DE,$20,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$20,$F9
attack_rodimuscomboy:; 'ATTACK! RODIMUSCOMVOY!'  Attack! Rodimus Convoy!
	.byte $22,$C6,$15,$DA,$ED,$ED,$DA,$DC,$E4,$F9,$20,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$DC,$E8,$E6,$EF,$E8,$F2,$F9        


congrats_end_text: ; @d26c
	.word congrats    ;.byte $70,$D2,$82,$D2
  .word score_text
congrats:  ; @d270 ; 'CONGRATULATION!'                                
	.byte $21,$49,$0E,$DC,$E8,$E7,$E0,$EB,$DA,$ED,$EE,$E5,$DA,$ED,$E2,$E8,$E7,$F9
score_text:  ; @ d282 ; 'SCORE -'
	.byte $22,$A9,$06,$EC,$DC,$E8,$EB,$DE,$20,$F5


normal_ending_text_tbl:  ; @d28c
	;.byte $9C,$D2,$AC,$D2,$C2,$D2,$D4,$D2,$EE,$D2,$07,$D3,$20,$D3,$3B,$D3  ; text lookup table for the following text, normal ending
  .word kinkyu_shirei
  .word destoron_ga
  .word chikara_de
  .word kyouryokuni
  .word rodimus_no
  .word kyubu_wo
  .word destoron_wo
  .word scramble_um
kinkyu_shirei:     ; 'KINKYU SHIREI'           Emergency order
	.byte $20,$E9,$0C,$E4,$E2,$E7,$E4,$F2,$EE,$20,$EC,$E1,$E2,$EB,$DE,$E2
destoron_ga:      ; 'DESTORON GA ARATANA'     Destron has revived and become even more powerful, using a new power
	.byte $21,$46,$12,$DD,$DE,$EC,$ED,$E8,$EB,$E8,$E7,$20,$E0,$DA,$20,$DA,$EB,$DA,$ED,$DA,$E7,$DA
chikara_de:       ; 'CHIKARA DE YORI'
	.byte $21,$86,$0E,$DC,$E1,$E2,$E4,$DA,$EB,$DA,$20,$DD,$DE,$20,$F2,$E8,$EB,$E2
kyouryokuni:      ; 'KYOURYOKUNI YOMIGAETTA.'
	.byte $21,$C6,$16,$E4,$F2,$E8,$EE,$EB,$F2,$E8,$E4,$EE,$E7,$E2,$20,$F2,$E8,$E6,$E2,$E0,$DA,$DE,$ED,$ED,$DA,$F6
rodimus_no:       ; ''RODIMUS~ NO ENERUGON-'  Retrieve Rodimus's energon cubes and destroy Destron once more
	.byte $22,$06,$15,$F7,$EB,$E8,$DD,$E2,$E6,$EE,$EC,$F8,$20,$E7,$E8,$20,$DE,$E7,$DE,$EB,$EE,$E0,$E8,$E7,$F5
kyubu_wo:         ; 'KYUBU WO TORI FUTATABI'
	.byte $22,$46,$15,$E4,$F2,$EE,$DB,$EE,$20,$F0,$E8,$20,$ED,$E8,$EB,$E2,$20,$DF,$EE,$ED,$DA,$ED,$DA,$DB,$E2
destoron_wo:      ; 'DESTORON WO GEKIHA SEYO'
	.byte $22,$86,$17,$DD,$DE,$EC,$ED,$E8,$EB,$E8,$E7,$20,$F0,$E8,$20,$E0,$DE,$E4,$E2,$E1,$DA,$20,$EC,$DE,$F2,$E8,$F6
scramble_um:      ; 'SCRAMBLE! ULTRAMAGNUS!'  Sramble! Ultra Magnus!
	.byte $23,$06,$15,$EC,$DC,$EB,$DA,$E6,$DB,$E5,$DE,$F9,$20,$EE,$E5,$ED,$EB,$DA,$E6,$DA,$E0,$E7,$EE,$EC,$F9

palette_table_2:    ; @$D354-D373
	.byte $0F,$0F,$0F,$20
	.byte $0F,$0F,$0F,$0F
	.byte $0F,$0F,$0F,$0F
	.byte $0F,$0F,$0F,$20
	.byte $0F
magnus_pal_tbl2:
  .byte $20,$21,$16,$0F
	.byte $20,$10,$00,$0F
magnus_pal_tbl:
  .byte $20,$21,$16
	.byte $0F,$20,$10,$00

; Game Over screen stuff
game_over_screen:
  jsr clear_screen
  jsr clear_oam_ram
  lda $8003
  sta $8003               ; load CHR bank 3
  lda #$00
  sta timer_lo_byte       ; reset timer
  sta timer_hi_byte
  sta state               ; reset state
  sta code_press          ; reset code_press to 00
  lda #$08
  sta rtn_trk_a
  lda #$0A                ; ********not sure what that means, maybe no sprite or an unused sprite. 0b is front facing magnus... 
  sta player_sprite
  lda #<palette_table_2     ; low byte for palette_table_2 address @$D354-D373
  sta $00
  lda #>palette_table_2     ; high byte for palette_table_2 address @$D354-D373
  sta $01
  jsr send_palette_to_ram
  lda #<game_over_tbl              ; low byte for game_over_tbl address @$D3C9 - D3D3
  sta $00
  lda #>game_over_tbl              ; high byte for game_over_tbl address @$D3C9 - D3D3
  sta $01
  jsr write_text              ; write "GAME OVER" to screen
  jsr ppu_scroll
  jsr play_game_over_sound    ; Play game over sound
  jsr set_PPU_CTRL_a
  jsr set_PPU_MASK_a
check_code_press:             ; Check for A+B+Start code press at Game Over screen
  lda controller_p1_last      ; check controller inputs
  eor #$0B                    ; A+B+Start pressed together?
  bne no_code_pressed         ; branch if they arn't pressed
  lda #$FF                    ; update code_press in RAM to FF when code is pressed
  sta code_press              ; store to RAM
no_code_pressed:
  lda timer_hi_byte           ; check timer high byte
  beq check_code_press        ; loop back if as long as timer_hi_byte is 00, continue when it hits 01
  jsr set_PPU_MASK_b
  jsr set_PPU_CTRL_b
  rts

game_over_tbl:               ; @$D3C9 - D3D3
  .byte $21,$6B,$09,$E0,$DA,$E6,$DE,$20,$20,$E8,$EF,$DE,$EB       ; "GAME OVER"

; Endscreen/Brainwave stuff
start_pushed_at_title:
  jsr reset_current_player_ram    ; @$8352
  lda #$0E
  sta player_sprite               ; load prime head
  lda #$04
  sta rtn_trk_a
  lda #$00
  sta stage_orientation
  sta state
  sta plr_x_prog_lo
  sta plr_x_prog_hi
  sta plr_x_prog_pg
  lda #$38
  sta plr_y_pos_hi
  lda #$80
  sta plr_x_pos_hi                 ; used for sprite x position
  lda #$01
  sta stage_boss
  lda #$15
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
  lda #<title_palette_tbl   ; @d01c
  sta $00     ; load indirect address to title screen palette data @d01c
  lda #>title_palette_tbl
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
:
  lda #$00
  sta eny_x_spd_lo,x
  lda $00
  sta eny_x_spd_hi,x
  lda #$00
  sta eny_y_spd_lo,x
  lda $01
  sta eny_y_spd_hi,x
  lda $00
  clc
  adc #$02
  sta $00   ; set x speed to 0 for middle bullet, then 02 for right bullet
  txa       ; store 00 to a
  clc
  adc #$10  ; add 10 for the next line in ram
  tax       ; set x with +10
  dey        
  bpl :-    ; loop back for 2 more brainwaves
  rts

;===================================================
; Audio stuff

disable_audio_channels:
  txa
  pha
  tya
  pha                     ; store x and y to stack
  ldx #$00                ; reset x to 0
  stx APU_CHANCTRL        ; disable all channels %---D NT21
  stx apu_status_ram_6    ; store to apu_status_ram_6
:                         ; d49a
  lda #$FF                ; Load $FF to first 8 tracks channel_status in RAM
  sta trk_status,X       ; Store ff to audio status
  txa
  clc
  adc #$10                ; load next line in x by adding 10
  tax
  cmp #$80                ; disable first 8 rows in ram from $300
  bne :-
  pla
  tay
  pla
  tax                     ; restore x and y from stack and rts
  rts

audio_rtn:
  lda #$00
  sta apu_status_ch0      ; store 0 to apu_status_ch0
  sta apu_status_ch1      ; store 0 to apu_status_ch1
  sta apu_status_ch2      ; store 0 to apu_status_ch2
  sta apu_status_ch3      ; store 0 to apu_status_ch3
chk_audio_ram:            ; b_d4bb start of checking track in 300 ram block
  tax
  lda trk_ch,X            ; load which audio channel from trk_ch
  sta apu_current_ch_ram  ; store channel to apu_current_ch_ram
  tay                     ; use y register to index the channel
  cmp #$02
  bcc :++                 ; branch if its channel 00 or 01, pulse 1 and pulse 2
  beq :+                  ; branch if its a triangle
  ora #$40                ; or with 40 if more than 02
  bne :++                 ; branch if more than 02, ie, 03=>43
:
  ora #$80                ; or with 80, ie 02=>82
:
  sta apu_status_ram_5    ; store channel to status_ram_5 p1= 00, p2=00, t=82, n=43
  lda trk_status,X        ; load track status
  cmp #$FF                ; check if its disabled
  beq next_aud_ram_track  ; branch to next track if this track is disabled
  lda apu_status_ch0,Y    ; load the status of channel from ram
  clc
  adc #$01                ; increment channel status ram
  sta apu_status_ch0,Y    ; store in channel status ram
  lda trk_status,X        ; load audio track status
  beq start_new_track     ; branch if status is 0, after track was just loaded to ram
  inc audio_ram_C,X       ; increment audio_ram_C
  lda audio_ram_C,X       ; frames since the last actual note was played
  sec
  sbc audio_ram_B,X       ; subtract audio_ram_C - audio_ram_B
  bcc :+                  ; branch if carry is cleared
  sta audio_ram_C,X       ; store difference in audio_ram_C if no carry
:
  dec trk_timer,X         ; decrement note trk_timer
  bpl :+                  ; branch if positive or 00
  lda trk_inter,X         ; load note time interval
  sta trk_timer,X         ; store to note interval counter
  jsr inc_dec_volume
  dec trk_note_len,X      ; decrement note length
  beq next_sample_notes   ; branch if note length reaches 0 to get next note
:                         ; b_d509
  jsr set_apu_ctrl_chk_ch
  jmp next_aud_ram_track
next_sample_notes:
  jsr get_sample_notes
next_aud_ram_track:
  txa                     ; transfer x to a
  clc
  adc #$10                ; add 10 to index
  cmp #$80
  bne chk_audio_ram       ; loop back until we've covered all ram tracks
  rts                     ; rts when we've dont all tracks
start_new_track:          ; branch here if track status is 00, when track was just loaded to ram
  lda trk_addr_lo,X
  sta $10
  lda trk_addr_hi,X
  sta $11                 ; get audio sound address from track
  ldy #$00
  lda ($10),y             ; get the first byte, which is the note length
  and #$0f                ; get only the lower 4 bits
  sta trk_inter,X         ; store note length 
  sta trk_timer,X         ; store note length to counter
  iny                     ; increment y to next byte
  jsr get_sample_duty     ; store duty to apu_status_ram_7 0=0, 1=40, 2=80, 3=C0
  iny                     ; increment y to 3rd byte
  lda ($10),Y
  ora apu_status_ram_7    ; or 3rd byte with apu_status_ram_7
  sta trk_apu_ctrl,X      ; store in trk_apu_ctrl,X
  iny                     ; increment y to 4th byte
  lda ($10),Y
  sta trk_sweep,X         ; store 4th byte to trk_sweep,X
  lda #$00
  sta trk_loop_cnt,X
  sta audio_ram_A,X
  sta trk_cres_length,X   ; clear audio_ram 9,A and D
  lda #$02
  sta trk_status,X        ; store 02 to audio ram status
  bne next_sample_notes   ; why bne instead of jmp? less cycles? less bytes in program?
note_flag_Dx:             ; increase volume gradually flag
  and #$0f                ; get lower 4 bits only
  bpl :+
note_flag_Ex:             ; lower volume gradually flag
  and #$0f
  eor #$FF
  clc
  adc #$01                ; flip bits
:
  bit apu_status_ram_5
  bmi :+                  ; branch if triangle
  sta trk_cres_length,X
  lda ($10),Y
  sta trk_cres_inter,X
  sta trk_cres_timer,X
:
  jmp next_sample_note
get_sample_notes:
  lda trk_status,X
  sta $10
  ldy #$00                ; start with 5th byte from audio table, but set y to 00
  sty $11
  asl $10
  rol $11
  lda trk_addr_lo,X
  adc $10
  sta $10
  lda trk_addr_hi,X
  adc $11
  sta $11
  lda ($10),Y           ; load the note/flag
  iny
  cmp #$F0              ; check for flag bytes
  bcs note_flag_Fx      ; branch if terminator flag is found
  cmp #$E0          
  bcs note_flag_Ex      ; pause sound has EF, so we branch here
  cmp #$D0
  bcs note_flag_Dx      ; branch if terminator is Dx
  cmp #$C0
  bcs note_flag_Cx      ; branch if note is Cx
  cmp #$B0
  bcs note_flag_Bx      ; branch if repeat flag is found
  cmp #$A0
  bcs note_flag_Ax      ; branch if sweep flag is set
note_flag_Fx:           ; check terminator
  cmp #$FE
  beq next_sample_note
  bcs end_sample_track  ; branch if terminator is FF
  jsr get_note_value    ; get the value of the note and handle rests
  inc trk_status,X
  rts
end_sample_track:
  sta trk_status,X
  jmp play_nothing
note_flag_Ax:
  bne :+                  ; branch if note flag not A0 to set apu channel ctrl without duty
  bit apu_status_ram_5
  bmi next_sample_note    ; branch if triangle
  lda trk_apu_ctrl,X
  and #$C0                ; get duty from track ram but clear the rest
  ora ($10),Y
  jmp apu_status_rtn_2a
:                         ; branch here for note flag A1 to set sweep
  cmp #$A1
  bne :+
  lda ($10),Y
  sta trk_sweep,X         ; A1 is set track sweep with 2nd byte
  jmp next_sample_note
:                         ; branch here for note flag A2-AF to set duty
  jsr get_sample_duty
  bcs apu_status_rtn_2a   ; okay, we replace the entire apu channel ctrl with %cvvv vFdd constant volume (c), volume/envelops(v), set entire apu ch ctrl(F), new duty(d)
  lda trk_apu_ctrl,X
  and #$1F                ; save lower bytes but clear the duty %ddle nnnn
  ora apu_status_ram_7    ; add the duty from the second byte
apu_status_rtn_2a:
  sta trk_apu_ctrl,X
next_sample_note:
  inc trk_status,X
  jmp get_sample_notes
note_flag_Bx:                 ; branch here for Bx flags for repreating: Bx dd > repleat flag (B), number of loops F for infinite(x),second byte is how many notes to go back (or forwards)
  and #$0F
  cmp #$0F
  beq dec_note_counter        ; branch if repeater is BF for infinite looping
  dec trk_loop_cnt,X          ; decrement number of loops
  beq next_sample_note
  bpl dec_note_counter
  sta trk_loop_cnt,X          ; store number of loops to track loop counter
dec_note_counter:             ; check byte after repeater
  lda ($10),Y
  clc
  adc trk_status,X      ; go back that many notes
  sta trk_status,X
  jmp get_sample_notes
note_flag_Cx:           ; branch here if note flag is Cx
  and #$0F              ; get lower 4 bits
  sta apu_status_ram_7  ; store lower 4 bits in apu_status_ram_7
  bit apu_status_ram_5
  bmi next_sample_note   ; branch if triangle
  lda trk_apu_ctrl,X
  and #$10
  beq next_sample_note
  lda ($10),Y           ; get second byte
  sta audio_ram_B,X     ; store in audio_ram_B
  lda apu_status_ram_7
  sta audio_ram_A,X     ; store the x value from Cx to audio_ram_A
  bpl next_sample_note
get_sample_duty:
  bit apu_status_ram_5 
  bmi get_tri_lin_counter   ; branch if triangle
  lda ($10),Y               ; get duty for this sound from sound sample table
  and #$03                  ; and %0000 0011
  ror                       ; ror = 0000 0001 +c
  ror                       ; ror = 1000 0000 +c
  ror                       ; ror = 1100 0000
  sta apu_status_ram_7      ; shift duty into high bits with 0=0, 1=40, 2=80, 3=C0
  rts
get_tri_lin_counter:
  lda ($10),Y
  and #$7F                  ; get triangle linear counter load for $4008	CRRR RRRR	Length counter halt / linear counter control (C), linear counter load (R)
  sta apu_status_ram_7
  sec
  rts
get_note_value:
  bit apu_status_ram_5      ; channel num with the offset bit
  bvs ready_noise_note           ; branch here for noise channel
  pha                       ; push note to stack
  and #$0f                  ; get lower 4 bits
  cmp #$0C                  ; branch if rest flag
  bcs set_rest_length         ; branch if note is 0C or above
  asl
  tay
  lda note_tbl,y            ;#$D7C0,y 
  sta apu_status_ram_7
  lda note_tbl+1,y          ;
  sta apu_status_ram_8
  pla
  and #$F0                  ; check for octave
  beq apu_set_note      ; branch if lower octave, no octave to process
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
apu_set_note:
  ldy #$01
  lda ($10),Y                 ; get length of note
  sta trk_note_len,X          ; store length
  lda #$00
  sta audio_ram_C,X           ; reset audio_ram_C
  jsr chk_aud_ch_status
  lda apu_status_ram_8
  pha
  lda apu_status_ram_7
  pha                         ; push note value to stack
  lda ch_activate_tbl,y           ; load #$02 from table at index 01 for pulse 2 channel
  ora apu_status_ram_6
  jsr set_apu_channel         ; enable pulse 2 channel
  jsr set_apu_ctrl            ; set pulse 2 ctrl
  lda trk_sweep,X
  sta APU_PULSE1RAMP, y       ; send to SQ1/SQ2 sweep @$4001/$4005 eppp nsss   enable sweep, period, negative, shift
  pla                         ; pull note value low byte from stack
  sta APU_PULSE1FTUNE,Y       ; send to SQ1/SQ2 LoByte @$4002 %pppp pppp
  pla                         ; pull note value high byte from stack
  and #$07                    ; get lower 3 bits %llll lppp
  ora #$08                    ; set length to 1
  sta APU_PULSE1CTUNE,Y       ;send to SQ1/SQ2 HiByte @$4003
  rts
ready_noise_note:
  cmp #$10
  bcs :+
  sta apu_status_ram_7
  lda #$00
  sta apu_status_ram_8
  beq apu_set_note
set_rest_length:
  pla                     ; pull (rest) note from stack
:
  ldy #$01
  lda ($10),Y
  sta trk_note_len,X
play_nothing:             ; jump here if 1F, rest note
  jsr chk_aud_ch_status
  lda ch_mute_tbl,y      ; @$D7E7 get rest value from table
  and apu_status_ram_6
  jmp set_apu_channel
set_apu_ctrl_chk_ch:
  jsr chk_aud_ch_status
set_apu_ctrl:
  cpy #$02
  beq :+                    ; branch if triangle wave
  lda audio_ram_A,X
  bne :++                   ; branch if audio_ram_A is not 00
  tya
  asl
  asl                       ; shift channel left 4 times for APU_PULSE2CTRL at $4004
  tay                       ; transfer a to x index APU
  lda trk_apu_ctrl,X
  and #$10                  ; and w/ %0001 0000
  asl                       ; asl to %0010 0000
  ora trk_apu_ctrl,X         ; if envelope is disabled, then also disable envelope length
  sta APU_PULSE1CTRL,Y      ; send to sq1 vol @$4000/$4004 %ddle nnnn  duty, loop env/disable length, env disable, vol/env period
  rts
:                           ; branch here if triangle wave
  lda trk_apu_ctrl,X
  sta APU_TRICTRL1          ; send to tri_linear @$4008
  tya
  asl
  asl
  tay                       ; multiply channel by 4 and store back in y
  rts
;============================================
; not called, because there isnt any Cx flags being used
:                           ; this area doesnt get called, i dont think
  sec
  sbc #$01
  asl
  asl
  asl
  pha
  lda audio_ram_C,X
  sta apu_status_ram_7
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
  lda trk_apu_ctrl,X
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
  lda apu_current_ch_ram
  asl
  asl
  tay
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lsr apu_status_ram_8
  lda trk_apu_ctrl,X
  and #$C0
  ora #$30
  ora apu_status_ram_8
  sta APU_PULSE1CTRL,Y        ; send to sq1 vol
  rts

; not called
;==============================================

chk_aud_ch_status:
  ldy apu_current_ch_ram
  lda apu_status_ch0,Y        ; load channel status
  cmp #$01                    ; compare 01  
  beq :+                      ; branch if channel status is 01
  pla
  pla                         ; pull twice from stack because the channel is disabled and we're done
:
  rts
inc_dec_volume:
  bit apu_status_ram_5
  bmi :+                      ; branch out if negative, triangle wave
  lda trk_cres_length,X       ; check timer left on crescenco
  beq :+                      ; branch out if crescendo length timer is 0
  dec trk_cres_timer,X        ; decrement crescendo interval timer
  bne :+                      ; branch out unless vol interval timer is 0
  lda trk_cres_inter,X
  sta trk_cres_timer,X        ; restore timer
  lda trk_apu_ctrl,X
  and #$1F                    ; get volume from trk_apu_ctrl
  sta apu_status_ram_7
  and #$10
  beq :+                      ; branch out if trk_apu_ctrl doesnt have 4bit set %---c ----
  lda trk_cres_length,X
  bmi :++                     ; branch to lower volume if trk_cres_length is negative and increment up to 00
  dec trk_cres_length,X
  lda apu_status_ram_7
  cmp #$1F                    ; check if volume is maxed out
  beq :+                      ; branch out if volume is maxed out
  inc trk_apu_ctrl,X          ; raise volume
:
  rts
:
  inc trk_cres_length,X       ; increment trk_cres_length
  lda apu_status_ram_7
  cmp #$10                    ; check if volume bottomed out already
  beq :--                     ; branch out if volume is already 0 
  dec trk_apu_ctrl,x          ; lower volume
  rts


note_tbl:                ; @$D7C0-D7D7 note table, 20 is middle C
  .byte $AE,$06   ; 00 C
  .byte $4E,$06   ; 01 C#
  .byte $F4,$05   ; 02 D
  .byte $9E,$05   ; 03 D#
  .byte $4D,$05   ; 04 E
  .byte $01,$05   ; 05 F
  .byte $B9,$04   ; 06 F#
  .byte $75,$04   ; 07 G
  .byte $35,$04   ; 08 G#
  .byte $F9,$03   ; 09 A
  .byte $C0,$03   ; 0A A#
  .byte $8A,$03   ; 0B B
set_apu_channel:
  sta apu_status_ram_6      ; which audio channel
  bit demo_status
  bmi :+                    ; rts if demo_status is negative
  sta APU_CHANCTRL          ; send channel to apu
:
  rts

ch_activate_tbl:            ; @$D7E3-D832 %0000 0001, %0000 0010, %0000 0100, %0000 1000
	.byte $01,$02,$04,$08     ; bits for APU_STATUS: Pulse 1, Pulse 2, Triangle, Noise (no DMC?)
ch_mute_tbl:                ; @$D7E7      %0000 1110, %0000 1101, %0000 1011, %0000 0111
  .byte $0E,$0D,$0B,$07     ; rest for pulse 1, pulse 2, triangle, noise
audio_tbl_1b:               ; @$D7EB not used??
  .byte $FE,$DC,$BA,$98,$76,$54,$32,$10,$01,$23,$45,$67,$89,$AB,$CD,$EF
  .byte $FE,$DC,$BA,$98,$89,$AB,$CD,$EF,$89,$AB,$CD,$EF
  .byte $FE,$DC,$BA,$98,$FD,$B9,$75,$31,$EC,$A8,$64,$20
  .byte $FE,$DC,$CD,$ED,$CA,$86,$42,$10
  .byte $FD,$B9,$AB,$97,$65,$43,$21,$10,$44,$44,$44,$46,$67,$8A,$CF,$B8,$FF,$A8,$FF,$A8,$77,$66,$55,$42


load_audio_ram:   ; ready the sample info to an audio track in ram
  sta $12         ; store sound index for sound table
  asl             ; shift left...
  clc
  adc $12         ; add again, so we multiply a by 3 and get the line of the address for the sound table
  tay             ; transfrer 06 to y, which will point to the first jump point for magnus' jump sound
  lda sample_jmp_tbl,Y          ; @$DA1E low byte of address
  sta $12                         ; store low byte in $12
  lda sample_jmp_tbl+1,Y        ; @$DA1F high byte of address
  sta $13                         ; store high byte in $13
  lda sample_jmp_tbl+2,Y        ; @$DA20 some low value between 0 and 3
  sta $14                         ; store 3rd value, channel, into $14
  txa                             ; transfer ram slot in x to a, which is 05 (04)
  asl
  asl
  asl
  asl             ; shift left 4 times so we go to that audio track in ram
  clc             ; redundant?
  adc #$00        ; redundant? I guess there may be a case where theres an offset..
  sta $15         ; store audio track index to $15
  lda #$00        ; why not just load #03? I guess if it might roll over to 400 block of ram, but not likely
  adc #$03        
  sta $16         ; store 03 to $16 as high byte of audio track ram
  ldy #$02        ; make y=2 for sound address low byte
  lda $12         ; $12 should be the low byte of the jump sound address
  sta ($15),Y     ; $15,Y should be 03x2
  ldy #$03        ; make y=3 for sound address high byte
  lda $13         ; load high byte of sound address
  sta ($15),Y     ; store it to 03x3
  ldy #$01        ; make y=1 for audio channel
  lda $14         ; load the channel byte from the table
  sta ($15),Y     ; to 03x1
  ldy #$00        ; make y=0 for audio track status
  lda #$00        ; make a=0
  sta ($15),Y     ; store 00 to 0350: shouldlook like $00 $01 $a8 $da (0340 $00 $03 $af $da)
  rts
store_ind_17_18:
  stx $17
  sty $18
  rts
load_ind_17_18:
  ldx $17
  ldy $18
  rts
play_stage_music:
  lda current_level
  cmp #$14
  bcs :++             ; branch on stage 14 and up
  lsr
  bcs :+              ; branch to boss music if its an odd number
  lda #$00
  ldx #$06
  jsr load_audio_ram
  lda #$01
  ldx #$07
  jmp load_audio_ram
:                     ; boss music
  lda #$0D 
  ldx #$06
  jsr load_audio_ram
  lda #$0E
  ldx #$07
  jmp load_audio_ram
:                     ; sideroom music
  sec
  sbc #$14
  tax
  lda audio_jump_tbl,x
  sta $00
  lda audio_jump_tbl+1,x
  sta $01
  jmp ($0000)
audio_jump_tbl:
  .word play_sideroom_music
  .word play_sideroom_music               ; .byte <play_sideroom_music,>play_sideroom_music
  .word play_guardian_room_music          ; .byte <play_guardian_room_music,>play_guardian_room_music
  .word play_guardian_room_music          ; .byte <play_guardian_room_music,>play_guardian_room_music
  .word play_warp_room_music              ; .byte <play_warp_room_music,>play_warp_room_music
play_sideroom_music:
  lda #$0f                      ; indexed location on table
  ldx #$06                      ; audio ram track
  jsr load_audio_ram
  lda #$10
  ldx #$07
  jmp load_audio_ram
play_guardian_room_music:
  lda #$15
  ldx #$06
  jsr load_audio_ram
  lda #$16
  ldx #$07
  jmp load_audio_ram
play_warp_room_music:
  lda #$17
  ldx #$06
  jmp load_audio_ram
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
play_explosion_sound:
  jsr store_ind_17_18
  lda #$0B
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_enemy_damage_sound:
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
play_endscreen_music:
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
play_azak_sound:
  jsr store_ind_17_18
  lda #$25
  ldx #$01
  jsr load_audio_ram
  lda #$26
  ldx #$04
  jsr load_audio_ram
  jmp load_ind_17_18
play_boss_wpn_sound:
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
play_barrier_music:
  jsr store_ind_17_18
  lda #$2C
  ldx #$06
  jsr load_audio_ram
  lda #$2D
  ldx #$07
  jsr load_audio_ram
  jmp load_ind_17_18
sample_jmp_tbl:             ; @DA1E
  .word aud_stage_music_a   ; .byte $CC,$DB,$00  stage music.
    .byte $00
  .word aud_stage_music_b   ; .byte $04,$DC,$02  stage music.2
    .byte $02
  .word magnus_jump_sound_1 ; .byte $A8,$DA,$01  magnus jump sound.
    .byte $01
	.word magnus_jump_sound_2 ; .byte $AF,$DA,$03  magnus jump sound.2
    .byte $03
	.word samp_magnus_bullet  ; .byte $C8,$DA,$01  magnus bullet sound./ boss explosion sound.
    .byte $01
  .word samp_boss_exp       ; .byte $D7,$DA,$03  boss main explosion sound (gets repeated on trypticon defeat)
    .byte $03
  .word samp_transform      ; .byte $E0,$DA,$01  magnus transform sound
    .byte $01
  .word samp_tf2010_p1      ; .byte $28,$DC,$00     ; end of subtitle.  TF 2010 theme
    .byte $00
  .word samp_tf2010_p2      ; .byte $D7,$DC,$01     ; end of subtitle.2
    .byte $01
	.word samp_tf2010_t       ; .byte $3C,$DD,$02     ; end of subtitle.3
    .byte $02
	.word samp_tf2010_n       ; .byte $99,$DD,$03     ; end of subtitle.4
    .byte $03
	.word samp_magnus_exp     ; .byte $03,$DB,$03     ; magnus explostion sound.2 / boss explosion sound.2  / enemy second explosion sound
    .byte $03
  .word samp_enemy_hit      ; .byte $12,$DB,$01     ; enemy damage sound
    .byte $01
  .word samp_boss_p1        ; .byte $90,$DB,$00     ; boss music.
    .byte $00
  .word samp_boss_t         ; .byte $B6,$DB,$02     ; boss music.2
    .byte $02
  .word samp_sideroom_p1    ; .byte $E6,$DD,$00     ; sideroom music.
    .byte $00
  .word samp_sideroom_t     ; .byte $2C,$DE,$02     ; sideroom music.2
    .byte $02
	.word aud_game_over_a     ; .byte $54,$80,$00     ; 11 game over a @$8054
    .byte $00
	.word aud_game_over_b     ; .byte $73,$80,$01     ; 12 game over b @$8073
    .byte $01
	.word aud_game_over_c     ; .byte $8A,$80,$02     ; 13 game over c @$808A
    .byte $02
	.word aud_game_over_d     ; .byte $A1,$80,$03     ; 14 tftheme/game over d @$80A1
    .byte $03
	.word samp_guardian_p1    ; .byte $54,$DE,$00     ; guardian room music.
    .byte $00
	.word samp_guardian_t     ; .byte $76,$DE,$02     ; guardian room music.2
    .byte $02
	.word aud_rod_endscreen   ; .byte $B8,$80,$01     ; rodimus endscreen @$80B8 / bumblebee screen
    .byte $01
  .word aud_subtitle_a      ; .byte $D6,$80,$03     ; Subtitle sound a @$80D6
    .byte $03
	.word aud_subtitle_b      ; .byte $DD,$80,$01     ; Subtitle sound b @$80DD
    .byte $01
	.word aud_subtitle_c      ; .byte $E4,$80,$01     ; Subtitle sound c @$80E4 / Enemy explosion sound
    .byte $01
	.word samp_endscreen_p1   ; .byte $AC,$DE,$00     ; endscreen music.
    .byte $00
	.word samp_endscreen_p2   ; .byte $02,$DF,$01     ; endscreen music.2
    .byte $01
	.word samp_endscreen_t    ; .byte $58,$DF,$02     ; endscreen music.3
    .byte $02
	.word samp_endscreen_n    ; .byte $A0,$DF,$03     ; endscreen music.4
    .byte $03
	.word aud_tf_insig_a      ; .byte $04,$80,$00     ; TF insignia flip sound info a @$8004
    .byte $00
	.word aud_tf_insig_b      ; .byte $13,$80,$01     ; TF insignia flip sound info b @$8013
    .byte $01
	.word aud_tf_insig_c      ; .byte $24,$80,$02     ; TF insignia flip sound info c @$8024
    .byte $02
	.word aud_tf_insig_d      ; .byte $45,$80,$03     ; TF insignia flip sound info d @$8045
    .byte $03
	.word samp_brainwave      ; .byte $19,$DB,$00     ; brainwave sounds
    .byte $00
  .word samp_unknown_p2     ; .byte $20,$DB,$01
    .byte $01
	.word samp_azak_p2        ; .byte $52,$DB,$01     ; Azak sound.
    .byte $01
	.word samp_azak_t         ; .byte $61,$DB,$03     ; Azak sound.2
    .byte $03
	.word samp_boss_wpn_p2    ; .byte $70,$DB,$01     ; sideroom sound.   / boss weapon sound.
    .byte $01
	.word samp_boss_wpn_n     ; .byte $77,$DB,$03     ; sideroom sound.2  / boss weapon sound.2
    .byte $03
	.word samp_magnus_exp_p2  ; .byte $27,$DB,$01     ; magnus explosion sound.
    .byte $01
  .word samp_powerup        ; .byte $36,$DB,$01     ; powerup sound / rodimus letter sound
    .byte $01
  .word samp_pause_p1       ; .byte $45,$DB,$01     ; pause sound
	  .byte $01
  .word samp_barrier_p1     ; .byte $BA,$DF,$00     ; barrier powerup music.
    .byte $00
	.word samp_barrier_t      ; .byte $02,$E0,$02     ; barrier powerup music.2
    .byte $02

;===============================
; sample tables
; first 4 bytes are the sample info:
;   note length %---- iiii, duty cycle %---- --dd, volume %--?c vvvv, sweep $eppp nsss
; the intention for the upper 4 bits of the first byte was for the channel, but wasnt used because the channel is called before
; sweep 7bit is the sweep enable flag, 3bit is 0=up or 1=down, bits 2-0 is the shift counter (number of bits)
; rest of the bytes are notes, note lengths and flags
; A0 sets the volume in apu ctrl with the second byte, without setting the duty, the duty is plulled from ram
; A1 sets the sweep for the channel with the second byte
; A2-F sets entire apu channel ctrl byte with second byte %cvvv vFdd where F is the flag to set the entire byte, duty (d), volume(v),constant volume(c)
; Bx is a repeat flag, byte after is how many notes to go back, ie B7 FE is go back 2 notes and repeat 8 times
; BF repeat infinite times
; Cx
; Fx is a terminator flag
; FE go to next note by incrementing trk_status
; FF end sound by storing FF to trk_status
; notes 20=C4, 22=D4, 24=E4. 25=F4, 27=G4, 29=A4, 2B=B4
; noise 10 or more is a rest
magnus_jump_sound_1:      ; magnus jump sound. @daa8 pulse 2
.byte $10,$01,$0F,$8B     ; fastest note speed, 25% duty, %--lc 1111 volume, sweep of %1000 1011
.byte $59,$08,$FF         ; A7, held for 8 note lengths
magnus_jump_sound_2:      ; magnus jump sound.2 @daaf noise channel
.byte $30,$00,$1F,$00     ; fastest time, 0% duty, hold max volume, no sweep
.byte $EF,$01             ; decrement volume every note
.byte $09,$01,$08,$01,$07,$01,$06,$01,$05,$01,$04,$01,$03,$01,$02,$01,$01,$01,$FF
samp_magnus_bullet:       ; magnus bullet sound.@dac8 pulse 2
.byte $10,$00,$1F,$00     ; fastest note speed, 0% duty, max constant volume, no sweep
.byte $EF,$01             ; decrement volume every note
.byte $50,$01,$55,$01,$5A,$01
.byte $B5,$FD,$FF         ; repeat previous 4 notes 5 more times (total 6 times played)
samp_boss_exp:            ; boss main explosion sound@dad7 noise channel
.byte $31,$00,$1F,$00
.byte $EF,$02
.byte $0F,$20,$FF
samp_transform:           ; magnus transform sound @ dae0
.byte $10,$01,$1F,$00
.byte $EF,$03
.byte $60,$01,$5A,$01,$58,$01,$56,$01,$54,$01,$52,$01,$50,$01,$4A,$01,$48,$01,$46,$01,$44,$04,$42,$04,$40,$01
.byte $B5,$F3,$FF
samp_magnus_exp:          ; magnus explosion sound @db03
.byte $31,$00,$1F,$00
.byte $0C,$01,$0D,$01,$0E,$01,$EF,$02,$0F,$20,$FF
samp_enemy_hit:           ; enemy damage sound @db12
.byte $10,$02,$0F,$82
.byte $29,$10,$FF
samp_brainwave:           ; brainwave sound @db19
.byte $15,$01,$0F,$00
.byte $60,$10,$FF
samp_unknown_p2:          ; unused sound @db20
.byte $10,$02,$09,$8C
.byte $09,$3C,$FF
samp_magnus_exp_p2:       ; magnus explosion sound. @db27
.byte $01,$00,$1F,$00
.byte $10,$01,$0B,$01,$0A,$01,$EF,$02,$0F,$20,$FF
samp_powerup:             ; powerup sound @db36
.byte $15,$01,$02,$01
.byte $55,$01,$53,$01,$51,$01,$4B,$01,$49,$01,$FF
samp_pause_p1:            ; pause sound @db45
.byte $13,$02,$1F,$00
.byte $EF,$01
.byte $39,$01,$1F,$01
.byte $B7,$FE,$FF
samp_azak_p2:             ; azak sound. @db52
.byte $10,$01,$1F,$00
.byte $EF,$02,$0B,$01,$0A,$01,$09,$01
.byte $BE,$BD,$FF
samp_azak_t:              ; azak sound.2 @db61
.byte $30,$00,$1F,$00
.byte $EF,$02,$0D,$01,$0E,$01,$0F,$01
.byte $BF,$FD,$FF
samp_boss_wpn_p2:         ; boss weapon sound. @db70
.byte $10,$02,$0F,$83
.byte $29,$3C,$FF
samp_boss_wpn_n:          ; boss weapon sound.2 @db77
.byte $30,$00,$19,$00
.byte $0F,$01,$0E,$01,$0D,$01,$0C,$01,$0B,$01,$0A,$01,$09,$01,$08,$01,$07,$01,$06,$01,$FF
samp_boss_p1:             ; boss music. @db90
.byte $04,$01,$03,$00
.byte $24,$02,$24,$02,$22,$02,$24,$02,$1F,$02,$24,$02,$22,$02,$24,$02
.byte $1F,$02,$24,$02,$22,$02,$24,$02,$27,$02,$26,$02,$22,$02,$24,$02
.byte $BF,$F0             ; loop infinite times
samp_boss_t:              ; boss music.2 @dbb6
.byte $24,$18,$00,$00
.byte $24,$02,$B7,$FF
.byte $22,$02,$B7,$FF
.byte $20,$02,$B7,$FF
.byte $1B,$02,$B7,$FF
.byte $BF,$F8
aud_stage_music_a:        ; stage music. @dbcc
.byte $04,$01,$0F,$00
.byte $27,$04,$30,$04,$35,$02,$34,$02,$32,$02,$30,$02,$32,$10
.byte $27,$04,$30,$04,$35,$02,$34,$02,$32,$02,$30,$02,$32,$04,$34,$02,$30,$0A
.byte $28,$04,$30,$04,$37,$02,$35,$02,$33,$02,$32,$02,$32,$0C,$2A,$04,$30,$20
.byte $BF,$E7
aud_stage_music_b:        ; stage music.2 @dc04
.byte $24,$20,$00,$00
.byte $30,$02,$B7,$FF     ; B7 means repeat the last notes 8 times
.byte $2B,$02,$B7,$FF
.byte $2A,$02,$B7,$FF
.byte $29,$02,$B7,$FF
.byte $28,$02,$B7,$FF
.byte $2A,$02,$B7,$FF
.byte $30,$02,$30,$02,$B7,$FE
.byte $BF,$F1
samp_tf2010_p1:           ; end of subtitle. tf 2010 theme @dc28
.byte $05,$01,$01,$00
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F,$01,$34,$01
.byte $B2,$F0
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F,$01,$34,$01
.byte $B2,$F0
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01,$39,$01,$37,$01,$34,$01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01
.byte $29,$01
.byte $B7,$FF
.byte $1F,$01,$40,$01,$1F,$01,$42,$01,$1F,$01,$42,$01,$40,$02
.byte $29,$01
.byte $B7,$FF
.byte $1F,$01,$35,$01,$1F,$01,$37,$01,$1F,$01,$37,$01,$37,$02,$39,$02,$FF
samp_tf2010_p2:           ; end of subtitle.2 @dcd7
.byte $15,$01,$01,$00
.byte $24,$01,$1F,$01,$24,$01,$1F,$01,$24,$01,$1F,$0B
.byte $B2,$FA
.byte $24,$01,$1F,$01,$24,$01,$1F,$01,$24,$01,$1F,$03
.byte $A1,$82
.byte $29,$01,$27,$01,$24,$01,$22,$01,$20,$01,$19,$01,$17,$02
.byte $A1,$00
.byte $24,$01,$1F,$01,$24,$01,$1F,$01
.byte $24,$01,$1F,$0B
.byte $B3,$FA
.byte $24,$01
.byte $B7,$FF
.byte $1F,$01,$37,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$37,$02
.byte $24,$01
.byte $B7,$FF
.byte $1F,$01,$20,$01,$1F,$01,$22,$01,$1F,$01,$22,$01,$22,$02,$24,$02,$FF
samp_tf2010_t:            ; end of subtitle.3 @dd3c
.byte $25,$18,$00,$00
.byte $19,$01,$1F,$01,$19,$01,$1F,$01,$19,$01,$1F,$0B
.byte $B3,$FA
.byte $19,$02,$29,$02,$20,$02,$30,$02,$22,$02,$32,$02,$20,$02,$30,$02,$15,$02,$25,$02,$14,$02,$24,$02,$15,$02,$25,$02,$17,$02,$27,$02
.byte $B1,$F0
.byte $A2,$10
.byte $19,$01
.byte $B7,$FF
.byte $1F,$01,$20,$01,$1F,$01,$22,$01,$1F,$01,$22,$41,$20,$02,$19,$01 ; ********** theres an error here that makes the bass not finish the song, change $41 to $01
.byte $B7,$FF
.byte $1F,$01,$15,$01,$1F,$01,$17,$01,$1F,$01,$17,$01,$17,$02,$19,$02,$FF
samp_tf2010_n:            ; end of subtitle.4 @dd99
.byte $35,$00,$00,$00
.byte $03,$02,$03,$02,$03,$04,$07,$04,$07,$04
.byte $B2,$FB
.byte $03,$02,$03,$02,$03,$04
.byte $03,$01,$04,$01,$05,$01,$06,$01,$07,$01,$08,$01,$09,$02
.byte $09,$02,$03,$02,$06,$02,$03,$02
.byte $B7,$FC
.byte $03,$01
.byte $B7,$FF
.byte $1F,$01,$03,$02,$03,$02,$03,$01,$03,$02
.byte $03,$01
.byte $B7,$FF
.byte $1F,$01,$03,$02,$03,$02,$03,$01,$03,$02,$03,$03,$FF
samp_sideroom_p1:
.byte $07,$02,$0A,$00
.byte $2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$32,$01,$2B,$03,$27,$03,$2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$37,$01,$37,$03,$1F,$03
.byte $2B,$02,$32,$01,$32,$03,$32,$03,$34,$02,$32,$01,$2B,$03,$27,$03,$29,$02,$1F,$01,$2B,$02,$29,$01,$27,$02,$24,$01,$27,$06,$1F,$03
.byte $BF,$E0
samp_sideroom_t:          ; sideroom music.2 @de2c
.byte $27,$19,$00,$00
.byte $17,$02,$22,$01,$22,$03,$22,$03,$20,$02,$27,$01,$27,$03,$27,$03
.byte $B2,$F8
.byte $22,$02,$29,$01,$29,$03,$29,$03,$17,$02,$22,$01,$22,$03,$22,$03
.byte $BF,$EF
samp_guardian_p1:         ; guardian room music p1 @de54
.byte $09,$01,$0F,$00
.byte $20,$0A,$23,$01,$22,$01,$1A,$0A,$1A,$01,$20,$01,$17,$18
.byte $B1,$F9
.byte $20,$0A,$23,$01,$22,$01,$1A,$09,$17,$03,$20,$18
.byte $BF,$F2
samp_guardian_t:          ; guardian room music triangle @de76
.byte $29,$1A,$00,$00
.byte $20,$03,$20,$01,$20,$01,$20,$01,$20,$03,$20,$01,$20,$01,$20,$01
.byte $B7,$F8
.byte $18,$03,$18,$01,$18,$01,$18,$01
.byte $B1,$FC
.byte $1A,$03,$1A,$01,$1A,$01,$1A,$01
.byte $B1,$FC
.byte $20,$03,$20,$01,$20,$01,$20,$01
.byte $B3,$FC
.byte $BF,$E8
samp_endscreen_p1:        ; endscreen music. @deac
.byte $06,$01,$0F,$00
.byte $36,$12,$29,$01,$32,$01,$36,$01,$37,$01,$36,$01,$34,$01
.byte $B2,$F9
.byte $39,$12,$37,$01,$36,$01,$34,$01,$32,$02,$34,$01
.byte $36,$12,$29,$01,$32,$01,$36,$01,$37,$01,$36,$01
.byte $34,$01
.byte $B2,$F9
.byte $39,$12,$37,$01,$36,$01,$34,$01,$32,$02,$34,$01,$26,$06,$29,$06,$32,$06
.byte $34,$06,$37,$06,$36,$01,$34,$01,$32,$03,$34,$01,$36,$06,$34,$06
.byte $B1,$F5
.byte $BF,$D8
samp_endscreen_p2:        ; endscreen music.2 @df02
.byte $16,$01,$0F,$00
.byte $32,$12,$26,$01,$29,$01,$32,$01,$34,$01,$32,$01,$31,$01
.byte $B2,$F9
.byte $34,$12,$34,$01,$32,$01,$31,$01,$2B,$02,$31,$01,$32,$12,$26,$01,$29,$01,$32,$01,$34,$01,$32,$01,$31,$01
.byte $B2,$F9
.byte $34,$12,$34,$01,$32,$01,$31,$01,$2B,$02,$31,$01
.byte $22,$06,$24,$06,$29,$06,$31,$06,$32,$06,$32,$01,$31,$01,$2B,$03,$31,$01,$32,$06,$31,$06
.byte $B1,$F5
.byte $BF,$D8
samp_endscreen_t:         ; endscreen music.3 @df58
.byte $26,$20,$00,$00
.byte $22,$03,$B7,$FF
.byte $20,$03,$B7,$FF
.byte $17,$03,$B7,$FF
.byte $19,$03,$B7,$FF
.byte $22,$03,$B7,$FF
.byte $20,$03,$B7,$FF
.byte $17,$03,$B7,$FF
.byte $19,$03,$B7,$FF
.byte $22,$03,$22,$03,$21,$03,$21,$03,$1B,$03,$1B,$03,$19,$03,$19,$03,$17,$03,$17,$03,$17,$03,$17,$03,$19,$03,$19,$03,$19,$03,$19,$03
.byte $B1,$F0
.byte $BF,$DF
samp_endscreen_n:         ; endscreen music.4 @dfa0
.byte $36,$00,$00,$00
.byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$03,$01,$03,$01
.byte $BF,$F6
samp_barrier_p1:          ; barrier powerup music @dfba similar to tf2010 music, but not the same
.byte $05,$01,$01,$00
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01
.byte $39,$01,$37,$01,$34,$01,$39,$01,$1F,$01,$37,$01,$1F,$01,$34,$01
.byte $B2,$F0
.byte $39,$01,$1F,$01,$39,$01,$1F,$01,$39,$01,$1F,$01,$34,$01,$37,$01
.byte $39,$01,$37,$01,$34,$01,$40,$01,$1F,$01,$3B,$01,$1F,$01,$37,$01
.byte $BF,$DF
samp_barrier_t:           ; barrier powerup music.2 @e002
.byte $25,$18,$00,$00
.byte $19,$02,$29,$02,$20,$02,$30,$02,$22,$02,$32,$02,$20,$02,$30,$02
.byte $15,$02,$25,$02,$14,$02,$24,$02,$15,$02,$25,$02,$17,$02,$27,$02
.byte $BF,$F0
.byte $BF,$F0             ; extra line ****** not needed, or maybe its from a deleted track


; padding
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

; looks like there room for more music, here
; sound composer was told to make the sounds within a certain memory space, saw the challenge and said "hold my stong lemon"
; end of audio stuff
;==============================================================================================

; stage metatile tables, each of the 4 first rows are 4 columns of metatiles. each screen is made up of 4 sets of 4 metatiles
; first 4 sections is the first screen of the first stage
; fifth row is the palette table, split into 2 sets of 8. first 8 are the left side (line/column one and line/column 2), second set of 8 are the right side, going downwards
lvl_col_00: ; 00 @e0c6
  .byte $00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$08,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09,$56,$56
  .byte $00,$03,$00,$00,$00,$02,$00,$00,$00,$00,$00,$0B,$0A,$56,$56
  .byte $00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$0D,$0C,$56,$56
  .byte $00,$00,$00,$00,$03,$00,$50,$55,$30,$00,$3C,$00,$00,$00,$50,$55
lvl_col_01:   ; 01 @e112
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$08,$0E,$56,$36
  .byte $03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$10,$09,$11,$56,$25
  .byte $00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$14,$13,$12,$56,$25
  .byte $00,$00,$00,$00,$03,$00,$00,$03,$00,$16,$15,$0E,$11,$56,$37
  .byte $00,$00,$00,$00,$00,$00,$50,$55,$00,$03,$0C,$C0,$00,$00,$50,$55
lvl_col_02:   ; 02 @e15e
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$16,$1A,$19,$18,$17,$56,$56
  .byte $00,$03,$00,$00,$00,$03,$00,$00,$0D,$1E,$1D,$1C,$1B,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$21,$20,$1F,$56,$56
  .byte $00,$00,$03,$00,$00,$00,$00,$03,$00,$00,$25,$24,$23,$56,$56
  .byte $00,$00,$C0,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$08,$50,$55
lvl_col_03:   ; 03 @e1aa
  .byte $00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$22,$27,$26,$56,$56
  .byte $03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$28,$27,$56,$56
  .byte $00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$10,$00,$29,$56,$56
  .byte $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$2A,$56,$56
  .byte $00,$00,$03,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55
lvl_col_04:   ; 04 @e1f6
  .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$14,$56,$56
  .byte $00,$00,$04,$06,$00,$00,$00,$00,$00,$00,$00,$16,$18,$56,$56
  .byte $00,$00,$05,$07,$00,$03,$00,$00,$03,$00,$00,$0D,$2B,$56,$56
  .byte $00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2C,$56,$56
  .byte $F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55
lvl_col_05:   ; 05 @e242
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2E,$2D,$56,$56
  .byte $03,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$2C,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$30,$2F,$56,$56
  .byte $00,$00,$03,$00,$03,$00,$00,$00,$00,$00,$00,$00,$28,$56,$56
  .byte $F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$0F,$50,$55
lvl_col_06:   ; 06 @e28e
  .byte $03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$08,$56,$56
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$09,$56,$36
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$14,$31,$56,$25
  .byte $03,$00,$00,$00,$00,$03,$00,$00,$00,$00,$16,$33,$32,$56,$37
  .byte $F0,$FF,$FF,$FF,$FF,$0F,$50,$55,$F0,$FF,$FF,$FF,$FF,$03,$50,$55
lvl_col_07:   ; 07 @e2da
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$0D,$1E,$1D,$56,$56
  .byte $00,$00,$00,$00,$00,$03,$00,$03,$00,$00,$00,$22,$21,$56,$56
  .byte $00,$03,$00,$00,$03,$00,$00,$00,$00,$00,$00,$0B,$34,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0D,$0C,$56,$56
  .byte $F0,$FF,$FF,$FF,$FF,$00,$50,$55,$F0,$FF,$FF,$FF,$FF,$00,$50,$55
lvl_col_08:   ; 08 @e326
  .byte $00,$03,$00,$00,$03,$80,$00,$00,$00,$00,$00,$00,$55,$55,$55
  .byte $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$55,$55,$55
  .byte $00,$00,$03,$00,$00,$03,$00,$00,$00,$80,$01,$01,$55,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$55,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$00,$00
lvl_col_09:   ; 09 @e372
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$03,$00,$80,$01,$01,$55,$55
  .byte $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$80,$01,$01,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$80,$01,$01,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$01,$01,$55,$55
  .byte $00,$00,$00,$00,$00,$50,$05,$00,$00,$00,$00,$00,$00,$50,$05,$00
lvl_col_0A:   ; 0A @e2be
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55
  .byte $00,$04,$06,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$55,$55
  .byte $00,$05,$07,$00,$03,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55
  .byte $00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$55,$55,$55,$55
  .byte $80,$08,$00,$00,$00,$00,$00,$00,$20,$02,$00,$00,$00,$00,$00,$00
lvl_col_0B:   ; 0B @e40a
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$01,$01,$01,$55,$55,$55
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$80,$01,$01,$01,$55,$80,$55
  .byte $03,$00,$00,$00,$03,$00,$00,$00,$80,$01,$01,$01,$55,$55,$55
  .byte $00,$03,$00,$00,$00,$00,$00,$00,$80,$01,$01,$01,$55,$80,$55
  .byte $00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55,$00,$00
lvl_col_0C:   ; 0C @e456
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$01,$01,$55,$55,$80,$55
  .byte $00,$00,$00,$03,$80,$00,$00,$00,$80,$01,$01,$55,$55,$55,$55
  .byte $00,$00,$00,$00,$80,$01,$01,$00,$80,$00,$00,$55,$55,$55,$55
  .byte $03,$00,$00,$00,$00,$00,$00,$00,$80,$01,$01,$55,$55,$80,$55
  .byte $00,$00,$00,$00,$50,$05,$00,$00,$00,$00,$10,$01,$40,$04,$00,$00
lvl_col_0D:   ; 0D @e4a2
  .byte $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$55,$55,$55,$55
  .byte $00,$00,$03,$02,$00,$00,$00,$80,$01,$01,$01,$55,$55,$55,$55
  .byte $03,$00,$00,$00,$03,$00,$00,$80,$00,$00,$00,$00,$00,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55
  .byte $00,$4C,$00,$00,$44,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_0E:   ; 0E @e4ee
  .byte $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55
  .byte $00,$00,$00,$80,$01,$00,$00,$00,$00,$7A,$00,$00,$00,$55,$55
  .byte $00,$00,$00,$80,$00,$03,$00,$00,$7A,$7A,$00,$00,$00,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55
  .byte $00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_0F:   ; 0F @e53a
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55
  .byte $00,$00,$03,$80,$01,$00,$00,$00,$7A,$7A,$00,$00,$00,$55,$55
  .byte $00,$03,$00,$80,$00,$03,$00,$00,$7A,$7A,$00,$00,$00,$55,$55
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$7A,$00,$00,$00,$00,$55,$55
  .byte $00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_10:   ; 10 @e586
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$55,$55
  .byte $00,$00,$03,$00,$03,$80,$00,$00,$00,$00,$00,$00,$55,$55,$55
  .byte $00,$02,$00,$00,$00,$80,$00,$03,$00,$00,$00,$55,$55,$55,$55
  .byte $03,$00,$00,$03,$00,$80,$00,$00,$03,$00,$00,$55,$55,$55,$55
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00
lvl_col_11:   ; 11 @e5d2
  .byte $00,$03,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$55,$55
  .byte $00,$00,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$80,$55
  .byte $00,$00,$02,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$55,$55
  .byte $03,$00,$00,$00,$00,$80,$01,$01,$01,$01,$01,$01,$55,$80,$55
  .byte $20,$00,$02,$55,$55,$55,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00
lvl_col_12:   ; 12 @e61e
  .byte $00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$55,$55
  .byte $00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$80,$55
  .byte $00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$55,$55
  .byte $00,$7A,$01,$01,$01,$01,$01,$01,$7A,$01,$01,$01,$55,$80,$55
  .byte $00,$55,$55,$55,$50,$55,$00,$00,$00,$55,$55,$55,$50,$55,$00,$00
lvl_col_13:   ; 13 @e66a
  .byte $00,$00,$00,$54,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55
lvl_col_14:   ; 14 @e6b6
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$54,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55
lvl_col_15:   ; 15 @e702
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$53,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55
lvl_col_16:   ; 16 @e74e
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00
  .byte $00,$00,$3B,$00,$00,$3A,$00,$57,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$57,$00,$3A,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00,$00,$00,$3A,$00
  .byte $00,$05,$00,$0A,$50,$00,$0F,$00,$00,$05,$00,$02,$00,$00,$0F,$00
lvl_col_17:   ; 17 @e79a
  .byte $00,$3A,$00,$57,$3A,$00,$3A,$00,$57,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$57,$00,$00,$00,$00,$57,$3A,$00,$00,$57,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00,$57,$00,$00
  .byte $00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$3A,$57,$00,$00
  .byte $00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_18:   ; 18 E7E6
  .byte $00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$3A,$00,$00,$57,$00,$00,$3A,$00,$00
  .byte $3A,$00,$00,$00,$3A,$00,$00,$00,$00,$57,$3A,$00,$00,$00,$3A
  .byte $00,$00,$00,$00,$00,$00,$00,$3A,$00,$57,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_19:     ; 19 E832
  .byte $00,$3A,$00,$00,$00,$00,$57,$00,$00,$00,$00,$00,$00,$3A,$00
  .byte $00,$00,$00,$57,$00,$00,$57,$00,$3A,$00,$00,$3A,$00,$00,$00
  .byte $00,$00,$00,$57,$00,$3A,$57,$00,$00,$00,$00,$00,$00,$3B,$00
  .byte $3A,$00,$00,$57,$00,$00,$57,$00,$00,$00,$3A,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$40,$A0,$00,$00
lvl_col_1A:     ; 1A E87E
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$50,$55,$00,$00,$00,$00,$00,$00,$50,$55
lvl_col_1B:     ; 1B E8CA
  .byte $00,$00,$57,$59,$57,$00,$00,$00,$00,$00,$00,$59,$58,$A6,$00
  .byte $3A,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$00,$5A,$58,$00,$00
  .byte $00,$00,$57,$5A,$57,$A6,$A6,$A6,$00,$00,$00,$58,$00,$3A,$00
  .byte $00,$3A,$57,$5A,$57,$00,$00,$00,$00,$00,$00,$58,$A6,$A6,$00
  .byte $00,$A0,$00,$00,$00,$A0,$10,$00,$40,$A0,$10,$11,$00,$00,$44,$00
lvl_col_1C:     ; 1C E916
  .byte $00,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$00,$59,$00,$00,$00
  .byte $3A,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$00,$5A,$A6,$A6,$00
  .byte $00,$00,$00,$5A,$57,$00,$A6,$A6,$A6,$00,$00,$58,$00,$00,$00
  .byte $00,$00,$57,$58,$57,$00,$00,$00,$00,$00,$00,$59,$58,$00,$00
  .byte $00,$A0,$00,$00,$00,$A0,$44,$00,$00,$20,$00,$11,$01,$80,$00,$00
lvl_col_1D:     ; 1D E962
  .byte $00,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$58,$58,$58,$00,$00
  .byte $00,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$58,$59,$A6,$A6,$00
  .byte $00,$00,$00,$5A,$57,$00,$00,$00,$00,$00,$58,$5A,$00,$3A,$00
  .byte $00,$3A,$00,$58,$57,$00,$00,$00,$00,$00,$59,$58,$00,$00,$00
  .byte $00,$A0,$00,$00,$44,$80,$44,$00,$80,$20,$00,$00,$00,$28,$00,$00
lvl_col_1E:     ; 1E E9AE
  .byte $00,$00,$00,$59,$57,$00,$00,$00,$00,$00,$5A,$59,$58,$A6,$A6
  .byte $00,$00,$00,$5A,$57,$A6,$A6,$A6,$00,$00,$58,$5A,$58,$00,$00
  .byte $3A,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$58,$58,$00,$3A,$00
  .byte $00,$00,$57,$5A,$57,$00,$00,$00,$00,$00,$59,$58,$A6,$A6,$00
  .byte $00,$A0,$40,$44,$00,$A2,$10,$00,$00,$A0,$00,$00,$00,$08,$44,$00
lvl_col_1F:       ; 1F E9FA
  .byte $57,$57,$59,$57,$57,$00,$00,$00,$58,$58,$5A,$59,$00,$00,$00
  .byte $00,$57,$58,$57,$57,$00,$00,$00,$59,$59,$58,$5A,$58,$00,$00
  .byte $00,$00,$59,$57,$57,$00,$00,$00,$5A,$5A,$58,$5A,$A6,$A6,$00
  .byte $00,$00,$5A,$57,$57,$A6,$00,$00,$58,$59,$58,$5A,$00,$3A,$00
  .byte $00,$02,$00,$00,$88,$A2,$00,$00,$00,$0A,$40,$04,$A2,$A0,$51,$00
lvl_col_20:       ; 20 EA46
  .byte $00,$00,$5A,$59,$57,$00,$00,$00,$58,$58,$58,$59,$58,$00,$00
  .byte $00,$00,$58,$5A,$57,$00,$00,$00,$59,$58,$58,$5A,$58,$00,$00
  .byte $57,$57,$57,$58,$57,$00,$00,$00,$5A,$58,$58,$5A,$A6,$A6,$00
  .byte $00,$57,$57,$58,$00,$00,$00,$00,$58,$58,$59,$58,$00,$00,$00
  .byte $00,$A2,$00,$00,$08,$A0,$00,$00,$00,$00,$00,$00,$02,$28,$11,$00
lvl_col_21:       ; 21 EA92
  .byte $00,$00,$57,$00,$00,$00,$00,$00,$00,$00,$5A,$A6,$A6,$A6,$00
  .byte $00,$00,$57,$00,$00,$00,$00,$00,$00,$00,$58,$00,$00,$00,$3A
  .byte $00,$00,$57,$57,$00,$00,$00,$00,$00,$00,$58,$58,$58,$00,$00
  .byte $00,$00,$58,$57,$00,$00,$00,$00,$00,$00,$58,$58,$58,$00,$00
  .byte $00,$00,$00,$00,$00,$12,$11,$00,$00,$00,$00,$00,$11,$00,$00,$00
lvl_col_22:       ; 22 EADE
  .byte $00,$00,$58,$57,$57,$00,$00,$00,$00,$00,$59,$58,$59,$00,$00
  .byte $00,$00,$59,$59,$57,$A6,$A6,$A6,$00,$00,$5A,$58,$5A,$A6,$A6
  .byte $00,$00,$5A,$5A,$57,$00,$00,$00,$00,$00,$58,$59,$5A,$00,$00
  .byte $00,$00,$58,$58,$57,$00,$00,$00,$00,$00,$58,$5A,$58,$00,$00
  .byte $00,$88,$40,$44,$04,$8A,$4A,$00,$00,$22,$00,$00,$00,$A0,$02,$00
lvl_col_23:       ; 23 EB2A
  .byte $00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$82,$00,$00,$00,$00
  .byte $00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$89,$9B,$00,$3A,$00
  .byte $00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$89,$9E,$A6,$00,$00
  .byte $00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$83,$5E,$00,$00,$00
  .byte $40,$00,$30,$00,$00,$05,$40,$00,$00,$00,$0C,$01,$00,$05,$02,$00
lvl_col_24:       ; 24 EB76
  .byte $00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$83,$5E,$A6,$A6,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$89,$9E,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$3A,$00,$40,$00,$00,$89,$9F,$00,$3A,$00
  .byte $3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$88,$00,$00,$00,$00
  .byte $00,$02,$00,$00,$04,$05,$22,$00,$00,$00,$20,$30,$00,$05,$20,$00
lvl_col_25:       ; 25 EBC2
  .byte $00,$00,$00,$00,$00,$00,$00,$82,$00,$00,$00,$00,$3A,$00,$00
  .byte $00,$00,$00,$3A,$00,$00,$00,$89,$9B,$00,$40,$00,$00,$00,$00
  .byte $00,$3A,$00,$00,$00,$00,$00,$89,$9E,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$3E,$7D,$5E,$00,$00,$3A,$00,$00,$00
  .byte $00,$00,$00,$50,$01,$0D,$01,$00,$20,$00,$00,$54,$00,$40,$00,$00
lvl_col_26:       ; 26 EC0E
  .byte $00,$00,$00,$00,$00,$3C,$4C,$7E,$5E,$3A,$00,$00,$00,$3A,$00
  .byte $00,$00,$00,$00,$00,$3D,$4D,$7F,$5E,$00,$00,$00,$40,$00,$00
  .byte $00,$3A,$00,$00,$00,$00,$3F,$95,$9E,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$88,$9F,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$50,$55,$00,$00,$1C,$00,$10,$00,$50,$55,$00,$00,$00,$00
lvl_col_27:       ; 27 EC5A
  .byte $00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$00,$84,$00,$00,$00
  .byte $00,$00,$3B,$00,$82,$00,$00,$00,$00,$83,$00,$85,$00,$3A,$00
  .byte $00,$00,$00,$00,$89,$9B,$00,$3A,$00,$83,$99,$86,$9A,$00,$00
  .byte $00,$00,$04,$00,$50,$00,$F0,$00,$00,$02,$05,$40,$50,$0C,$FC,$00
lvl_col_28:       ; 28 ECA6
  .byte $00,$00,$00,$00,$89,$5E,$00,$00,$00,$89,$99,$85,$99,$00,$00
  .byte $00,$00,$3A,$00,$89,$5E,$00,$00,$00,$89,$99,$86,$00,$3B,$00
  .byte $00,$00,$00,$00,$89,$9F,$00,$00,$00,$89,$9B,$85,$99,$00,$00
  .byte $3A,$00,$00,$00,$88,$00,$00,$00,$00,$83,$9C,$86,$9A,$00,$00
  .byte $00,$00,$05,$00,$50,$0F,$3F,$00,$00,$00,$05,$00,$50,$00,$FF,$00
lvl_col_29:       ; 29 ECF2
  .byte $00,$00,$00,$3A,$00,$3A,$00,$00,$00,$5D,$9E,$85,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$5F,$9C,$86,$99,$00,$3A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$4E,$60,$9D,$85,$5B,$00,$00
  .byte $00,$00,$3A,$00,$00,$00,$00,$00,$50,$5F,$9C,$85,$99,$00,$00
  .byte $00,$20,$11,$00,$50,$00,$FF,$00,$00,$04,$00,$00,$55,$00,$FF,$00
lvl_col_2A:       ; 2A ED3E
  .byte $00,$00,$00,$00,$00,$00,$3A,$00,$4F,$60,$9D,$85,$5C,$9A,$00
  .byte $00,$00,$00,$00,$3A,$00,$00,$00,$3E,$5F,$9D,$85,$5C,$9A,$00
  .byte $00,$3A,$00,$00,$00,$00,$00,$3C,$4C,$5F,$9C,$85,$99,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$3D,$4D,$5F,$9D,$85,$5B,$00,$00
  .byte $00,$00,$08,$01,$55,$00,$FF,$00,$20,$00,$00,$50,$55,$00,$FF,$00
lvl_col_2B:       ; 2B ED8A
  .byte $00,$00,$00,$00,$00,$3A,$00,$00,$3F,$60,$9D,$86,$5C,$9A,$00
  .byte $00,$00,$3A,$00,$00,$00,$00,$00,$00,$5F,$9E,$86,$5B,$00,$00
  .byte $00,$00,$00,$00,$00,$82,$9B,$00,$00,$60,$9D,$85,$99,$00,$00
  .byte $00,$00,$00,$00,$00,$89,$9C,$00,$00,$61,$9C,$86,$9A,$3A,$00
  .byte $00,$08,$10,$00,$51,$00,$FF,$00,$00,$00,$50,$00,$50,$00,$BF,$00
lvl_col_2C:       ; 2C EDD6
  .byte $3A,$00,$00,$3A,$00,$89,$9E,$00,$00,$89,$9F,$85,$99,$00,$00
  .byte $00,$00,$00,$00,$00,$88,$9F,$00,$00,$89,$99,$86,$9A,$00,$00
  .byte $00,$3B,$00,$00,$00,$00,$00,$00,$00,$89,$9A,$85,$9A,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$3A,$00,$88,$99,$87,$00,$00,$00
  .byte $00,$00,$50,$00,$50,$0C,$FF,$00,$00,$00,$00,$80,$50,$0F,$FF,$00
lvl_col_2D:       ; 2D EE22
  .byte $00,$3A,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$8A,$A0,$00,$00
  .byte $00,$00,$00,$00,$00,$3A,$00,$40,$00,$00,$00,$8B,$A7,$00,$00
  .byte $00,$3A,$00,$40,$40,$00,$00,$00,$3A,$00,$00,$8C,$68,$41,$00
  .byte $00,$40,$00,$00,$00,$00,$00,$00,$00,$40,$00,$8D,$A1,$00,$00
  .byte $10,$00,$80,$C0,$00,$F0,$3F,$00,$C0,$34,$03,$04,$C1,$F0,$FF,$00
lvl_col_2E:       ; 2E EE6E
  .byte $00,$00,$00,$00,$00,$00,$00,$8A,$A0,$00,$00,$00,$00,$40,$00
  .byte $3A,$00,$00,$00,$3A,$40,$00,$8B,$A7,$00,$00,$3A,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$3A,$8C,$68,$41,$00,$00,$00,$00,$00
  .byte $00,$00,$3A,$00,$40,$00,$00,$8D,$A1,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$C8,$F0,$0F,$FF,$30,$00,$00,$08,$0C,$F1,$3F,$FF,$00,$00
lvl_col_2F:       ; 2F EEBA
  .byte $00,$00,$40,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$40,$00
  .byte $00,$3A,$00,$00,$3A,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$3A,$00
  .byte $00,$00,$3A,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $40,$03,$04,$10,$0C,$00,$34,$00,$00,$00,$C0,$00,$00,$01,$10,$00
lvl_col_30:       ; 30 EF06
  .byte $00,$00,$8E,$44,$71,$72,$72,$6C,$69,$6A,$6B,$6B,$69,$00,$94
  .byte $00,$00,$8E,$6A,$6B,$6D,$00,$6C,$69,$45,$00,$00,$69,$00,$93
  .byte $00,$00,$93,$45,$00,$6C,$71,$6C,$43,$00,$00,$00,$69,$00,$00
  .byte $00,$00,$00,$00,$00,$6C,$72,$6C,$00,$00,$00,$00,$AC,$00,$00
  .byte $40,$05,$03,$00,$05,$00,$05,$00,$50,$45,$00,$03,$45,$04,$05,$00
lvl_col_31:       ; 31 EF52
  .byte $00,$A4,$00,$00,$00,$6F,$6B,$6E,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$A2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$94,$00
  .byte $00,$A3,$00,$00,$00,$00,$00,$00,$00,$00,$A4,$00,$00,$8E,$00
  .byte $00,$00,$00,$00,$00,$94,$00,$00,$00,$00,$A2,$00,$00,$8E,$00
  .byte $50,$55,$44,$44,$55,$55,$05,$00,$50,$55,$05,$55,$55,$55,$05,$00
lvl_col_32:       ; 32 EF9E
  .byte $00,$00,$00,$00,$00,$8E,$00,$00,$00,$00,$A3,$00,$00,$93,$00
  .byte $00,$A9,$00,$00,$00,$8E,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$69,$00,$00,$00,$93,$00,$00,$00,$00,$00,$00,$A9,$00,$00
  .byte $00,$69,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$69,$00,$00
  .byte $50,$55,$05,$55,$55,$55,$05,$00,$50,$00,$05,$55,$55,$55,$05,$00
lvl_col_33:       ; 33 EFEA
  .byte $00,$69,$6A,$6D,$00,$00,$00,$70,$6B,$6B,$6B,$6D,$69,$00,$00
  .byte $00,$69,$45,$6C,$00,$00,$00,$6C,$42,$71,$72,$6C,$69,$00,$00
  .byte $00,$AC,$A9,$6F,$6B,$6B,$6B,$6E,$69,$00,$71,$6C,$69,$00,$00
  .byte $00,$00,$69,$72,$71,$71,$72,$72,$69,$A9,$00,$6C,$69,$00,$00
  .byte $50,$00,$11,$01,$C4,$00,$05,$00,$10,$05,$CC,$00,$45,$03,$05,$00
lvl_col_34:       ; 34 F036
  .byte $73,$00,$00,$00,$00,$73,$00,$00,$73,$00,$00,$00,$77,$77,$00
  .byte $74,$00,$00,$00,$00,$74,$00,$00,$74,$00,$00,$00,$77,$77,$00
  .byte $74,$00,$00,$00,$00,$74,$00,$00,$74,$00,$00,$00,$77,$77,$00
  .byte $75,$00,$00,$00,$00,$75,$00,$00,$75,$00,$00,$00,$77,$77,$77
  .byte $10,$00,$10,$00,$01,$00,$00,$00,$00,$00,$40,$00,$04,$00,$00,$00
lvl_col_35:       ; 35 F082
  .byte $73,$00,$00,$00,$73,$00,$00,$00,$73,$00,$00,$00,$77,$78,$00
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$74,$00,$00,$00,$77,$79,$00
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$75,$00,$00,$00,$77,$78,$00
  .byte $75,$00,$00,$00,$75,$00,$00,$00,$00,$00,$00,$00,$77,$79,$00
  .byte $00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$04,$00,$01,$00,$00,$00
lvl_col_36:       ; 36 F0CE
  .byte $73,$00,$00,$00,$73,$00,$00,$00,$00,$00,$00,$77,$78,$78,$78
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$00,$00,$00,$77,$79,$79,$79
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$00,$00,$00,$77,$78,$78,$78
  .byte $75,$00,$00,$00,$75,$00,$00,$00,$00,$00,$00,$77,$79,$79,$79
  .byte $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00
lvl_col_37:       ; 37 F11A
  .byte $73,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$78,$78,$78
  .byte $74,$00,$00,$00,$00,$00,$00,$00,$73,$00,$00,$77,$79,$79,$79
  .byte $74,$00,$00,$00,$00,$73,$00,$00,$74,$00,$00,$77,$90,$46,$96
  .byte $75,$00,$00,$00,$00,$73,$00,$00,$75,$00,$00,$77,$77,$77,$77
  .byte $00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$50,$00,$04,$00,$11,$00
lvl_col_38:       ; 38 F166
  .byte $73,$00,$00,$00,$73,$00,$00,$00,$00,$73,$00,$77,$77,$77,$77
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$00,$74,$00,$77,$90,$46,$96
  .byte $74,$00,$00,$00,$74,$00,$00,$00,$00,$74,$00,$77,$77,$77,$77
  .byte $75,$00,$00,$00,$75,$00,$00,$00,$00,$75,$00,$77,$77,$77,$77
  .byte $00,$00,$01,$00,$10,$00,$44,$00,$00,$00,$04,$00,$40,$00,$00,$00
lvl_col_39:       ; 39 F1B2
  .byte $78,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$77,$77,$77,$77
  .byte $79,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$90,$46,$96,$77
  .byte $78,$00,$00,$00,$78,$00,$00,$00,$00,$00,$77,$76,$76,$76,$77
  .byte $79,$00,$00,$00,$79,$77,$00,$00,$00,$00,$77,$90,$46,$96,$77
  .byte $00,$00,$00,$00,$00,$40,$44,$00,$00,$00,$00,$00,$00,$40,$44,$00
lvl_col_3A:       ; 3A F1FE
  .byte $78,$73,$00,$00,$77,$77,$00,$00,$00,$00,$77,$76,$76,$76,$77
  .byte $79,$74,$00,$00,$77,$77,$00,$00,$00,$77,$77,$77,$77,$77,$77
  .byte $78,$74,$00,$00,$77,$77,$00,$00,$00,$77,$00,$00,$00,$77,$77
  .byte $79,$75,$00,$00,$77,$77,$00,$00,$00,$77,$00,$00,$00,$77,$77
  .byte $10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00
lvl_col_3B:       ; 3B F24A
  .byte $78,$73,$00,$00,$77,$77,$00,$00,$00,$77,$00,$00,$00,$77,$77
  .byte $79,$74,$00,$00,$77,$77,$00,$00,$00,$77,$78,$00,$00,$77,$77
  .byte $78,$74,$00,$00,$77,$77,$00,$00,$00,$77,$79,$00,$00,$77,$77
  .byte $79,$75,$00,$00,$77,$77,$00,$00,$00,$00,$77,$00,$00,$77,$77
  .byte $10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00
lvl_col_3C:       ; 3C F296
  .byte $78,$73,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77
  .byte $79,$74,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77
  .byte $78,$74,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77
  .byte $79,$75,$00,$00,$00,$77,$77,$00,$00,$00,$00,$00,$00,$77,$77
  .byte $10,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00
lvl_col_3D:       ; 3D F2E2
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_3E:       ; 3E F32E
  .byte $78,$73,$00,$00,$00,$00,$00,$00,$00,$00,$78,$76,$00,$76,$77
  .byte $79,$74,$00,$00,$00,$00,$00,$00,$00,$00,$79,$90,$46,$96,$77
  .byte $78,$74,$00,$00,$00,$00,$76,$00,$00,$00,$78,$76,$00,$76,$77
  .byte $79,$75,$00,$00,$00,$00,$76,$00,$00,$00,$79,$77,$00,$77,$77
  .byte $10,$00,$00,$00,$00,$40,$44,$00,$40,$00,$00,$00,$00,$00,$00,$00
lvl_col_3F:       ; 3F F37A
  .byte $78,$73,$00,$00,$00,$77,$78,$00,$00,$00,$78,$76,$00,$76,$77
  .byte $79,$74,$00,$00,$00,$77,$79,$00,$00,$00,$79,$90,$46,$96,$77
  .byte $78,$75,$00,$00,$00,$77,$78,$00,$00,$00,$78,$76,$00,$76,$77
  .byte $79,$00,$00,$00,$00,$77,$79,$00,$00,$00,$79,$77,$00,$77,$77
  .byte $10,$00,$00,$00,$00,$40,$44,$00,$10,$00,$00,$00,$00,$00,$00,$00
lvl_col_40:       ; 40 F3C6
  .byte $00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$03,$00,$00,$00,$00,$00,$00,$48,$49,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$56,$56
  .byte $00,$00,$00,$00,$FF,$00,$50,$55,$00,$00,$00,$00,$33,$00,$50,$55
lvl_col_41:       ; 41 F412
  .byte $00,$00,$7B,$00,$7B,$00,$7B,$00,$00,$7B,$7B,$00,$7B,$00,$00
  .byte $00,$00,$7B,$00,$7B,$00,$7B,$00,$00,$7B,$00,$00,$7B,$00,$00
  .byte $00,$00,$7B,$00,$00,$00,$7B,$00,$00,$00,$00,$00,$7B,$00,$00
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$AA,$00,$00,$7B,$00,$00
  .byte $00,$05,$00,$0A,$50,$00,$0F,$00,$00,$05,$00,$02,$00,$00,$0F,$00
lvl_col_42:       ; 42 F45E
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$00,$00
  .byte $00,$00,$7B,$00,$00,$AA,$00,$00,$00,$64,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$7C,$00,$00,$00,$64,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$64,$00,$00,$00,$7C,$00,$00,$00,$AA,$00
  .byte $00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_43:       ; 43 F4AA
  .byte $00,$00,$00,$00,$00,$7C,$00,$00,$00,$AD,$00,$00,$00,$7C,$00
  .byte $00,$00,$00,$00,$00,$AD,$00,$00,$00,$00,$00,$00,$00,$7C,$00
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_44:       ; 44 F4F6
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AD,$00
  .byte $00,$00,$7B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$7B,$00,$00,$00,$7B,$00,$00,$00,$00,$7B,$00,$00,$7B
  .byte $00,$00,$7B,$00,$00,$00,$7B,$00,$00,$7B,$00,$7B,$00,$00,$7B
  .byte $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$08,$40,$A0,$00,$00
lvl_col_45:       ; 45 F542
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$12,$17,$1C,$21,$26,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$13,$18,$1D,$22,$27,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00
lvl_col_46:       ; 46 F58E
  .byte $00,$00,$00,$00,$14,$19,$1E,$23,$28,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$15,$1A,$1F,$24,$29,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$16,$1B,$20,$25,$2A,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_47:       ; 47 F5DA
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$3F,$42,$44,$46,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$40,$70,$5C,$5D,$48,$4C,$50,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$00,$00,$00,$00,$00
lvl_col_48:       ; 48 F626
  .byte $00,$00,$00,$00,$41,$71,$72,$73,$74,$75,$76,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$43,$45,$47,$49,$4D,$51,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$4A,$4E,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$4B,$4F,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_49:       ; 49 F672
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$35,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$33,$34,$5A,$36,$37,$38,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$48,$05,$C4,$00,$00,$00
lvl_col_4A:       ; 4A F6BE
  .byte $00,$00,$00,$00,$53,$67,$68,$69,$6A,$65,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$10,$01,$22,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_4B:       ; 4B F70A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$2D,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$52,$57,$00,$00,$31,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00
lvl_col_4C:       ; 4C F756
  .byte $00,$00,$00,$00,$2B,$60,$61,$62,$63,$64,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$2C,$2E,$2F,$00,$00,$32,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_4D:       ; 4D F7A2
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$39,$3B,$5B,$3C,$3D,$3E,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$C8,$0C,$00,$00
lvl_col_4E:       ; 4E F7EE
  .byte $00,$00,$00,$00,$00,$54,$6B,$6C,$6D,$6E,$6F,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$20,$32,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_4F:       ; 4F F83A ,section 50-54 boss 2 (and 1 but the last section is 16 instead of 53)
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$09,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$0A,$58,$56,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_50:       ; 50 F886
  .byte $00,$00,$00,$04,$0B,$59,$03,$07,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$06,$05,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_51:       ; 51 F8D2
  .byte $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$80,$00
  .byte $00,$01,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$01,$00,$00,$00,$00,$11,$00,$00,$00,$00,$00,$00,$00
  .byte $40,$00,$00,$01,$40,$00,$F0,$00,$00,$04,$01,$80,$00,$00,$F0,$00
lvl_col_52:       ; 52 F91E
  .byte $00,$00,$00,$00,$00,$00,$00,$80,$00,$01,$00,$00,$00,$00,$00
  .byte $00,$00,$01,$00,$00,$00,$00,$80,$00,$00,$00,$01,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$01,$00,$00,$00,$80,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0,$00
lvl_col_53:       ; 53 F96A
  .byte $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$01,$00,$00,$80,$00
  .byte $00,$00,$01,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$77,$00,$80,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$79,$00,$00,$00
  .byte $00,$00,$00,$C0,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$40,$30,$00
lvl_col_54:       ; 54 F9B6
  .byte $00,$00,$00,$00,$0C,$0E,$00,$00,$00,$00,$00,$78,$00,$00,$00
  .byte $00,$00,$00,$01,$0D,$0F,$00,$00,$00,$80,$00,$7A,$00,$80,$00
  .byte $00,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7B,$00,$80,$00
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$00,$C0,$40,$C0,$00,$20,$00,$00,$00,$00,$00,$F0,$00
lvl_col_55:       ; 55 FA02
  .byte $00,$00,$00,$00,$00,$00,$0C,$0E,$00,$00,$00,$00,$00,$80,$00
  .byte $00,$01,$00,$00,$00,$00,$0D,$0F,$00,$01,$00,$00,$00,$80,$00
  .byte $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
  .byte $00,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_56:       ; 56 FA4E
  .byte $00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_57:       ; 57 FA9A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
lvl_col_58:       ; 58 FAE6
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$7A,$7A
  .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

stage_table_start:    ; stage background metatile table
  .byte $20,$20,$20,$20
  .byte $20,$2A,$20,$03
  .byte $04,$05,$06,$07
  .byte $20,$08,$20,$20
  .byte $0D,$0E,$0F,$10
  .byte $11,$12,$13,$14
  .byte $15,$16,$17,$18
  .byte $19,$1A,$1B,$1C
  .byte $20,$20,$2B,$2C
  .byte $2B,$2C,$21,$2D
  .byte $21,$2F,$21,$30
  .byte $20,$31,$35,$36
  .byte $37,$38,$39,$21
  .byte $3A,$20,$3E,$3A
  .byte $21,$21,$21,$21
  .byte $20,$32,$40,$42
  .byte $3C,$20,$44,$45
  .byte $21,$21,$43,$47
  .byte $33,$48,$22,$39
  .byte $21,$49,$21,$4A
  .byte $20,$35,$31,$21
  .byte $2D,$21,$21,$21
  .byte $20,$31,$35,$21
  .byte $4E,$4B,$4B,$2E
  .byte $21,$36,$21,$2F
  .byte $4A,$21,$36,$21
  .byte $2D,$21,$49,$21
  .byte $4D,$2E,$21,$21
  .byte $4F,$22,$4E,$50
  .byte $2F,$37,$30,$39
  .byte $37,$22,$36,$3E
  .byte $21,$38,$21,$51
  .byte $4B,$3D,$21,$3F
  .byte $22,$22,$52,$53
  .byte $55,$20,$53,$3B
  .byte $54,$23,$23,$23
  .byte $22,$22,$56,$57
  .byte $4C,$4C,$21,$21
  .byte $3D,$22,$58,$3D
  .byte $53,$22,$22,$22
  .byte $3C,$20,$59,$3C
  .byte $5A,$5B,$53,$22
  .byte $20,$20,$5A,$5B
  .byte $21,$3E,$21,$37
  .byte $55,$35,$22,$5C
  .byte $21,$3E,$21,$37
  .byte $20,$20,$31,$3A
  .byte $36,$37,$2F,$4D
  .byte $5E,$5F,$60,$61
  .byte $21,$33,$41,$42
  .byte $48,$21,$39,$21
  .byte $49,$21,$4A,$21
  .byte $62,$2F,$63,$30
  .byte $0F,$10,$0F,$10
  .byte $22,$50,$50,$21
  .byte $34,$22,$21,$3D
  .byte $20,$68,$20,$69
  .byte $6A,$20,$6B,$20
  .byte $20,$15,$20,$20
  .byte $11,$12,$13,$14
  .byte $20,$20,$80,$81
  .byte $20,$20,$82,$83
  .byte $20,$20,$20,$84
  .byte $20,$20,$8D,$20
  .byte $20,$7F,$20,$20
  .byte $20,$B3,$20,$20
  .byte $20,$3E,$20,$40
  .byte $42,$20,$43,$20
  .byte $20,$47,$20,$20
  .byte $48,$20,$20,$20
  .byte $0F,$10,$0F,$10
  .byte $20,$20,$42,$20
  .byte $20,$20,$DB,$DC
  .byte $DF,$E0,$E3,$E4
  .byte $20,$F3,$20,$F4
  .byte $F5,$20,$F6,$20
  .byte $85,$86,$87,$88
  .byte $89,$8A,$8B,$8C
  .byte $20,$20,$78,$79
  .byte $20,$20,$7C,$7D
  .byte $20,$20,$7E,$7E
  .byte $FF,$FF,$FF,$FF ; not used
  .byte $FF,$FF,$FF,$FF ; not used
  .byte $CE,$CE,$CF,$CF
  .byte $20,$20,$20,$20
  .byte $00,$00,$00,$00
  .byte $22,$22,$22,$22
  .byte $00,$01,$02,$03
  .byte $04,$05,$06,$07
  .byte $08,$09,$0A,$0B
  .byte $0C,$0D,$0E,$0F
  .byte $65,$66,$67,$68
  .byte $69,$6A,$6B,$6C
  .byte $6F,$70,$71,$71
  .byte $75,$73,$7B,$7B
  .byte $70,$70,$71,$71
  .byte $70,$70,$74,$71
  .byte $70,$77,$71,$71
  .byte $85,$86,$87,$88
  .byte $89,$8A,$8B,$8C
  .byte $FB,$FB,$FC,$FC
  .byte $FF,$FF,$FF,$FF ; not used
  .byte $FF,$FF,$FF,$FF ; not used
  .byte $FF,$FF,$FF,$FF ; not used
  .byte $AB,$AC,$B0,$B1
  .byte $3F,$3F,$41,$41
  .byte $44,$44,$45,$46
  .byte $45,$46,$45,$46
  .byte $49,$4A,$4B,$4C
  .byte $4D,$4E,$50,$51
  .byte $52,$53,$54,$55
  .byte $56,$57,$58,$59
  .byte $5A,$5B,$5C,$5D
  .byte $5E,$5F,$60,$61
  .byte $62,$62,$63,$63
  .byte $00,$01,$02,$03
  .byte $08,$08,$09,$09
  .byte $04,$05,$06,$07
  .byte $0A,$0B,$0C,$0D
  .byte $DF,$E0,$E1,$E2
  .byte $1F,$24,$25,$26
  .byte $13,$14,$27,$12
  .byte $02,$01,$01,$02
  .byte $F0,$F1,$F2,$F2
  .byte $F7,$F8,$F9,$FA
  .byte $8E,$8F,$90,$90
  .byte $91,$92,$90,$90
  .byte $93,$94,$90,$90
  .byte $20,$20,$01,$02
  .byte $20,$20,$00,$00
  .byte $20,$20,$78,$79
  .byte $20,$20,$71,$71
  .byte $20,$20,$72,$73
  .byte $20,$20,$73,$73
  .byte $20,$20,$75,$73
  .byte $20,$20,$73,$76
  .byte $20,$20,$7C,$7D
  .byte $20,$20,$7E,$7E
  .byte $97,$98,$9F,$A0
  .byte $99,$9A,$A1,$A2
  .byte $9B,$9C,$A3,$A4
  .byte $9D,$9E,$A5,$A6
  .byte $20,$20,$3F,$3F
  .byte $20,$20,$1B,$1C
  .byte $11,$0E,$0F,$10
  .byte $20,$20,$17,$18
  .byte $20,$20,$19,$1A
  .byte $20,$20,$3F,$42
  .byte $20,$20,$3E,$3F
  .byte $95,$96,$90,$90
  .byte $0F,$10,$15,$16
  .byte $1D,$1E,$20,$20
  .byte $00,$00,$20,$20
  .byte $64,$64,$20,$20
  .byte $6D,$6E,$20,$20
  .byte $72,$73,$20,$20
  .byte $73,$73,$20,$20
  .byte $7A,$7A,$20,$20
  .byte $75,$73,$20,$20
  .byte $73,$76,$20,$20
  .byte $A7,$A8,$20,$20
  .byte $AD,$AE,$B2,$20
  .byte $41,$41,$20,$20
  .byte $41,$43,$20,$20
  .byte $40,$41,$20,$20
  .byte $FF,$FF,$FF,$FF   ; not used
  .byte $20,$10,$20,$10
  .byte $A9,$AA,$20,$AF
  .byte $0F,$10,$0F,$10   ; not used?
  .byte $20,$3E,$20,$40
  .byte $20,$F3,$20,$F4
  .byte $FF,$FF,$FF,$FF   ; not used
  .byte $42,$20,$43,$20
  .byte $F5,$20,$F6,$20
  .byte $FF,$FF,$FF,$FF   ; not used
  .byte $00,$00,$00,$00

boss_table_start:   ; @fdf2 boss background metatile table
  .byte $20,$20,$20,$20
  .byte $20,$08,$20,$20
  .byte $2D,$20,$32,$20
  .byte $35,$36,$37,$38
  .byte $20,$20,$20,$3B ; 10
  .byte $25,$20,$20,$20
  .byte $20,$20,$3C,$20
  .byte $20,$39,$20,$20
  .byte $1D,$1E,$16,$17 ; 20
  .byte $20,$1A,$1B,$1C
  .byte $20,$20,$20,$26
  .byte $3D,$24,$27,$28
  .byte $0D,$0E,$0F,$10 ; 30
  .byte $11,$12,$13,$14
  .byte $15,$16,$17,$18
  .byte $19,$1A,$1B,$1C
  .byte $20,$2A,$20,$03 ; 40
  .byte $04,$05,$06,$07
  .byte $87,$88,$89,$8A
  .byte $20,$8B,$8C,$8D
  .byte $8E,$8F,$90,$91 ; 50
  .byte $92,$20,$93,$94
  .byte $95,$96,$97,$98
  .byte $99,$9A,$F4,$22
  .byte $9C,$9D,$9E,$9F ; 60
  .byte $A0,$A1,$A2,$A3
  .byte $A4,$A5,$A6,$A7
  .byte $A8,$A9,$20,$AA
  .byte $9B,$22,$AB,$AC ; 70
  .byte $AD,$AE,$AF,$B0
  .byte $B1,$B2,$B3,$B4
  .byte $B5,$B6,$B7,$B8
  .byte $20,$B9,$BA,$BB ; 80
  .byte $BC,$BD,$F0,$BE
  .byte $AC,$BF,$C0,$C1
  .byte $C2,$C3,$C4,$C5
  .byte $C6,$C7,$C8,$C9 ; 90
  .byte $CA,$CB,$CC,$F2
  .byte $CD,$CE,$CF,$D0
  .byte $F3,$D1,$D2,$D3
  .byte $D4,$D5,$D6,$D7 ; A0
  .byte $D8,$F1,$D9,$DA
  .byte $DB,$DC,$DD,$DE
  .byte $B2,$B3,$B4,$B5
  .byte $B6,$20,$B7,$20 ; B0
  .byte $20,$20,$B8,$B8
  .byte $C0,$20,$C1,$20
  .byte $C9,$20,$20,$20
  .byte $20,$CA,$20,$20 ; C0
  .byte $20,$20,$20,$D3
  .byte $D8,$20,$D9,$20
  .byte $20,$20,$20,$8D
  .byte $20,$90,$20,$91 ; D0
  .byte $20,$96,$20,$20
  .byte $20,$9F,$20,$20
  .byte $20,$20,$20,$A4
  .byte $20,$A9,$AA,$AB ; E0
  .byte $20,$20,$20,$6C
  .byte $20,$6F,$20,$20
  .byte $70,$71,$72,$73
  .byte $20,$E6,$20,$E7 ; F0
  .byte $20,$82,$20,$83
  .byte $20,$20,$20,$88
  .byte $20,$20,$20,$28
  .byte $20,$20,$29,$2A ; 100
  .byte $20,$20,$2B,$20
  .byte $2C,$2D,$33,$34
  .byte $32,$20,$39,$3A
  .byte $3B,$3C,$20,$43 ; 110
  .byte $41,$42,$48,$49
  .byte $20,$4A,$20,$20
  .byte $4F,$50,$55,$56
  .byte $57,$58,$61,$62 ; 120
  .byte $5B,$5C,$65,$66
  .byte $5D,$5E,$67,$68
  .byte $5F,$60,$69,$6A
  .byte $20,$6B,$20,$74 ; 130
  .byte $6E,$6F,$77,$78
  .byte $70,$71,$79,$7A
  .byte $72,$73,$7B,$7C
; section 50 for boss start, metatile table
;      TL, TR, BL, BR
  .byte $20,$7D,$81,$82 ; 140
  .byte $80,$20,$85,$86
  .byte $20,$B9,$BA,$BB
  .byte $EA,$20,$8E,$8F
  .byte $20,$20,$6D,$6E ; 150
  .byte $1F,$3A,$18,$19
  .byte $33,$34,$20,$20
  .byte $C2,$C3,$20,$C4
  .byte $29,$2A,$2E,$2F ; 160
  .byte $2B,$2C,$30,$31
  .byte $97,$98,$99,$9A
  .byte $78,$79,$7A,$7B
  .byte $3D,$3E,$44,$45 ; 170
  .byte $4B,$4C,$51,$52
; not used
  .byte $FF,$FF,$FF,$FF
  .byte $FF,$FF,$FF,$FF
; not used
  .byte $BC,$BD,$BE,$BF ; 180
  .byte $C5,$C6,$C7,$C8
  .byte $CB,$CC,$CD,$CE
  .byte $CF,$D0,$D1,$D2
  .byte $D4,$D5,$D6,$D7 ; 190
  .byte $AC,$AD,$AE,$AF
  .byte $B0,$B1,$B1,$B0
  .byte $92,$93,$94,$95
  .byte $9B,$9C,$9D,$9E ; 1A0
  .byte $A0,$A1,$A2,$A3
  .byte $A5,$A6,$A7,$A8
  .byte $74,$75,$76,$77
  .byte $7C,$7D,$7E,$7F ; 1B0
  .byte $7E,$7F,$80,$81
  .byte $84,$85,$86,$87
  .byte $89,$8A,$8B,$8C
  .byte $2E,$2F,$35,$36 ; 1C0
  .byte $30,$31,$37,$38
  .byte $3F,$40,$46,$47
  .byte $4D,$4E,$53,$54
  .byte $59,$5A,$63,$64 ; 1D0
  .byte $6C,$6D,$75,$76
  .byte $7E,$7F,$83,$84
  .byte $1D,$09,$1E,$0B
  .byte $1F,$1F,$29,$29 ; 1E0
  .byte $22,$1F,$24,$23
  .byte $1F,$22,$23,$24
  .byte $09,$0A,$0B,$0C
  .byte $00,$00,$00,$00 ; 1F0
  .byte $20,$20,$20,$20
  .byte $FF,$FF,$FF,$FF
  .byte $20,$20,$01,$02
  .byte $E8,$E9,$20,$20 ; 200  @FFF2 platform tiles, 80 in the column table, top left side, top right side, bottom left, bottom right
  .byte $00,$00,$00,$00
; VECTOR DATA NMI, RESET, IRQ
; $6C,$83,$00,$81,$0A,$84
; Character memory
.segment "CHARS"
  .incbin "tfrr.chr"