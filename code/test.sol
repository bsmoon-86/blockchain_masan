pragma solidity ^0.4.18; //솔리디티 버전 명시

contract HelloWorld {       //컨트렉트 명시 'contract 컨트렉트명'
    string private stateVariable = "Hello Wolrd";   //string 변수 지정 private은 현재 사용하는 컨트렉트에서만 사용하게 하는 옵션값
    
    function GetHelloWorld() public view returns (string) {     //function은 function의 이름을 호출하면 {}의 코드를 실행시키겠다는 기능
        return stateVariable;   //함수가 호출되면 실행되는 코드 여기서는 stateVariable을 return을 하기 때문에 'Hello World'을 출력한다.
    }
    
}