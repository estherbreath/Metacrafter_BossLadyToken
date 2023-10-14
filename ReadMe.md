# BossLadyToken

## Description

This contract is designed to operate on the Ethereum blockchain and manage a token system. The key details of the token, including its name (tokenName), abbreviation (tokenAbbrv or symbol), and total supply, are stored as state variables.

The contract implemented a mapping of addresses to token balances for efficient tracking. The contract includes a mint function that enhances the total supply by a specified value and augments the balance of a designated address accordingly.

Additionally, it features a burn function, aptly named for its purpose of token destruction. This function deducts a specified value from both the total supply and the balance of a chosen address, ensuring that the account has sufficient tokens for the intended burn..

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: GPL-3.0

pragma solidity  0.8.18;

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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.19" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint function. Click on the "MyToken" contract in the left-hand sidebar, and then fill in the input tab beside the mint function with the address you want to mint to and the amount you want to mint. When you are done,click on the "mint" function. Check that the balance of the address you minted to has been incremented by the amount you minted and that the total supply has also been incremented by that same about. If you want to call the burn function you can fill in the input tab beside the burn function with the address you want to burn from and the amount you want to burn. Check that the balance of the address you burned from has been decremented by the amount you burnt and that the total supply has also been decremented by that same about.

## Authors
 
https://twitter.com/EstherBreath10

## License

This project is licensed under the MIT License - see the LICENSE.md file for details