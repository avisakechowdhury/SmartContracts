// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract stateVariable {

    uint public num;
    function get() public view returns(uint){
        return num;
    }
     function set(uint _num) public {
        num = _num;
    }
}
