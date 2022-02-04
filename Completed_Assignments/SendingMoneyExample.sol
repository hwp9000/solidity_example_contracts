// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract SendMoneyExample {


    // set new public var to see how much eth was recieved.
    uint public balanceReceived;
    uint public lockedUntil;


    // function to pay the contract eth
    function recieveMoney() public payable {
        //update the balance with the value sent.
        balanceReceived += msg.value;
        lockedUntil = block.timestamp + 1 minutes;
    }

    // get the balance of the contract
    function getBalance() public view returns(uint) {
        //returns (this).balance (this) being the contract.
        return address(this).balance;
    }

    // not payable because we are taking money out not putting in
    function withdrawMoney() public {
        // if the lockeduntil is less then the current timestamp then let them withdraw.
        if(lockedUntil < block.timestamp) {
        //the address that we are paying the funds to
        address payable to = payable(msg.sender);

        //transfer the whole balance to the msg.sender.
        to.transfer(getBalance());
        }
    }

    // function that allows the user to withdraw the contract balance to a specific address.
    function withdrawMoneyto(address payable _to) public {
        // if the lockeduntil is less then the current timestamp then let them withdraw.
        if(lockedUntil < block.timestamp) {
        _to.transfer(this.getBalance());
        }
    }


}
