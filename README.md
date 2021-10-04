# blockchain_masan

## 리스트 

struct --> {input_add, input_name, input_phone}  
test_list --> "0x1111111", "문병선" , 01053869303 입력을 하였다 생각하면  
test_list ->  
{  
    input_add : "0x111111",  
    input_name : "문병선",  
    input_phone : 01053869303  
}  

return (test_list.input_add)  --> "0x111111"  
return (test_list.input_name)  --> "문병선"  

## 배열


배열 sample  
num -> [1,2,3,4,5,6,7,8,9]  
1을 출력을 하고 싶다 -> num[0] -> 1을 출력  
4를 출력하고 싶다 -> num[3] -> 4가 출력  

solidity -> 리스트명[] public/private 배열명  
test_list[] public test  --> test_list라는 리스트를 배열로 만드는데 배열의 이름은 test  

배열은 실제 출력을 하면   
```
[  
    {  
    input_add : "0x111111",  
    input_name : "문병선",  
    input_phone : 01053869303  
    },  
    {  
    input_add : "0x222222",  
    input_name : "홍길동",  
    input_phone : 01012345678  
    },  
    {  
    input_add : "0x333333",  
    input_name : "무명",  
    input_phone : 01000000000  
    },  
]  
```

test[0] -> 어떤게 출력이 될까요?   
--> {  
    input_add : "0x111111",  
    input_name : "문병선",  
    input_phone : 01053869303  
    }  
"문병선" 출력을 하고 싶다. ->  test[0].input_name --> "문병선"
