// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract SimpleMappingExample {
    // store values in a map
    mapping( uint => bool ) public myMapping;
    mapping(address => bool) public myAddressMapping;


    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    // could use for whitelisting. sets the msg.sender wallet to ture.
    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }
}
