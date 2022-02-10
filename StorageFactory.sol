// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    // Create an array to store different SimpleStorage's created
    SimpleStorage[] public simpleStorageArray;

    // import the whole contract and creating different simple storage contract and pushing them to array 
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }


    // sfStore calls store function from "SimpleStorage.sol" and stores a favouriteNumber at a particular index 
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    // sfGet() function retreives the stored value from specific index 
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }
}
