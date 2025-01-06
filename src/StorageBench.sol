// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StorageBench {
    uint256[] public array;

    constructor(uint256 arrayLength){
        array = new uint256[](arrayLength);
    }

    function benchmark() external {
        for (uint i; i < array.length; i++){
            array[i] = i;
        }
    }
}
