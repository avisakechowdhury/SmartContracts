// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract functions{
    function returnMany() public pure returns(uint , bool, uint){
        return (1, true, 2);
    }

    function namedReturn() public pure returns(uint a , bool b, uint c) {
        return (1, true , 2);
    }

    function assigned() public pure returns(uint a , bool b, uint c){
        a = 1;
        b = true;
        c = 2;
    }
    function destructuringAssignments() public pure returns(uint, bool, uint, uint , uint){
        (uint i , bool b , uint j) = returnMany();
        (uint x , uint y) = (5, 6);
        return (i,b,j,x,y);
    }
}
