.model small
.data

filename db "hansolo.json", 0
fileHandle dw ?

json_data db "{", 10, "  ""data"": [", 10
json_loop db ","

success_msg db "File created", 0
error_msg db "Failed to create file", 0

.code
org 100h ; TASM entry point

start:
    ; Open file for writing
    mov ah, 3Dh         ; DOS function to open file
    lea dx, filename    ; Load filename into DX
    mov al, 2           ; AL = 2 (write mode)
    int 21h             ; Call DOS
    jc file_error       ; Jump if carry flag set (error)

    mov [fileHandle], ax ; Store file handle

    ; Write JSON data to the file
    mov ah, 40h         ; DOS function to write to file
    mov bx, [fileHandle]
    lea dx, json_data   ; Load address of JSON data into DX
    mov cx, json_size   ; Length of JSON data
    int 21h             ; Call DOS
    jc file_error       ; Jump if carry flag set (error)

    ; Close the file
    mov ah, 3Eh         ; DOS function to close file
    mov bx, [fileHandle]
    int 21h             ; Call DOS

    ; Display success message
    lea dx, success_msg
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4Ch         ; DOS function to exit
    int 21h

file_error:
    lea dx, error_msg
    mov ah, 09h
    int 21h

    ; Exit with error code 1
    mov ax, 4C01h
    int 21h

json_size equ $ - json_data

org 10000h ; Start of data section
