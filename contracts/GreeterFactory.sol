// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Greeter.sol";

contract GreeterFactory {
    Greeter[] public greeterArray;

    function createNewGreeter(string memory _greeting) public {
        Greeter greeter = new Greeter(_greeting);
        greeterArray.push(greeter);
    }

    function greetingGetter(uint256 _greeterIndex) public view returns(string memory) {
        return greeterArray[_greeterIndex].greet();
    }

    function greetingSetter(uint256 _greeterIndex, string memory _greeting) public {
        greeterArray[_greeterIndex].setGreeting(_greeting);
    }

    function numberOfContracts() public view returns(uint256) {
        return greeterArray.length;
    }
}