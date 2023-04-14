pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT

contract Testcontract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

}