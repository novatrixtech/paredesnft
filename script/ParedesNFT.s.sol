// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ParedesNFT} from "../src/ParedesNFT.sol";

contract ParedesScript is Script {
    ParedesNFT public paredes;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address sender = 0x7aC722a69CDb106127f1f2cC86761B28176E5379;
        paredes = new ParedesNFT(sender);
        paredes.mint(sender, 1, 1231444, "");
        paredes.setURI(1, "https://novatrixtech.github.io/paredesnft/static/nft/1.json");

        vm.stopBroadcast();
    }
}
