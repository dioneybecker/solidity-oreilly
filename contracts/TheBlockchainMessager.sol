// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract TheBlockchainMessager {
    
    uint public exchangeCounter;
    address public owner;
    string public message;

    constructor(){
        owner = msg.sender;
    }

    function updateMessage(string memory _message) public payable {
        if(msg.value == 2 wei){
            message = _message;
            exchangeCounter++;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
        
    }
}