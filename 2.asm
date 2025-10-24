; 2.asm  -> build => 2.exe
include \masm32\include\masm32rt.inc

.data
promptN db "Enter the Fibonacci number to calculate (N): ",0
pRes    db "Fibonacci: ",0
nl      db 13,10,0

.data?
n dd ?

.code
start:
  ; ask n on the same line
  mov  eax, sval(input("Enter the Fibonacci number to calculate (N): "))
  mov  n, eax

  ; if n <= 2 -> eax = 1
  mov  eax, n
  cmp  eax, 2
  jg   fib_calc
  mov  eax, 1
  jmp  fib_out

fib_calc:
  ; t1 in EAX = 1, t2 in EDX = 1, loop ECX = n-2
  mov  eax, 1            ; t1
  mov  edx, 1            ; t2
  mov  ecx, n
  sub  ecx, 2

fib_loop:
  jecxz fib_done
  mov  ebx, eax          ; tmp = t1
  add  ebx, edx          ; tmp = t1 + t2
  mov  eax, edx          ; t1 = t2
  mov  edx, ebx          ; t2 = tmp
  dec  ecx
  jmp  fib_loop

fib_done:
  mov  eax, edx          ; result = t2

fib_out:
  print OFFSET pRes
  print str$(eax)
  print OFFSET nl
  exit
end start