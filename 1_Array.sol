// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract MyContract {
    Person[] public people;
    uint256  public peopleCount;
    struct Person{
        uint id;
        string firstname;
        string lastname;
    }

    function addPerson(string memory firstname , string memory lastname) public{
        people.push(Person(peopleCount,firstname,lastname));
        peopleCount++;
    }

}