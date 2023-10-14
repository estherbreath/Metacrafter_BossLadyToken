// SPDX-License-Identifier: MIT

pragma solidity  0.8.19;

contract MyToken{
    string public tokenName = "BossLadyToken";
    string public tokenAbbrv = "BLT";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    // mint function
    function mint(address to, uint256 value) public {
        totalSupply += value;
        balances[to] += value;
    }

    // burn function
    function burn(address from, uint256 value) public {
        if (balances[from] >= value) {
            totalSupply -= value;
            balances[from] -= value;
        }
    }
}