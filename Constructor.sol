pragma solidity >= 0.8.1;

contract Miembro{
    string name;
    uint age;

    constructor(string memory _name, uint _age) public{
        name = _name;
        age = _age;
    }
}

contract Instructor is Miembro{
    //Nos sirve para pedir acceso
    constructor(string memory n, uint a) Miembro(n, a) public{}
    
    function getName() public view returns(string memory){
        return name, age;
    }
} 