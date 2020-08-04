.data 
Message1:
    .ascii "getting an A :                   30 Points \n\0" 
Message2: 
    .ascii "unturned hw asigmnets :         -15 Points \n\0"
Question1: 
    .ascii "How many people got A's ? \n\0"
Question2:
    .ascii "How manu people have unturned asigments ? \n\0"
Result1: 
    .ascii "You have a total of \0"
Result2: 
    .ascii "Points \n\0"

.text
.global _start

_start:

   mov $Message1, %rax 
   call PrintCString 

   mov $Message2, %rax
   call PrintCString 

   mov $Question1, %rax
   call PrintCString
  
   call ScanInt 
   imul $30,  %rax
   add %rax, %rbx 
   
   mov $Question2, %rax 
   call PrintCString 
  
   call ScanInt
   imul $-15, %rax
   add %rax, %rbx 
        
   mov Result1, %rax
   call PrintCString

   mov %rbx, %rax 
   call PrintInt

   mov Result2, %rax 
   call PrintCString  

   call EndProgram 
    
