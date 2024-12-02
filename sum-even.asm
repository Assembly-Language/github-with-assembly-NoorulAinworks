;Noor Ul AIn
;23-NTU-CS-1221
;Task for even numbers
include irvine32.inc
.data
myArray word 2,-3,5,6,-9
msgSum byte "Sum of even numbers:",0
msgCount byte "Total even numbers:",0
sum dword 0
count dword 0
.code
main proc
mov eax,0
mov esi,offset myArray
mov ecx,lengthof myArray
negativeNumbers:
mov ax,word ptr[esi]
test ax,0000000000000001b
jnz skipNegative
movsx eax,word ptr [esi]
add sum,eax 
add count,1   
skipNegative:
add esi,type myArray 
loop negativeNumbers
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