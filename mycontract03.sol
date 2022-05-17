// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract MyContract {

    // create a state variable called mystring
    //...that is visible on the blockchain
    //...and is initialized with "empty"

    string public mystring = "empty";

    uint public count;

    function setMyString(string memory _mystring) public {
        mystring = _mystring;
    }

    //two functions to increment and decrement the count store in this contract.

    // function to get the current count
    function get() public view returns (uint)
    {
        return count;
    }

    // function to increment the count by 1
    function inc() public {
        count = count + 1;
    }

    // function to decrement the count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }

}
