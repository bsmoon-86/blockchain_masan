pragma solidity ^0.4.18;

contract test5 {
    struct test_list {      //구조체 생성 struct 구조체명
        address input_add;      //구조체의 타입을 설정한다. 데이터타입 데이터명
        string input_name;
        uint input_phone;
    }
    
    test_list[] public test;    //배열 생성 구조체명에 [] 붙이고 public/private 설정 후 배열의 이름을 설정한다. 
    
    function set_list(string _input_name, uint _input_phone) public {
        address _input_add = msg.sender;
        test.push(test_list(_input_add, _input_name, _input_phone));    //배열에 데이터를 추가하려면 .push 명령어를 사용하여 추가한다.
                                                                        //구조체에 데이터를 입력하려면 구조체명(데이터1, 데이터2, 데이터3) 데이터의 타입에 맞게 입력을 하여야 한다. 
        /*
            set_list fucntion 1st call - > 
            [
                {
                    input_add : _input_add,
                    input_name : _input_name,
                    input_phone : _input_phone
                }
            ]
            set_list function 2ed call -> 
            [
                {
                    input_add : _input_add,
                    input_name : _input_name,
                    input_phone : _input_phone
                },
                {
                    input_add : _input_add_2,
                    input_name : _input_name_2,
                    input_phone : _input_phone_2
                }
            ]
        */
    }
    
    function get_list(uint _index) public view returns (address, string, uint) {        //솔리디티에서 return에 배열을 출력을 할 수 없기 때문에 배열의 데이터 값을 하나씩 따로 출력을 해야 한다. 
        return (test[_index].input_add, test[_index].input_name, test[_index].input_phone);     //배열에서 데이터의 값을 출력하려면 배열에서 첫번째 항을 출력 test[0]을 출력하면 구조체가 나오게 되고
                                                                                                //구조체의 값을 출력하려면 구조체의 데이터명을 입력하여 출력 한다. ex. test[0].input_name
    }
}