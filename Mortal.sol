pragma solidity ^0.4.20;


contract Mortal{
    address owner;
     
    modifier onlyowner(){
        if(owner==msg.sender){
           _;
        }else{
            throw;
        }
    }
    
    function mortal(){
        owner=msg.sender;
    }
    function kill() onlyowner{
        suicide(owner);
    }
    
}