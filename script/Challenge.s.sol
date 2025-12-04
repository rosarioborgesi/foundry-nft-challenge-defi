// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.18;

// import {Script} from "forge-std/Script.sol";
// import {IChallenge} from "../test/IChallenge.sol";
// import {LessonTwelve} from "../src/12-Lesson.sol";
// import {ExploitContract} from "../test/ExploitContract.sol";
// import {SEPOLIA_LESSON_TWELVE, SEPOLIA_EXPLOIT_CONTRACT} from "../src/solution/Constants.sol";

// contract Challenge is Script {
//       uint128 solution = 1;

//     function run() public {
//         if(block.chainid != 11155111) {
//             revert("Not Sepolia");
//         }
//         vm.startBroadcast();
//         IChallenge lessonTwelveInterface = IChallenge(SEPOLIA_LESSON_TWELVE);
//         ExploitContract hell = ExploitContract(SEPOLIA_EXPLOIT_CONTRACT);
//         hell.setNumberr(solution);
//         lessonTwelveInterface.solveChallenge(address(hell), "@rosarioborgesi");
//         vm.stopBroadcast();
//     }
// }
