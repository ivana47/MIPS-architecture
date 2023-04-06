.section .text
.globl mymax

mymax:

#mtc1 $f12,$f4
#l.s $f6,($a2)
#mtc1 $a3,$f8  

addiu $t0, $0,0  #i=t
for:
slt $t1, $t0,$a3
beq $t1, $0, kraj

sll $t2,$t0,4 #i*8 jer je niz doubls
addu $t2,$a2,$t2 #ne moras loadat cont double* nums  nums[i]
#eh ako zelis da poredis double i double
l.d $f4,($t2)  #sa lokacije iz a2 loadaj mi double, *num ALI NE NEGO LODAS t2

c.lt.d $f12, $f4   # da li je start<nums[i]
bc1f uvecaji
#NE MOZE add.d
mov.d $f12,$f4
addiu $t0,$t0,1

uvecaji:
addiu $t0,$t0,1
j for
kraj:

mov.d $f0,$f12

jr $ra

