#lab02.s
#Miguel Tirado
#

.data 
Message: 
    .ascii "Getting a unicorn hair     : 30 points \n\0"
Message2:
    .ascii "Cleaning your wand         : 5 points \n\0"
Message3:
    .ascii "Losing your wand           : -15 points \n\0"
Question1:
    .ascii "How many students have unicorn hair? \n\0"
Question2:
    .ascii "How many students cleaned thier wands \n\0"
Question3: 
    .ascii "How many students lossed thier wands \n\0"
Result1: 
    .ascii "Gryffindor gained \0"
Result2:
    .ascii " points! \n\0"

.text
.global _start

_start: 
    mov $Message, %rax
    call PrintCString

    mov $Message2, %rax
    call PrintCString

    mov $Message3,%rax
    call PrintCString
    
    mov $Question1, %rax
    call PrintCString
    
    call ScanInt
    imul $30, %rax
    add %rax,%rbx

    mov $Question2,%rax
    call PrintCString

    call ScanInt
    imul $5, %rax
    add %rax,%rbx

    mov $Question3,%rax
    call PrintCString

    call ScanInt
    imul $-15,%rax
    add %rax, %rbx

    mov $Result1,%rax
    call PrintCString

    mov %rbx,%rax
    call PrintInt

    mov $Result2,%rax
    call PrintCString

    call EndProgram
