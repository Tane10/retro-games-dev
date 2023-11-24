
message:
    .text "Hello, world!", 0 ;0 is used / required to termate strings

main:
    lda #<message ;Low byte of the adress
    ldy #>message ;High byte of the adress

    rti ; end program