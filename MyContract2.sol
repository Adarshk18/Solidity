// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MyContract2{
    //Array
    // uint[] public uintArray = [1,2,3,45];
    // string[] public stringArray = ["apple","banana","watermelon"];
    // string[] public values;
    // uint[][] public array2D = [[1,2,3],[4,5,6],[7,8,9]];

    // function addValue(string memory _value) public{
    //     values.push(_value);
    // }

    // function valueCount() public view returns(uint){
    //     return values.length;
    // }


    //Mapping
    mapping(uint => string) public names;
    mapping (uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myMapping;

    struct Book{
        string Title;
        string Author;
    }

    constructor(){
        names[1] = "Adam";
        names[2] = "Tom";
        names[3]= "Bruce";
    }

    function addBook(uint _id,string memory _title,string memory _author) public {
        books[_id] = Book(_title,_author);
    }

    function addMyBook(uint _id,string memory _title,string memory _author) public {
        myMapping[msg.sender][_id] = Book(_title,_author);
    }
    
}