// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function testGreet() public {
        string memory result = hello.greet("Alice");
        assertEq(result, "Hello, Alice!");
    }
}
