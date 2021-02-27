// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract MyContract {
    mapping(uint=>Person) public peopleMap;
    uint256  public peopleCount;
    struct Person{
        uint id;
        string firstname;
        string lastname;
    }


     function addPersonMap(string memory firstname , string memory lastname) public{
        peopleMap[peopleCount] = Person(peopleCount,firstname,lastname);
        peopleCount++;
    }
}