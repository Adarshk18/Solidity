// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract HotelRoom{
    //Ether -pay smart contracts
    //Modifiers
    //Visibility
    //Events
    //Enums

    enum Statuses {Vacant, Occupied}
    Statuses public currentStatus;

    event Occupy(address _occcupant, uint _value);

    address payable public owner;
    
    constructor(){
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        require(currentStatus == Statuses.Vacant, "Currently Occupied.");
        _;
    }

    modifier costs (uint _amount){
        require(msg.value >= _amount, "Not enough Ether Provided.");
        _;
    }

    receive() external payable onlyWhileVacant costs(1 ether){

        
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

}

