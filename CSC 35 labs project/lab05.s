#lab05.s
#Miguel Tirado 
#Date 11/07/2017 
.data 
Message: 
    .ascii "I'M MR. MEEKSEEKS. LOOK AT ME!\n\0"
Message2: 
    .ascii "? CAN DO!\n\0"
Task: 
    .space 30             #This is a buffer with size 30 
.text 
.global _start

_start:
    mov $Message, %rax 
    call PrintCString 

    mov $30, %rbx
    mov $Task,%rax 
    call ScanCString
    mov $Task, %rax 
    call LengthCString
    mov %rax, %rbx
    mov $0, %rcx
Loop:
    cmp %rbx, %rcx
    jg END 
   
    movb Task(%rcx), %dh
    cmp $97,%dh 
    jl Next

    cmp $122,%dh
    jg Next 

    subb  $32, Task(%rcx)
Next:
    add $1, %rcx 
    jmp Loop      

END: 
   mov $Task, %rax
   Call PrintCString 
   mov $Message2, %rax
   call PrintCString
   call EndProgram 
