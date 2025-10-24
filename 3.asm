; 3.asm  -> build => 3.exe
include \masm32\include\masm32rt.inc
factorial PROTO :DWORD

.data
lead     db "n! = ",0
mulSign  db " * ",0
arrw     db " => ",0
nl       db 13,10,0

.data?
n    dd ?
i    dd ?
fact dd ?

.code
start:
  ; input exactly "n = 5"
  mov  eax, sval(input("n = "))
  mov  n, eax

  ; compute factorial(n)
  invoke factorial, n
  mov  fact, eax

  ; now print "n! = 1 * 2 * 3 * 4 * 5 => 120"
  print OFFSET lead
  mov  i, 1
@@PL:
  mov  eax, i
  print str$(eax)
  mov  eax, i
  cmp  eax, n
  jge  @@AFTER
  print OFFSET mulSign
  inc  i
  jmp  @@PL
@@AFTER:
  print OFFSET arrw
  print str$(fact)
  print OFFSET nl
  exit

; factorial(n) -> EAX (32-bit, fine for n<=12)
factorial PROC uses ecx edx pN:DWORD
  mov  ecx, pN
  cmp  ecx, 1
  ja   @@DO
  mov  eax, 1
  ret
@@DO:
  mov  eax, 1
@@LP:
  mul  ecx
  dec  ecx
  cmp  ecx, 1
  jae  @@LP
  ret
factorial ENDP

end start