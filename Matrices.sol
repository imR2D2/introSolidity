pragma solidity >= 0.8.1;

contract Matrices {
    uint[] public miMatriz;
    uint[] public miMatriz2 = [1, 2, 3, 4, 5];
    uint[200] public matrizTamanoFija;

    // push
    function push(uint number) public {
        miMatriz.push(number);
    }

    // pop elimina el último valor
    function pop() public {
        miMatriz2.pop();
    }

    // length
    function getLength() public view returns(uint) {
        return miMatriz2.length;
    }

    // delete
    // borrar elementos de una matriz
    // 1. Crear una matriz vacía
    // 2. Crear una función remover elementos
    uint[] public matrizVacia;

    // Remover un elemento con una matriz
    function removerElemento(uint indice) public {
        matrizVacia[indice] = matrizVacia[matrizVacia.length - 1];
        matrizVacia.pop();
    }

    function test() public {
        matrizVacia.push(1);
        matrizVacia.push(2);
        matrizVacia.push(3);
        matrizVacia.push(4);
        matrizVacia.push(5);
    }

    function getArray() public view returns(uint) {
        return matrizVacia;
    }
}
