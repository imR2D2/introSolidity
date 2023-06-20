pragma solidity >= 0.8.1;

contract Enums{
    enum tamanoPapasFritas {GRANDE, MEDIANO, PEQUENO}
    //Le indicamos el tamano o que puedes elegir una opcion con el choice
    tamanoPapasFritas choice;
    //Definimos la que sera la predefinida
    tamanoPapasFritas constant defaultChoice = tamanoPapasFritas.GRANDE;

    //Funcion para poder cambiar un Enum
    function setSmall() public {
        choice = tamanoPapasFritas.PEQUENO;
    }

    //Funcion para poder ver el enum
    function getChoice() public view returns (tamanoPapasFritas){
        return choice;
    }

    //Si quieres la opcion por defecto del choice
    function getDefaultChoice() public view returns(uint){
        return uint(defaultChoice);
    }
}