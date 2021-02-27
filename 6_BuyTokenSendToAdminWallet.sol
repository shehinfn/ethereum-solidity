// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract MyContract {

    mapping(address=>uint256) public balances;
    address payable adminWallet;
    constructor(address payable _wallet) public{
        adminWallet = _wallet;
    }
    function buyToken() public payable{
        balances[msg.sender] += 1;
        adminWallet.transfer(msg.value);
    }

}