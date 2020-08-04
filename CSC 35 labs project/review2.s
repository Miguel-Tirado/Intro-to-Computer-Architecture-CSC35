.data
    Message: 
	.ascii "Please enter your number: \n\0"

.text
.global _start

_start: 
    call ScanInt
    mov %rax, %rcx
    call ScanInt
    cmp %rcx, %rax
    jl Value 
    mov %rcx, %rax 
    call PrintInt 
    call EndProgram
Value:
    call PrintInt 
    call EndProgram 



