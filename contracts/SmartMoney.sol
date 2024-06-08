// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract SmartMoney {

    uint balanceReceived;
    
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() external payable { 
        balanceReceived += msg.value;
    }

    function withdrawAll() public { 
        address payable to = payable(msg.sender);
        to.transfer(balance());
    }

    function withdrawalTo(address payable to) public {
        to.transfer(balance());
    }
}