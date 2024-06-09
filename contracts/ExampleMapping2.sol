// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract BalanceMapping {
    
    mapping(address => uint) public balances;

    function deposti() public payable {
        balances[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }

    function withdrawaAllMoney(address payable _to) public payable {
        _to.transfer(getBalance());
    }
}