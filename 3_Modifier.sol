// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract MyContract {
    mapping(uint=>Person) public peopleMap;
    uint256  public peopleCount;
    address owner;
    struct Person{
        uint id;
        string firstname;
        string lastname;
    }
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    constructor() public{
        owner =  msg.sender;
    }
    function addPersonMap(string memory firstname , string memory lastname) public onlyOwner{
        peopleMap[peopleCount] = Person(peopleCount,firstname,lastname);
        incrementCounter();
    }

    function incrementCounter() internal{
        peopleCount++;
    }
}