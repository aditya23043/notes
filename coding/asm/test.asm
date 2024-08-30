section .bss
  ; variables

section .data
  ; constants
  hello: db "something", 10
  ; label < define byte > <string> <length>
  helloLen: equ $-hello

section .text
  global _start     ; entry point

  _start:           ; like the main function call

    mov rax, 1        ; sys write
    mov rdi, 1        ; stdout
    mov rsi, hello    ; msg to write
    mov rdx, helloLen ; msg length
    syscall           ; call kernel

    ; SEG FAULT if we try to run the code
    ; at this point

    mov rax, 60       ; sys_exit
    mov rdi, 0        ; error code 0 for success
    syscall           ; call kernel

; TO RUN THE CODE
; nasm -felf64 *.nasm
; ld *.o -o *
