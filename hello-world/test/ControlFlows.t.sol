// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

contract ControlFlowsTest is Test {
    function testIf() public pure {
        bool result;
        uint x = 10;

        if(x > 5) {
            result = true;
        } else {
            result = false;
        }
        assertEq(result, true);
    }

    function testWhile() public pure {
        uint result;

        while(result < 10) {
            result++;
        }

        assertEq(result, 10);
    }

    function testFor() public pure {
        uint result;

        for(result = 10; result < 10; result++) {
            result++;
        }

        assertEq(result, 10);
    }

    function testSwitch() public pure {
        uint result;
        uint x = 5;

        if(x == 0) {
            result = 1;
        } else if(x == 5) {
            result = 2;
        } else {
            result = 3;
        }

        assertEq(result, 2);
    }
}