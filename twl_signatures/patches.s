.arm.little

; Main signature check
.create "patch1.bin", 0
.thumb
    mov r0, #0
    add sp, #0x138
    pop {r4-r6, pc}
.close

; RSA function
.create "patch2.bin", 0
.thumb
    mov r0, #1
.close

; Nintendo logo check (not generally needed)
.create "patch3.bin", 0
.thumb
    mov r0, #0
    nop
.close

; Stub SHA function commonly used to compare hashes
.create "patch4.bin", 0
.thumb
    mov r0, #1
    bx lr
.close
