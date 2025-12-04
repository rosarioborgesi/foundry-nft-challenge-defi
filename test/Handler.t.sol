// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.18;

// import {Test, console} from "forge-std/Test.sol";
// import {LessonTwelve} from "../src/challenge/12-Lesson.sol";
// import {ExploitContract} from "../src/solution/ExploitContract.sol";

// contract Handler is Test {
//     string twitterHandle = "@rosarioborgesi";
//     LessonTwelve lessonTwelve;
//     ExploitContract exploit;

//     constructor(LessonTwelve _lessonTwelve) {
//         lessonTwelve = _lessonTwelve;
//         exploit = new ExploitContract();
//     }

//     function testFuzz_findNumber(uint128 numberr) public {
//         exploit.setNumberr(numberr);

//         // Most inputs will cause LessonTwelve to revert.
//         // We *expect* that and ignore it so fuzzing continues.
//         try lessonTwelve.solveChallenge(address(exploit), "@rosarioborgesi") {
//             // If we get here, solveChallenge didn't revert => challenge solved.
//             // Fail the test so Foundry shows you the input.
//             emit log_named_uint("FOUND NUMBER", numberr);
//             console.log("FOUND NUMBER: %s", numberr);

//             // Stop fuzzing: make the test fail on this input so Foundry reports it.
//             assert(false);
//         } catch {
//             // Expected for almost all values, do nothing and let the fuzzer continue.
//         }
//     }
// }
