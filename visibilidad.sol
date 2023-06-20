pragma solidity >=0.8.1;

contract Visibilidad{

    uint public data = 100;

    function x() private view returns(uint){
        uint data = 9;
        return data;
    }

    function y() public view returns(uint){
        return x();
    }
}