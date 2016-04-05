.arm.little

; Disable whitelist check
.create "patch1.bin", 0
.thumb
    mov r0, #0
    nop
.close

; Disable blacklist check (mostly demo carts)
.create "patch2.bin", 0
.thumb
    mov r0, #1
    nop
.close

; Disable save type check
.create "patch3.bin", 0
.thumb
    mov r0, #1
    nop
.close

; Disable DSi cartridge save exploit check
.create "patch4.bin", 0
.thumb
    mov r0, #1
    nop
.close
