
.section .text
.globl mymax
mymax:
  addiu $t0, $0, 0    # $t0 -> i

for:
  slt $t3, $t0, $a3  # da li je i<size
  beq $t3, $0, kraj

  sll $t1, $t0, 3     # i*4 -> aritmetika pointera
  addu $t2, $a2, $t1
  l.d $f4, ($t2)      # sa lokacije iz a2 loadaj mi double
  
  c.lt.d $f12, $f4    # da li je start<nums[i]
  addiu $t0, $t0, 1
  bc1f for
  mov.d $f12, $f4 
  j for

kraj:
  mov.d $f0, $f12
  jr $ra
