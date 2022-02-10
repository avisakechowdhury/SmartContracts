// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract conditionals{
    function foo(uint a) public pure returns(uint) {
        if(a<10){
            return 0;
        }
        else if (a<20){
            return 1;
        }
        else{
            return 2;
        }
    }

    function ternary(uint x) public pure returns(uint){
        // return 1 if x<10

        // else return 2
        return x<10?1:2;
        // return x < 10 ? 1 : 2;
    } 
}
