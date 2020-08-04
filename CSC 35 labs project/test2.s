.data 
Message: 
    .ascii "Hellow\n\0"

.text
.global _start

_start:
   mov $Message, %rax
   call PrintCString

   mov $1846, %rax
   imul $2, %rax
   call PrintInt

  call  EndProgram
