pragma solidity >= 0.8.1;

contract Bits{
    uint numero = 3;
    
    uint32 a = 0x12345678;
    //Podemos reducir los gastos de gas fee
    uint16 b = uint16(a); //b = 0x5678
    
}