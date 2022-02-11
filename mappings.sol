// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mappings{
    mapping(address => uint) public myMap;
   
    function get(address _addr) public view returns(uint){
        return myMap[_addr];
    }

    // sets the value at the given address
    function set(address _addr, uint i) public {
        myMap[_addr] = i ;
    }

    // deletes the uint at that specific address and leaves with default vlaue 
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
