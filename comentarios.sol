//Primer SmartContract

pragma solidity >= 0.8.1;


contract Bienvenida {
    constructor() {}
    //Solamente indica la cantidad de veces que se saludaron
    //La funcion VIEW indica que no modificara el estado de la blockchain, sino que solamente leera y devolvera info. Significa que la funcion no consumira gas, ya que no guarda nada en la blockchain, ayudando a no pagar por esa transaccion
    //El returns () se usa para indicar el tipo de dato que devolvera
    function getResult() public view returns(uint){
        uint a = 11;
        uint b = 22;
        uint result = a + b;
        return result;
    }
}