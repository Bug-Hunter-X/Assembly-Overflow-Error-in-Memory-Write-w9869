```assembly
mov ax, bx
add ax, cx
jnc store_result ; Jump if no carry
; Handle overflow here (e.g., set an error flag, use a larger register)
mov dx, 0FFFFh ; Indicate overflow
jmp end
store_result:
mov dx, ax
mov [2000h], dx
end:
```
This improved code checks for a carry flag (`jc` or `jnc`) after the addition. If a carry occurs (indicating overflow), appropriate error handling is implemented.  This could involve setting an error flag, using a larger register size (e.g., 32-bit), or taking other corrective actions.