// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 <0.9.0 ;


contract simpleStorage {
    uint256  favouriteNumber;
    struct People{
        string Name;
        uint256 favouriteNumber;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name , uint256 _favouriteNumber) public {
        people.push(People(_name , _favouriteNumber));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
