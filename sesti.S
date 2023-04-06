double baz(float f1, double* p1, float f2, int n) {
if (*p1 == 0. || (f1 + f2 < n)) {
return f1 + f2 * n;
}
if (*p1 != 0.) {
return (f1 - f2 * n) / *p1;
}
return f1 * *p1 + n + f2;


.section .text
.globl baz
baz:

l.s $f4,($a1)

bne $f4,$0,ili2


ili2:
add.s 
bne  , ,if2

if2:
