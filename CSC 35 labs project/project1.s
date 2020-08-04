.data 
Mes:
    .ascii "Welcome TO Rick and Morty's Mystery Word!\n\0"
p1Mes:
    .ascii "Player 1, enter a word: \0"
GameMes1:
    .ascii "Guess a letter: \n\0"
GameMes2:
    .ascii "Your Secret Word: \0"
GameWin:
    .ascii "Congrats! You guessed the secret word !\n\0"
Close:
    .ascii "\n\0"
Buffer1:
    .space 30
Buffer2:
    .space 30

.text
.global _start
_start:
   mov $Mes, %rax
   call PrintCString

   mov  $p1Mes, %rax
   call PrinctCString 
  
   mov $30, %rbx
   mov $Buffer1, %rax
   call ScanCString

   mov $Buffer1, %rax
   call lengthCString
   mov %rax, %rbx
   mov $0, %rcx
   call Clear Screen
FLoop:
   cmp %rbx, %rcx
   jg End:
   movb $45, %ah
   mov %ah, Buffer1(%rcx)
   add $1, %rcx
   jmp FLoop
End:
   mov $GameMes2, %rax
   call PrintCString
   mov $Buffer1, %rax
   call PrintCString
   call EndProgram 

