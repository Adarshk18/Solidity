// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
//variables 
//data types
//custom data structures 

contract MyContract{
    //state variables
    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello,World";
    int public myInt = 1;
    uint public myUint = 1;
    address public myAddress = 0x1456010459Bfd875A1a2ad63bfF63bbC9870b906;

    //local variables
    function getValue() public pure returns(uint){
        uint value = 1;
        return  value;
    }

    // function getMyUint() public view returns(uint){
    //     return myUint;
    // }

    //custom data structures
    struct Person {
        uint id;
        string name;
    }

    Person public person = Person(28,"Adarsh");
}
