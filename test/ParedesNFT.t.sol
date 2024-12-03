// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ParedesNFT} from "../src/ParedesNFT.sol";

contract ParedesNFTTest is Test {
    ParedesNFT public paredes;

    function setUp() public {
        paredes = new ParedesNFT(msg.sender);
    }

}
