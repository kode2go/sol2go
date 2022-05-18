pragma solidity ^0.8.13;

/*
Graph of inheritance

    A
   / \
  B   C
 / \  /
F   D,E

*/

// Solidity supports multiple inheritance. So contracts can inherit from each other by using
//..is keyword. For example you have a company with staff, so everyone is staff (ie parent) but
//..not everyone is HR, accounting, developers - they would be the children of staff and have
//.. have their contracts

// Function that is going to be overidden by a child contract is declared with virtual keyword.
//..and a function that is going to override a parent function uses override.

contract A {
    function myfuncA() public pure virtual returns(string memory)
    {
        return "A";
    }
}

// Contract B - contracts inherit using the is keyword:
contract B is A {
    // override myfunc
}
