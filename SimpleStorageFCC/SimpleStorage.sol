// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract SimpleStorage {
    // boolean, unit, int, address, bytes
    bool hasFavNumber = false;
    uint256 favNumber = 5; // 8, 16, 32, 64, 128, 256 
    string favNumberInText = "Five";
    int256 favoriteNumber = -5;
    address myAddress = 0x786EcA20e708555e0594B315ACC17369A2fA9362;
    bytes32 favBytes = "cat";//  1, 2, 4, 8, 16, 32
    People public person = People({favNumber: 2, name: "Sudarsanam"});
    People[] public people;
    mapping(string => uint256) public nameToFavNumber;

    struct People {
        uint256 favNumber;
        string name;
    }

    function store(uint256 _favNumber) public virtual {
        favNumber = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));
        // People memory newPerson = People({favNumber: _favNumber, name: _name});
        // people.push(newPerson);

        nameToFavNumber[_name] = _favNumber;
    }

}
