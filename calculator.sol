pragma solidity >= 0.6.0 ;

contract calculator{
    uint x;
    uint y;

    function add(uint a, uint b ) public pure returns (uint) {
        uint addition = a + b;
        return addition;
    }

    function subtract(uint a , uint b) public pure returns (uint){
        uint sub = a - b;
        return sub ;
    }

    function multiply(uint a , uint b ) public pure returns (uint) {
        uint multip = a * b;
        return multip;
    }

    function divide(uint a , uint b) public pure returns  (uint) {
        uint div = a / b;
        return div;
    }

    function modulo(uint a , uint b ) public pure returns(uint){
        uint mod = a % b;
        return mod ;
    }
}
