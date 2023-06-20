pragma solidity >=0.8.1;

contract FallBack{
    event Log(uint gas);
    fallback() external payable {
        emit Log(gasleft()); //El gas left retorna cuanto gas nos queda, es una funcion especial
    }
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

//el nuevo contrato enviara el ether al contrato Fallback que activara las funciones fallback
contract SendToFallBack{
    function transferToFallBack(address payable _to) public payable{
        _to.transfer(msg.value);
    }
}