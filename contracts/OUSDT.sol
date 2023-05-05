// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OUSDT is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 1000 * (10 ** 18));
    }

    mapping(address => uint) public lockTime;

    function requestTokens(address requestor , uint amount) external {
        // require(block.timestamp > lockTime[msg.sender], "lock time has not expired. Please try again later");
        _mint(requestor, amount);
        // lockTime[requestor] = block.timestamp + 1 hours;
    }
}
