.arm.little

.create "patch.bin", 0
.thumb
    mov r0, #0
    add sp, #0x138
    pop {r4-r6, pc}
.close
