.data 
Mes:
   .ascii "Exams are never fun!\n\0"
.text
.global _start 
_start:
     mov $10, %rax
While:
     cmp $14, %rax
     jg End 
     subb $32,Mes(%rax)
     add $1, %rax 
     jmp While
End:
    mov $Mes, %rax
    call PrintCString
    call EndProgram
