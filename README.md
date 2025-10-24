---

```markdown
# 🧠 CEA201 - Computer Organization and Architecture  

> _"A small journey in understanding how computers truly work — from logic gates to machine code."_  

This repository contains my learning notes, lab exercises, and assembly programming assignments for the course **CEA201 – Computer Organization and Architecture** at FPT University.  
It’s built for **educational and personal archival purposes**, to keep memories of my learning path in computer architecture and low-level programming.  

---

## 📘 About the Course  
**CEA201** focuses on how computers execute programs at the hardware and architectural level.  
It explores the internal structure of a CPU, memory organization, data representation, and the fundamentals of machine and assembly languages.

### Core Topics  
- Digital logic and CPU design  
- Memory hierarchy (Cache, RAM, and Storage)  
- Instruction sets and addressing modes  
- Assembly programming (MASM32)  
- Pipelining, RISC architecture, and multicore systems  

---

## ⚙️ Assignment 2 – Assembly Programming (MASM32)  

This folder includes 3 small programs written in **Microsoft MASM32**, compiled and executed in a Windows environment (x86).  
All programs follow the instructor’s Assignment 2 requirements:

| File | Description |
|------|--------------|
| `1.asm` | Loop-based addition program – read pairs of integers and print their sums |
| `2.asm` | Fibonacci number calculator using iterative logic |
| `3.asm` | Factorial calculator using a separate procedure (`factorial PROTO :DWORD`) |

Each program was assembled and tested in **MASM32 v11** using **QEditor**.  
The output exactly follows the expected format shown in the official assignment guidelines.

---

## 🖥️ Example Outputs  

### 🔹 Program 1 – Sum of Pairs  
```

Enter number of times to compute the n: 3
Repeat 1:
Enter number 1: -11
Enter number 2: -23
Sum = -34
Repeat 2:
Enter number 1: 223
Enter number 2: 111
Sum = 334
Repeat 3:
Enter number 1: 90
Enter number 2: 10
Sum = 100

```

### 🔹 Program 2 – Fibonacci  
```

Enter the Fibonacci number to calculate (N): 6
Fibonacci: 8

```

### 🔹 Program 3 – Factorial  
```

n = 5
n! = 1 * 2 * 3 * 4 * 5 => 120

```

---

## 🧩 Tools and Environment
- **Assembler:** Microsoft MASM32 v11  
- **Editor:** QEditor (included in MASM32 package)  
- **Platform:** Windows 10 / 11 (x86)  
- **Language:** Assembly (Intel syntax)

---

## 📜 Disclaimer  
This repository is intended **solely for educational and personal archiving**.  
All works here are done for learning purposes in the CEA201 course.  
Feel free to reference, learn, or adapt — but please **do not submit identical work** for academic credit.

---

## ❤️ Acknowledgements  
Thanks to the CEA201 teaching team at **FPT University** for guiding us through the fascinating world of computer architecture.  
Also, gratitude to everyone who helped make assembly coding a bit less intimidating.

---

> “The closer you get to the metal, the more you respect the machine.”
```

---
