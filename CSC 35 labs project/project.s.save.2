.data 
Message:
    .ascii "Welcome to Rick and Morty's Mystery Word!\n\0"
P1Mes:
    .ascii "Player 1, enter a word: \0"
GameMes1:
    .ascii "\nGuess a letter: \0"
GameMes2:
    .ascii "\nYour secret word: \0"
GameWin:
    .ascii "Congrats! You guessed the secret word!\n\0"
Close:
    .ascii "\n\0"
Buffer1:
    .space 30
Buffer2:          #Dash Buffer 
    .space 30

.text
.global _start
_start:
   mov $Message, %rax
   call PrintCString 

   mov $P1Mes, %rax
   call PrintCString
   
   mov $30, %rbx 
   mov $Buffer1, %rax
   call ScanCString 
   
   mov $Buffer1, %rax
   call LengthCString
   mov %rax, %rbx
   sub $1, %rbx  #testing 
   mov $0, %rcx
  # mov $0, %r9         #Test Counter
   call ClearScreen 
   
ForLoop:                          #This For Loop changes the string in buffer one to dashes ----
   cmp %rbx, %rcx
   jg End
   movb $45, %ah
   mov %ah, Buffer2(%rcx)
   add $1, %rcx
   jmp ForLoop
End:
   mov $GameMes2, %rax
   call PrintCString
   mov $Buffer2, %rax
   call PrintCString
  # mov $Close, %rax
  # call PrintCString

Do:
  mov $0, %r9 #test reset count
  mov Buffer2, %r10  #test
  cmp Buffer1, %r10  #test
  je End2             #test
  mov  $GameMes1, %rax
  call PrintCString
  call ScanChar
Loop:
  cmp %rbx, %r9
  jg End2
  cmp %al,Buffer1(%r9)
  je Display
  add $1, %r9 
  jmp Loop
Display:
  movb %al, Buffer2(%r9)
   #add $1, %r9
   #jmp Loop


  mov $GameMes2, %rax
  call PrintCString
  mov  $Buffer2, %rax
  call PrintCString
 # mov $Close, %rax
 # call PrintCString

  mov $Buffer2, %r10
  cmp $Buffer1, %r10
  jne Do
End2: 
  call EndProgram


