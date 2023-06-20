pragma solidity >= 0.8.1;

contract Cadenas{
    string nombre = "Arturo";
    string apellido = "Hernandez";

    function hola() public view returns(string memory){
        return nombre;
    }
    //No se pueden sumar las cadenas

    string nombre = "Arturo";
    function obtenerCaracteres() public view returns(uint){
        //Retornar el nombre.length
        //Convertir cadena en bytes, asi podemos retornar la longuitud

        bytes memory stringToBytes = bytes(nombre);
        return stringToBytes.length;
    }
}