STD_OUTPUT_HANDLE   equ -11 ; const
EXIT_STATUS         equ 0

extern ExitProcess
extern WriteFile
extern GetStdHandle

	SECTION .data           ; data section
msg:	db "Hello World", 0x0d, 0x0a  ; the string to print, 0x0d=cr
len:	equ $-msg           ; "$" means "here", len is a value, not an address
stdout:       dw 0
bytesWritten: dw 0
                    

	SECTION .text		; code section
        global main		; make label available to linker
main:				; standard  gcc  entry point

    mov     rcx, STD_OUTPUT_HANDLE
    call    GetStdHandle
    mov     [rel stdout], rax

    mov     rcx, [rel stdout]
	mov     rdx, msg
    mov     r8, len
    mov     r9, bytesWritten
    push    qword 0
    call    WriteFile

    mov     rcx, EXIT_STATUS
    call    ExitProcess