// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {LessonTwelve} from "../src/challenge/12-Lesson.sol";
import {ExploitContract} from "../src/solution/ExploitContract.sol";

contract LocalFuzz is Test {
      LessonTwelve lesson;
      ExploitContract exploit;

      function setUp() public {
          lesson = new LessonTwelve(address(1));
          exploit = new ExploitContract();
      }

      function testFuzz_findNumber(uint128 numberr) public {
          exploit.setNumberr(numberr);

          try lesson.solveChallenge(address(exploit), "@rosarioborgesi") {
              emit log_named_uint("FOUND NUMBER", numberr);
              console.log("FOUND NUMBER: %s", numberr);
              assert(false); // stop on solution
          } catch {
              // expected; do nothing
          }
      }
  }