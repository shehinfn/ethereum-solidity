// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract MyContract {
    mapping(uint=>Person) public peopleMap;
    uint256  public peopleCount;
    address owner;
    uint256 openTime =161448491;
    struct Person{
        uint id;
        string firstname;
        string lastname;
    }
    modifier onlyWhileOpen{
        require(block.timestamp <= openTime);
        _;
    }
    constructor() public{
        owner =  msg.sender;
    }
    function addPersonMap(string memory firstname , string memory lastname) public onlyWhileOpen{
        peopleMap[peopleCount] = Person(peopleCount,firstname,lastname);
        incrementCounter();
    }
    function getBlocktime()  public view returns(uint256){
        return block.timestamp;
    }
    function incrementCounter() internal{
        peopleCount++;
    }
}