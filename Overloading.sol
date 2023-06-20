pragma solidity >=0.8.1;

contract Overloading{
    //Definir una funcion dos veces con el mismo nombre, la diferencia son parametros
    e     /*
    function x(uint lightSwitch, uint wallet){
    }
 ```
    function x(uint wallet){
    }*/

    function getSum(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return a + b + c;
    }
}