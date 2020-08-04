#Lab04.s
#Miguel Tirado
#12/24.2017

.data 
Message:
    .ascii "Guess: \n\0" 
Low:
    .ascii "You are to low\n\0"
High: 
    .ascii "You are to high\n\0"
Result:
    .ascii "Correct! it took you a total of \0"
Result1: 
    .ascii " guesses!\n\0" 

.text
.global _start 

_start: 
    mov $100, %rax
    call Random
    # call PrintInt Prints Answer 
    mov $0, %rcx       #Counter starts c = 0
    mov %rax, %rdx     # rdx is the random number
    While:
      add $1, %rcx
      call ScanInt
      cmp %rdx, %rax
    
      
      je End
      jg VeryHigh
      jl VeryLow
    
    VeryHigh:
      mov $High, %rax
      call PrintCString
      jmp While

   VeryLow:
      mov $Low, %rax
      call PrintCString
      jmp While

   End:
      mov $Result, %rax
      call PrintCString
      
      mov %rcx, %rax
      call PrintInt

      mov $Result1, %rax
      call PrintCString

      call EndProgram
