.data

.text
.global _start 

_start:
     mov $1000, %rax
     sub $1, %rax
 Loop:
     cmp $1, %rax
     jl End
     call PrintInt
     sub $2, %rax
     jmp Loop
End:
    call EndProgram     
