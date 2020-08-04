.data 
Mes: 
   .ascii "Hellow world \n\0"

.text
.global _start
_start:
    mov $2, %rax
    call SetForeColor
    mov $Mes, %rax
    call PrintCString
    call EndProgram
