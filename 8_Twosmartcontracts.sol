// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract ERC20Token{
    mapping(address=>uint256) public balances;

    function mint() public{
        balances[msg.sender] ++;

    }

}
contract MyContract {

    address payable adminWallet;
    address eRC20TokenContractAdress;
    constructor(address payable _wallet,address _eRC20TokenContractAdress) public{
        adminWallet = _wallet;
        eRC20TokenContractAdress = _eRC20TokenContractAdress;
    }

    function buyToken() public payable{
        ERC20Token erc20 = ERC20Token(address(eRC20TokenContractAdress));
        erc20.mint();
        adminWallet.transfer(msg.value);
    }

}