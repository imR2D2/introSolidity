pragma solidity >= 0.8.1;

contract Ciclos{
    /*
    //While
    function whileFunc() public view returns(uint){
        uint a = 2;
        while(a < 5){
            a++;
            return a;
        }
    }

    //DoWhile
    function dowhile() public view returns(uint){
        uint a = 2;
        do{
            return a;
            a++;
        }while(a < 5;)
    }
    */
    //For

    uint[] data = [1,2,3,4,5];
    uint[] dataPares = [1,2,3,4,5, 6, 7, 8, 9, 10];

    //Funcion para ver si el numero existe en la lista de numeros data
    function forCiclo(uint numero) public view returns(bool){

        bool numeroExiste = false;
        for(uint i = 0; i < data.length; i++){
            if(data[i] == numero){
                numeroExiste = true;
            }
        }
        return numeroExiste;
    }

    //Funcion para ver si alguno de los numeros de la lista es un numero par
    function numerosPares() public view returns(uint){
        uint count = 0;
        for(uint i=0; i <dataPares.length; i++){
            if(dataPares[i] % 2 == 0){
                count++;
            }
        }
        return count;
    }
}