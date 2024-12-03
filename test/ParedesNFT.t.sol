// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ParedesNFT} from "../src/ParedesNFT.sol";

contract ParedesNFTTest is Test {
    ParedesNFT public paredes;
    address public owner = 0x1234567890123456789012345678901234567890;

    function setUp() public {
        paredes = new ParedesNFT(owner);
    }

    function test_mint() public {
        uint256 id = 1;
        uint256 amount = 1;
        bytes memory data = "0x";
        vm.prank(owner);
        paredes.mint(owner, id, amount, data);
        uint256 balance = paredes.balanceOf(owner, id);
        assertEq(balance, amount);
    }

    function test_uri() public {
        uint256 id = 1;
        string memory uri = "https://example.com";
        vm.prank(owner);
        paredes.setURI(id, uri);
        string memory actual = paredes.uri(id);
        assertEq(actual, uri);
    }
}
