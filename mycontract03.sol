// SPDX-License-Identifier: GPL-3.0
// ref: https://ethereum-blockchain-developer.com/010-solidity-basics/05-string-types/
pragma solidity ^0.8.7;

contract StringExample {
    string public myString = 'hello world!';

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}
