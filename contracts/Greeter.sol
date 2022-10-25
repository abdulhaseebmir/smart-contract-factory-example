// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeter {
    // state variable greeting
    string private greeting;

    constructor(string memory _greeting) {
        // setting value of greeting at contract creation
        greeting = _greeting;
    }

    // function returns the value stored in greeting variable
    function greet() public view returns(string memory) {
        return greeting;
    }

    // function sets/updates the value of greeting variable
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
}