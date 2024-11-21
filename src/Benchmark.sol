// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Benchmark {
    uint256 public sum;
    uint256 public cursor;
    uint256[] public array;

    enum Action{
        SQUARE,
        DIVIDE_BY_TWO,
        ZERO
    }
    constructor(uint256 arrayLength){
        array = new uint256[](arrayLength);
    }

    function benchmark(uint256 value) external returns(uint256){
        sum -= array[cursor];
        array[cursor] = value;
        sum += array[cursor];
        cursor++;
        if (cursor == array.length) cursor =0;
        return sum / array.length;
    }
}
