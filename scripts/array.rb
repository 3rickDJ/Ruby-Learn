puts("Hola BUAPO")
# arr = [1,2,3] -> [2,3,4]
# for i=0; i<2; i++{
#     arr[i] +=1;
# }
arr = [1,2,3]
p arr.map { |n| n = n + 1 ; p n; return n + 1 }
p arr
