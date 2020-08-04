
# lab1.s 
# Miguel Tirado
#
.data 
Message: 
	.ascii "Hello, world!\n\0"
Message1: 
	.ascii "My name is Miguel Eduardo Tirado.\n\0"
Message2: 
	.ascii "To be or not to be.\n\0"
Message3: 
	.ascii "i will graduate in \0"
Message4:
	.ascii " from Sac State!\n\0"
.text
.global _start

_start:
	mov $Message, %rax
	call PrintCString

	mov $Message1, %rax
	call PrintCString

	mov $Message2, %rax
	call PrintCString

	mov $Message3, %rax
	call PrintCString

	mov $2021, %rax
	call PrintInt

	mov $Message4, %rax
	call PrintCString

	Call EndProgram 
