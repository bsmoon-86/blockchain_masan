pragma solidity ^0.4.18;

contract test2 {
    uint public storedData;     //uint는 숫자형 데이터 타입
    
    function setData(uint _storedData) public {     //함수명의 ()안에 데이터타입 _데이터명은 함수를 호출할때 변수를 받겠다는 의미. _데이터명은 함수내에서만 사용이 가능하다
        storedData = _storedData;       //4번째 줄에서 선언한 변수에 함수를 호출할때 입력받은 데이터를 넣겠다라는 의미
    }
    
    function getData() public view returns (uint) {     //test.sol에서는 string 타입의 변수를 출력했지만 여기서는 uint 즉 숫자 타입의 변수를 출력하겠다는 의미
        return storedData;
    }
}