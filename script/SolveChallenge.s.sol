// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {IChallenge} from "./IChallenge.sol";
import {SEPOLIA_LESSON_TWELVE, SEPOLIA_EXPLOIT_CONTRACT} from "./Constants.sol";
import {ExploitContract} from "../src/solution/ExploitContract.sol";
import {SOLUTION} from "./Constants.sol";

contract SolveChallenge is Script {

    function run() public {
        if(block.chainid != 11155111) {
            revert("Not Sepolia");
        }
        vm.startBroadcast();
        IChallenge lessonTwelveInterface = IChallenge(SEPOLIA_LESSON_TWELVE);
        ExploitContract hell = ExploitContract(SEPOLIA_EXPLOIT_CONTRACT);
        hell.setNumberr(SOLUTION);
        lessonTwelveInterface.solveChallenge(address(hell), "@rosarioborgesi");
        vm.stopBroadcast();
    }
}
