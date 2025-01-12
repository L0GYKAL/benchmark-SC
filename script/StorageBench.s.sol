// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StorageBench} from "../src/StorageBench.sol";

contract StorageBenchScript is Script {
    uint256 arrayLength = 10_000;
    StorageBench sb;

    function setUp() public {
        vm.startBroadcast();
        vm.setNonce(msg.sender, 15);
        sb = new StorageBench(arrayLength);
        vm.stopBroadcast();
    }

    function run() public {
        vm.startBroadcast();
        benchmark();
    }
    
    function benchmark() private {
        sb.benchmark();
    }
}
