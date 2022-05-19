pragma solidity ^0.8.13;
import "hardhat/console.sol";
// Datastructures - enums, arrays, struct, mappings

contract mydatatypes{

// create a struct
    struct Person{
        // added id for mapping
        uint _id;
        string _firstName;
        string _lastName;
    }

    uint256 public peopleCount;
    
// store the struct in an array
/*
    Person[] public people;

    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
*/



//mappings - allows use to store key-value pairs.

    mapping(uint => Person) public people;

    function addPersonMapping(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount,_firstName,_lastName);

    }

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public{
        emit Log(msg.sender, "hello kossi");
        emit Log(msg.sender, "hello 2");
        emit AnotherLog();
    }

    string public mystring = "random";

    function testconsole() public {
        console.log("msg.sender is someone %s",mystring);
    }


}

