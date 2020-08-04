.data 
Message: 
    .ascii "Please enter a number to divide : \n\0"
.text
.global _start 

_start: 
    mov $Message, %rax
    call PrintCString 
    
    mov $200, %rax
    mov $10, %rbx
    cqo
    idiv %rbx
    
   
    Call PrintInt
    

    call EndProgram 
