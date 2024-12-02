;Noor Ul Ain
;23-NTU-CS-1221
;Task for positive numbers
include irvine32.inc
.data
myArray word 2,-3,5,6,-9
msgSum byte "Sum of Positive Numbers:",0
msgCount byte "Total Positive Numbers:",0
sum dword 0
count dword 0
.code
main proc
mov eax,0
mov esi,offset myArray
mov ecx,lengthof myArray
positiveNumbers:
mov ax,word ptr[esi]
test ax,8000h
jnz skipPositive
movsx eax,word ptr [esi]
add sum,eax 
inc count
skipPositive:
add esi,type myArray
loop positiveNumbers
mov edx,offset msgSum
call writestring

call crlf

mov eax,sum
call writeint
call crlf 

mov edx,offset msgCount
call writestring

call crlf

mov eax,count
call writeint
exit
main endp
end main