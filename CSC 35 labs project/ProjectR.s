.data 
Mes:
    .ascii "Welcome to Vault 35! \n\0"
p1Mes:
    .ascii "User:1, Please enter a password: \0"
GMes1:
    .ascii "\nGuess a letter: \0"
GMes2: 
    .ascii "\nYour secret word: \0"
GWin:
    .ascii "\nCongrats! You have entered vault 35\n\0"
GLoss:
    .ascii "\nWere sorry the deathclaw has got you!\n\0"
WordB:
    .space 30
DashB:
    .space 30, 0

.text
.global _start
_start:
   mov $2, %rax
   call SetForeColor

   mov $Mes, %rax
   call PrintCString
   
   mov $p1Mes, %rax
   call PrintCString
   
   mov $30, %rbx
   mov $WordB, %rax
   call ScanCString

   mov $WordB, %rax
   call LengthCString

   mov %rax, %rbx
   mov $0, %rcx
   mov $11, %r10
   mov $0, %r11 
   call ClearScreen
#-----------------For Loop/Dash Loop----------------------#
DLoop:                    
   cmp %rbx, %rcx
   je End
   movb $45, %ah
   mov %ah, DashB(%rcx)
   add $1, %rcx
   jmp DLoop
End:
   mov $GMes2, %rax
   call PrintCString
   mov $DashB, %rax
   call PrintCString
#------------------This is a Do While Loop----------------#
Do:
  sub $1, %r10
  cmp %r10, %r11
  je Loser                  
  mov $0, %r8           
  mov $GMes1, %rax
  call PrintCString
  call ScanChar
InLoop:
  cmp %rbx, %r8
  jg InLoopDone
  #---IF Statment-----------------------------------------#
  cmp %al,WordB(%r8)    
  je Uncover
  #-------------------------------------------------------# 
  add $1, %r8
  jmp InLoop
Uncover:
  movb %al, DashB(%r8)
  add $1, %r8
  jmp InLoop
InLoopDone:  
  mov $GMes2, %rax
  call PrintCString

  mov $DashB, %rax
  call PrintCString

  mov DashB, %r9
  cmp WordB, %r9   
  jne Do              
#--------This is the end of the Do while Loop------------# 
Exit:
  mov $6, %rax
  call SetForeColor
  mov $GWin, %rax
  call PrintCString
  call EndProgram
Loser:
  mov $1, %rax
  call SetForeColor
  mov $GLoss, %rax
  call PrintCString
  call EndProgram
