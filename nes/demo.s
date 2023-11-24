.segment "CODE"

.org $8000 ; Start address, adjust as needed

; NMI (Non-Maskable Interrupt) handler
.org $FFFA
    .word NMIHandler

; Define the message
; message:
;     .text "Hello, World!", 0

NMIHandler:
    ; Initialize PPU
    lda #$00
    sta $2000

    ; Load the address of the message into the A and Y registers
    ; ldy #<message ; Low byte of the address
    ; lda #>message ; High byte of the address

    ; Set the PPU address to $2006
    lda #21
    sta $2006
    lda #$C0
    sta $2006

    lda #$3F
    sta $2007

    ; Transfer the string to VRAM
    ; lda (y),y
    ; sta $2007
    ; iny
    ; lda (y),y
    ; sta $2007
    ; iny
    ; lda (y),y
    ; sta $2007
    ; iny
    ; lda (y),y
    ; sta $2007
    ; iny
    ; lda (y),y
    ; sta $2007
    ; iny
    ; lda (y),y
    ; sta $2007

    ; End program
    rti
