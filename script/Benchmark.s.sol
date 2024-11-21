// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Benchmark} from "../src/Benchmark.sol";

contract CounterScript is Script {
    Benchmark bench;
    function setUp() public {
        bench = new Benchmark(4);
    }

    function run() public {
        vm.startBroadcast();
        // bench.benchmark();
        //TODO: faire des tests pour verifier l'average
    }
}
