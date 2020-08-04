.data 
  Message:
      .ascii "Welsome to Westerous! you will be sorted into one of four Houses.\n"
      .ascii "The Sorting Hat is being placed opon your head.\n\0"
  Question1: 
      .ascii "Do you seek  the Iron Thrown        (1=yes, 2=no)\n\0"
  Question2:
      .ascii "Are You noble?                     (1=yes, 2=no)\n\0"
  Question3: 
      .ascii "Are you humble?                    (1=yes, 2=no)\n\0"
  House1:
      .ascii "Lanester!\n\0"
  House2:
      .ascii "Stark!\n\0"
  House3:
      .ascii "Targaryen!\n\0"
  House4:
      .ascii "Arryn!\n\0"

.text 
.global _start

_start:
   mov $Message, %rax 
   call PrintCString 

   mov $Question1, %rax
   call PrintCString

   call ScanInt
   cmp $1, %rax
   je Then

   #False Block 
   #mov $House2, %rax
   #call PrintCString

   mov $Question3, %rax
   call PrintCString

   call ScanInt
   cmp $1, %rax
   je Then3
   #False Block 3
   mov $House4, %Rax
   call PrintCString
   jmp End
  Then3:
   #True Block 3
   mov $House2, %rax
   call PrintCString
   jmp End

  Then: 
   #True Block
   #mov $House1, %rax
   #call PrintCString
   
   mov $Question2, %rax 
   call PrintCString
   
   call ScanInt
   cmp $1, %rax
   je Then2

   #False Block 2
   mov $House1, %rax
   call PrintCString
   jmp End

 Then2:
   mov $House3, %rax
   call PrintCString
  jmp End

  End:
   call EndProgram  
   
    
 
