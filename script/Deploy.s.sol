// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract DeployScript is Script {
    function run() external {
        // Inicia el broadcast: todo lo que esté entre start/stop se firma y envía
        vm.startBroadcast();
        // Despliega el contrato HelloWorld
        HelloWorld deployed = new HelloWorld();
        // Opcional: emite un log con la dirección desplegada
        console.log("Contrato desplegado en:", address(deployed));
        vm.stopBroadcast();
    }
}
