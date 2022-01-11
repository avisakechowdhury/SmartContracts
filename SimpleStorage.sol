pragma solidity >= 0.6.0 <0.9.0 ;

contract SimpleStorage {

    uint number ;
    function store(uint _storeThis) public{
        number = _storeThis;
        
    }
    function get() public view returns(uint){
        return number;
    }
    
}