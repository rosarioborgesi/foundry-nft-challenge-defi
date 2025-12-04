// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.18;

// import {Test, console} from "forge-std/Test.sol";
// import {StdInvariant} from "forge-std/StdInvariant.sol";
// import {Handler} from "./Handler.t.sol";
// import {ExploitContract} from "../src/solution/ExploitContract.sol";
// import {LessonTwelve} from "../src/challenge/12-Lesson.sol";

// contract InvariantTest is StdInvariant, Test {
//     LessonTwelve lesson;
//     ExploitContract exploit;

//     Handler handler;

//     function setUp() public {
//         if (block.chainid == 31337) {
//             // anvil
//             lesson = new LessonTwelve(address(1));
//             exploit = new ExploitContract();
//         } else {
//             revert("Not anvil");
//         }

//         handler = new Handler(lesson);
//         targetContract(address(handler));
//     }

//     function invariant_should_not_be_able_to_solve_challenge() public pure {
//         assertEq(true, true);
//     }
// }
