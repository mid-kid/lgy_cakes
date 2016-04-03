.arm.little

.create "patch.bin", 0
.arm
    .word 0xEF260000  ; SWI 0x26
.close
