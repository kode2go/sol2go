pragma solidity ^0.8.7;


// General Comments Regarding Solidity:
// high level programming
// typed based language
// OOP - object orientated language - uses classes and inheritance
// variable: datatype accessibility var_name
// datatypes: bool, string, int/uint, address, struct, array, 

contract KossiContract {

    // variable needs to be defined with two things:
    // 1. data type
    // 2. visibility - public or private

    // addresss - refers to a hexadecimal value
    address public owner; // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    // with integers you must specificy if its signed or not, which means
    //...can it be a negative number or not, you should also specify the
    //...size of the integer. 256 size integer

    // state variable - can be used throughout the contract
    // stored on BC and it comes as a gas cost
    uint256 public balance = 0;

    uint transfer_value;

    // lesson 2 var
    uint public max_value = 0;
    uint8 i = 0;
    uint public result_while = 0;
    uint public result_for = 0;
    uint public result_sum = 0;
    string public role = "admin";

/* 
    lesson 2
    Why do we specify data type and size
    mynum = 50000000000000000000000 -> type int
    myfloat = 50000000.5000000000000 -> type float
    mystring = "kossi" -> type string

    uint8 - one of the smallest in memory
    8 bit number - An 8-bit unsigned integer has a range of 0 to 255, 
    2^8 = 256
    2^256 = huge
    while an 8-bit signed integer has a range of -128 to 127 - both representing 256 distinct numbers.
    bool - smallest in memery

    function defined as:

    function functionname() <visibility-specifier> <modifier> returns (type) {
*/

    function print(string memory) public pure returns (string memory)
    {
        return "This is my contract";
    }


    function retrieve() external view returns(uint)
    {
        return transfer_value;
    }

    function store(uint _value) external
    {
        // fee is a local variable
        uint fee = 2;
        transfer_value = _value;
        balance = balance + transfer_value - fee;

        // lesson 2
        if(balance > 200)
        {
            max_value = 250;
        }
        else if(balance > 100)
        {
            max_value = 150;
        }
        else
        {
            max_value = 100;
        }

        while (i < 3)
        {
            // i = 0
            i++;
            // i = 1
            // i = 2
            i = i + 1;
            // i = 2
            // i = 3
            // result_while = 0
            // result_while = 2            
            result_while = result_while + i;
        }

        for (uint j=0; j < 10; j = j + 1)
        {
            result_for = result_for + j;
        }

    }
	
	/*
	How continue works:
	
                mystring = "python"
                for letter in mystring:
                    if letter == 'h':
                        continue
                    print letter

                    pyton
                    */

    function sum() public
    {
        for (uint k = 0; k < 10; k++)
        {
            if (k == 4)
            {
                result_sum = 4;
                continue;

            }

            if (k == 5)
            {
                result_sum = 5;
                break;
            }
        }

    }

    constructor()
    {
        owner = msg.sender;
    }

}
