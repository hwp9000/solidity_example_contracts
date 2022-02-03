pragma solidity ^0.5.11;

contract Owned {
    address owner;

    constructor() public {
         owner = msg.sender;
    }

     modifier onlyOwner() {
     require(msg.sender == owner, "You are not allowed");
     _;
 }

}
