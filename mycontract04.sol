pragma solidity ^0.8.13;

//import "./mystruct.sol";

// Gas
// how much ether do you need to pay for a transaction
// you pay - gas spent * gas price = ether:
//...gas is unit computation
//...gas spent is the total amount of gas used in the transaction
//...gas price is how much ether you are willing to per gas

// Tx with higher gas price have a higher priority to be included in a block
// unspent gas will be refunded

// there are 2 upper bounds to the amount of gas spent:
//... gas limit - how much you are willing to pay
//...block gas limit - set amount of gas allowed on a block - network defined

// If you use up all your gas your transaction will fail
contract mycontract {
    //string public text = "my contract";

    // Makes the address receive funds:
    address payable public owner;

    function deposit() public payable
    {

    }

    function withdraw() public{
        // get the amount of ether stored in the contract:
        uint amount = address(this).balance;

    }

    function transfer(address payable _to, uint _amount) public
    {
        (bool success,) = _to.call{value: _amount}("");
        require(success, "failed to send ether");
    }

    // Arrays
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    uint[10] public fixedarray;

    // Enum
    // used for choices and keeping track of data

    enum Status {
        Pending, // 0
        Shipped, // 1
        Accepted, // 2
        Rejected, // 3
        Canceled // 4
    }

    Status public status;

    // Struct - useful for grouping data together

    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public
    {
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }
   
    function get_enum() public view returns(Status)
    {
        return status;
    }

    function cancel() public
    {
        status = Status.Canceled;
    }




    function get(uint i) public view returns(uint)
    {
        return arr[i];
    }

    function push(uint i) public 
    {
        // appends to an array
        // this will increase array length by 1
        arr.push(i);
    }

    function pop() public
    {
        // remove last element
        // this will decrese array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint)
    {
        return arr.length;
    }

}
