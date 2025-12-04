// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Test} from "forge-std/Test.sol";
import {LessonTwelveHelper} from "../src/challenge/12-LessonHelper.sol";
import {SOLUTION} from "../script/Constants.sol";

contract HellTest is Test {
    LessonTwelveHelper helper;

    function setUp() public {
        helper = new LessonTwelveHelper();
    }

    function test_hellFunc() public {
          vm.expectRevert();
          helper.hellFunc(SOLUTION);
    }
}