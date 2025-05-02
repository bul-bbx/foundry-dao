//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable{
    uint256 public s_value;

    event NumberChanged(uint256 value);

    constructor() Ownable(msg.sender) {
        
    }

    function store(uint256 newValue) public onlyOwner {
        s_value = newValue;
        emit NumberChanged(newValue);
    }

    function getValue() external view returns(uint256) {
        return s_value;
    }
}