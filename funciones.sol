//SPDX-License-Identifier: MIT

pragma solidity >= 0.8.1;

contract Funciones {
    
    uint a = 40;

    function sumaValores() public view returns(uint) {
        //uint a = 12;
        uint b = 19;
        uint resultado = a + b;
        return resultado;
    }
}