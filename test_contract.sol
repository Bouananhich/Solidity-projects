pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT

contract TestContract { // address : 0x9Ecf5B8f86B339c3703C07D4010F81B27a665Fa3

    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    receive() payable external {
        balance += msg.value;   
    }

    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        destAddr.transfer(amount);
        balance -= amount;
    }

}