// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ExampleMapping {

    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

}