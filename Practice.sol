//SPDX-License-Identifier: MIT

pragma solidity >=0.8.1;

contract Practice{
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People public Person = People({favoriteNumber:7, name:"Arturo"});
}