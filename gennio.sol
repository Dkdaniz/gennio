// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Ownable.sol";

contract GennioV1 is Ownable {
    uint256 nextId;
    
    mapping(uint256 => string) private _signatures;

    event Register(uint256 _id, string _signature);

    function register(string memory signature) external onlyOwner {
        uint256 actualId = nextId;
        _signatures[actualId] = signature;
        nextId = nextId + 1;
        emit Register(actualId, signature);
    }
}