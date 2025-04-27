#################################################################
#
#	To compile: gcc -no-pie -o minimum minimum.s
#	To run:		./minimum
#
#################################################################

			.data

fmt_str:	.string "Minimum is %c = %d\n"

a:			.long 8
b:			.long 5
c:			.long 2

#################################################################

		.text
		.global	main

main:
		push %rbp

first:
		mov a, %edx
		mov $'A', %sil
second:		
		cmp b, %edx
		jb third
		mov b, %edx
		mov $'B', %sil
		# bez tego jmp disp
third:
		cmp c, %edx
		jb disp
		mov c, %edx
		jmp disp

disp:
		mov $fmt_str, %rdi
		mov $0, %al
		call printf

# koniec funkcji main

		pop %rbp
		xor %rax,%rax
		ret


#################################################################
