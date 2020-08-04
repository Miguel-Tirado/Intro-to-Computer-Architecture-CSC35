.data
Message:
     .ascii "Exams are never fun!\o"

.text
.global _start
_start:
    mov $10,%rbx
While:
    cmp $14, %rbx
    jg End
    mov %dh, Message(%rbx)
    subb $32,Message(%rbx)
    add $1, %rbx
    jmp While
End:
    mov %rbx, %rax
    mov $Message, %rax
    call PrintCString
    call EndProgram

