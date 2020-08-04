#Miguel Tirado
#CSC 35 lab 3 
#10/17/2017

.data 
  Message1:
      .ascii "Welcome To Westeros,You will be Sorted into one of the four noble houses.\n"
      .ascii "The Sorting Hat is being placed upon your head.\n\0"
  Question1: 
      .ascii "Do you seek the Iron Thrown?  (1=yes, 2=no)\n\0"
  Question2:
      .ascii "Are you noble?                (1=yes, 2=no)\n\0"
  House1: 
      .ascii "Lanester\n\0"
  House2:
      .ascii "Stark\n\0"
  House3: 
      .ascii "Targaryen\n\0"
  House4:
      .ascii "Arryn\n\0"

.text
.global _start 

_start:
    mov $Message1, %rax
    call PrintCString
    
    mov $Question1, %rax
    call PrintCString

    call ScanInt 
    cmp $2, %rax
    jl Else
    #True 
    mov $House2, %rax
    call PrintCString
    jmp End

   Else:
    mov $House1, %rax
    call PrintCString

    mov $Question2, %rax
    call PrintCString 

    call ScanInt
    cmp $2, %rax
    jl Else2
    mov $House1, %rax
    call PrintCString
   Else2:
     mov $House3, %rax
     call PrintCString
   End:
    call EndProgram   
    

 


