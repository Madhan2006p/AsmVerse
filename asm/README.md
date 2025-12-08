# 🧩 AsmVerse

A journey into the world of **Assembly Language** 🧠  
This repository contains my experiments, mini-projects, and notes while learning low-level programming using ASM (x86/x86_64, NASM).

---

## 🧱 Topics Covered
- Basic syntax and registers  
- Memory addressing and stack usage  
- System calls (Linux & Windows)  
- File I/O in ASM  
- Loops, functions, and macros  
- Integration with C (inline assembly)

---

## ⚙️ Tools & Setup
- **Assembler:** NASM / MASM  
- **Linker:** `ld` or `gcc` (for Linux)  
- **Editor:** VS Code or Vim  
- **Debugger:** GDB or x64dbg  

---

## 🚀 Example Build Commands (Linux)
```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
./hello
