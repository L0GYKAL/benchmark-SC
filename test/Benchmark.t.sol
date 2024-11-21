// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Benchmark} from "../src/Benchmark.sol";

contract BenchmarkTest is Test {
    Benchmark public bench;
    uint arrayLength = 11;

    function setUp() public {
        bench = new Benchmark(arrayLength);
    }

    function test_AverageSameNumber() public {
        uint256 number = 10;
        uint256 average;
        for (uint i; i<arrayLength; i++){
            average = bench.benchmark(number);
        }
        assertEq(bench.sum(), arrayLength * number);
        assertEq(bench.cursor(), 0);
        assertEq(average, number);
    }

    function test_AverageIncrementedNumber() public {
        uint256 average;
        for (uint i; i<arrayLength; i++){
            average = bench.benchmark(i);
        }
        assertEq(bench.sum(), ((arrayLength-1)*arrayLength)/2);
        assertEq(bench.cursor(), 0);
        assertEq(average, ((arrayLength-1)*arrayLength)/2/arrayLength);
    }
}
