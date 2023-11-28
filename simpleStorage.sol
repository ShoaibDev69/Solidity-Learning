// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage1 {
    string public text;

    function store(string memory _text) public {
        text = _text;
    }

    function retrieve() public view returns (string memory) {
        return text;
    }
}

contract SimpleStorage2 {
    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view = read only
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}

contract SimpleStorage3 {
    bool favoriteBool;

    // Store the value of favoriteBool
    function store(bool _favoriteBool) public {
        favoriteBool = _favoriteBool;
    }

    // Retrieve the value of favoriteBool (read-only)
    function retrieve() public view returns (bool) {
        return favoriteBool;
    }
}
