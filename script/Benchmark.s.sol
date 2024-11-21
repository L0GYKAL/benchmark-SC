// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Benchmark} from "../src/Benchmark.sol";

contract BenchmarkScript is Script {
    Benchmark bench;
    uint arrayLength = 4;

    function setUp() public {
        bench = new Benchmark(arrayLength);
    }

    function run() public {
        vm.startBroadcast();
        for (uint i; i<arrayLength; i++){
            bench.benchmark(i*i);
        }
    }
}
