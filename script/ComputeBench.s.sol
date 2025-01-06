// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ComputeBench} from "../src/ComputeBench.sol";

contract ComputeBenchScript is Script {
    uint256 value = 10_000;
    ComputeBench cb;

    function setUp() public {
        vm.startBroadcast();
        cb = new ComputeBench();
        vm.stopBroadcast();
    }

    function run() public {
        vm.startBroadcast();
        benchmark();
    }
    
    function benchmark() private {
        cb.benchmark(value);
    }
}
