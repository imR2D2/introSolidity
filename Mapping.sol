pragma solidity >= 0.8.1;

contract Mapping{
    //Creamos un mapping que usara una direccion de cuenta
    mapping(address => uint) public myMap;

    //Funcion para obtener el mapa o el address y numero

    function getAddress(address _addr) public view returns(uint){
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public{
        myMap[_addr] = _i;
    }

    function deleteAddress(address _addr)public{
        delete myMap[_addr];
    }

    //MAPPINGSSSS ANIDADOSSS
    //Pelicula
    mapping(uint => Movie) public movie;
    //Direccion de billeterea, mapping adentro de otro
    mapping(address => mapping(uint => Movie)) public myMovie;
    //Datos de la pelicula
    struct Movie{
        string title;
        string director;
    }

    //Agregar pelicula
    function addMovie(uint id, string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }

    //Anidar pelicula
    function addMyMovie(uint id, string memory title, string memory director) public{
        myMovie[msg.sender][id] = Movie(title, director);
    }

    function mostrarMovie(uint id) public view returns(string memory title){
            Movie storage myMovieData = myMovie[msg.sender][id];
            return (myMovieData.title);
    }

}