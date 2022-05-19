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
    // override myfunc function
    function myfuncA() public pure virtual override returns (string memory)
    {
        return "B";
    }
}

// Contract B - contracts inherit using the is keyword:
contract C is A {
    // override myfunc function
    function myfuncA() public pure virtual override returns (string memory)
    {
        return "C";
    }
}


// Contracts can inherit from mulitple parent contracts.
//..when a function is called that is defined mulitple times in
//..different contracts, parent contracts are searched from right to left, 
//..and in-depth first manner

contract D is B,C {
    // D.myfunc() return "C
    //..since c is the right most parent contract with function myfuncA
    // super lets you call function defined in the parent contract, even if they are overridden
    function myfuncA() public pure override (B,C) returns (string memory)
    {
        return super.myfuncA();
    }
}



