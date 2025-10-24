; 1.asm  -> build => 1.exe
include \masm32\include\masm32rt.inc

.data
repeatTxt db "Repeat ",0
colon     db ":",0
pSum      db "Sum = ",0
nl        db 13,10,0

.data?
n   dd ?
i   dd ?
a   dd ?
b   dd ?
s   dd ?

.code
start:
  ; ask n on the same line (no extra prints)
  mov  eax, sval(input("Enter number of times to compute the n: "))
  mov  n, eax

  mov  i, 1
@@loop:
  mov  eax, i
  cmp  eax, n
  jg   @@done

  ; "Repeat X:"
  print OFFSET repeatTxt
  print str$(i)
  print OFFSET colon
  print OFFSET nl

  ; two inputs and sum
  mov  eax, sval(input("Enter number 1: "))
  mov  a, eax

  mov  eax, sval(input("Enter number 2: "))
  mov  b, eax

  mov  eax, a
  add  eax, b
  mov  s, eax

  print OFFSET pSum
  print str$(s)
  print OFFSET nl

  inc  i
  jmp  @@loop

@@done:
  exit
end start