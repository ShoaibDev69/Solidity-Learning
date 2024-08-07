// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator
        return _x < 10 ? 1 : 2;
    }

    function ternary2(uint _x) public pure returns (uint) {
        return _x < 10 ? 1 : _x < 20 ? 2 : 3;
    }

    function ternary3(uint _x) public pure returns (uint) {
        return _x < 10 ? 1 : _x < 20 ? 2 : _x < 30 ? 3 : 4;
    }
}
