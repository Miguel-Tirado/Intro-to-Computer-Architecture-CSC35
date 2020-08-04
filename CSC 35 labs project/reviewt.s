.data
Message:
    .ascii "Hellow World\n"


.text
.global _start
_start:
    mov $1, %rax 
    mov $1, %rdi
    mov $Message, %rsi 
    mov $13, %rdx
    syscall 
   
    mov $60, %rax
    mov $0, %rdi
    syscall
