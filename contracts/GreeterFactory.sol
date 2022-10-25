// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Greeter.sol";

contract GreeterFactory {
    Greeter[] public GreeterArray;

    function CreateNewGreeter(string memory _greeting) public {
        Greeter greeter = new Greeter(_greeting);
        GreeterArray.push(greeter);
    }

    function greetingGetter(uint256 _greeterIndex) public view returns(string memory) {
        return GreeterArray[_greeterIndex].greet();
    }

    function greetingSetter(uint256 _greeterIndex, string memory _greeting) public {
        GreeterArray[_greeterIndex].setGreeting(_greeting);
    }
}