// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ParedesNFT} from "../src/ParedesNFT.sol";

contract ParedesScript is Script {
    ParedesNFT public paredes;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        paredes = new ParedesNFT(msg.sender);
        paredes.mint(msg.sender, 1, 1231444, "");
        paredes.setURI(1, "https://example.com/1");

        vm.stopBroadcast();
    }
}
