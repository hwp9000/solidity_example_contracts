// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

// Set the contract name
contract WorkingWithVars {

    // seting a new public uint256 variable called myUint;
    uint256 public myUint;

    // function to allow us to update the myUint variable
    function setmyUint(uint _myUint) public {
        myUint = _myUint;
    }

    //create a new boolean called myBool
    bool public myBool;


    //This function allows us to set the myBool to ture or fales via transaction.
    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    // 0 - 255
    uint8 public myUint8;

    // +1 to myuint8
    function incrementUint() public {
        myUint8++;
    }
    // -1 to myuint8
    function decrementUint() public {
        myUint8--;
    }

    // create a public address called myAddress, by default its set to 0x0000000000000000000000000000000000000000
    address public myAddress;

    // function that allows a user to set an address to the myAddress var.
    function setAddress(address _address) public {
        myAddress = _address;
    }

    // function that returns the balance in wei
    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance;
    }

    string public myString = 'hello world';

    // when you have a string or refrence type you need a memory keyworld that tells it the arg will be stred in memory. ( cheaper gas )
    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}

// Notes
// All Variable are initialized by default values
// there is no "null" or "undefined"
// (U)Int = 0
// Bool = false
// String = ""
//
// Public Variable Generate a getter with the same name of the variable ( you cant create functions with these name as a variable )
// Refrence Types need a memory location ( memory/storage )
