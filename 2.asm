; 2.asm  -> build => 2.exe
include \masm32\include\masm32rt.inc

.data
msgN    db "Enter the Fibonacci number to calculate (N): ",0
msgRes  db "Fibonacci: ",0
nl      db 13,10,0
inbuf   db 64 dup (0)
outbuf  db 32 dup (0)

.data?
n    dd ?
t1   dd ?
t2   dd ?
tmp  dd ?
cnt  dd ?

.code
start:
  ; Read N as text -> convert to dword
  invoke StdOut, addr msgN
  invoke StdIn,  addr inbuf, 63
  invoke atodw,  addr inbuf     ; EAX = N
  mov n, eax

  ; if (n <= 2) eax = 1
  mov  eax, n
  cmp  eax, 2
  jg   fib_calc
  mov  eax, 1
  jmp  fib_out

fib_calc:
  mov  t1, 1
  mov  t2, 1
  mov  eax, n
  sub  eax, 2
  mov  cnt, eax

fib_loop:
  cmp  cnt, 0
  jle  fib_done
  mov  eax, t1
  add  eax, t2
  mov  tmp, eax
  mov  eax, t2
  mov  t1, eax
  mov  eax, tmp
  mov  t2, eax
  dec  cnt
  jmp  fib_loop

fib_done:
  mov  eax, t2                 ; EAX holds result

fib_out:
  invoke dwtoa, eax, addr outbuf
  invoke StdOut, addr msgRes
  invoke StdOut, addr outbuf
  invoke StdOut, addr nl
  exit
end start
