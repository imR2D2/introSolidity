pragma solidity >= 0.8.1;

contract Structs {
    struct Libro{
        string titulo;
        string tema;
        uint id_libro;
        string autor;
    }

    Libro libro;

    function setBook() public {
        //Puedes acceder a lo que tiene el enum Libro
        //Libro public libro = Libro("Curso de algo", "Solidityy", 2, "Riracdo");
       libro = Libro('Curso Solidity', 'Solidity', 1, 'Arturo Hernandez');
    }

    //Ver informacion del libro
    function bookInformation() public view returns(uint){
        return libro.id_libro;
    }

    function bookName() public view returns(string memory){
        return libro.autor;
    }
}