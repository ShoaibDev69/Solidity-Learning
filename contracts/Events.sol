// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Events {
    event NewMessage(string message);

    function sendMessage(string memory message) public {
        emit NewMessage(message);
    }
}

contract AnotherContract {
    event NewNumber(uint256 number);

    function sendNumber(uint256 number) public {
        emit NewNumber(number);
    }
}
