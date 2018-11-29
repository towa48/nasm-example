# hello.asm 
A first program for nasm for Linux, Intel, gcc

* install [nasm](https://nasm.us) first

# Linux x64

```
> nasm -f elf64 -l hello.lst hello.asm
> gcc -o hello hello.o
> ./hello
```

## Windows x64

```
> nasm -f elf64 -l hello_win64.lst hello_win64.asm
> gcc -o hello hello_win64.o
> ./hello
```
