pragma solidity ^0.8.7;


// General Comments Regarding Solidity:
// high level programming
// typed based language
// OOP - object orientated language - uses classes and inheritance
// variable: datatype accessibility var_name
// datatypes: bool, string, int/uint, address, struct, array, function

contract KossiContract {

    // variable needs to be defined with two things:
    // 1. data type
    // 2. visibility - public or private

    // addresss - refers to a hexadecimal value
    address public owner; // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    // with integers you must specificy if its signed or not, which means
    //...can it be a negative number or not, you must also specify the
    //...size of the integer. 256 size integer

    // state variable - can be used throughout the contract
    // stored on BC and it comes as a gas gost
    uint256 public balance = 0;

    uint transfer_value;

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
    }

    constructor()
    {
        owner = msg.sender;
    }

}
