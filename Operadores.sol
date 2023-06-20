pragma solidity >= 0.8.1;

contract Operadores {
    function validacion() public view returns(uint){
        uint a = 12;
        uint b = 21;

        uint resultado = (a==12 ? a : b);
        return resultado;
    }
} 