.section .rodata
ispis: .asciiz "MyMax %f\n"
niz: .double 1.,5.7,9.4,14.8,7.1,8.2,10.5
.section .text
.globl main
main:
addiu $sp,$sp,-64
sw $ra,60($sp)

la $t0,niz
l.d $f4, ($t0)  # nums[0]  prvi element
mov.d $f12,$f4
addiu $a2,$t0,0 #kako nums samo ?
addiu $a3 ,$0,7

jal mymax
la $a0,ispis
mfc1 $a2,$f0 #?
mfc1 $a3,$f1
jal printf

lw $ra,60($sp)
addiu $sp,$sp,64

jr $ra

