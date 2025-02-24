mov ecx, value ; Assume value is validated or known to be safe
mov ebx, base_address ; Assume base_address is a valid starting address
mov eax, [ebx + ecx*4 + 0x10]

; Add bounds checking (example - adapt to your specific context): 
mov edi, upper_bound ; define upper_bound for memory allocation
 cmp ebx + ecx*4 + 0x10, edi 
ja error_handler ; jump to error handling if out of bounds

; ... rest of the code ...

error_handler:
; Handle the out-of-bounds error appropriately (e.g., return error code, raise exception)
mov eax, -1 ; Return -1 to indicate error
ret 