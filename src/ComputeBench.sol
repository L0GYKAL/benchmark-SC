// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ComputeBench {
    uint256 result;

    function benchmark(uint256 value) external {
        for (uint i; i < value; i++){
            value = value * i * i;
        }
        result = value;
    }
}