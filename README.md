# ETHArtifact Smart Contract

## Overview
`ETHArtifact` is an Ethereum-based smart contract that extends the functionality of `ERC721A`. It represents a collection of unique tokens (NFTs) and the contract's creator (curator) has exclusive rights to mint these tokens.

## Features

- **Curator Management**: Only the contract creator (the curator) has the authority to mint new tokens.
  
- **Limited Token Creation**: The number of tokens that can be minted is limited (default cap is set to 5).

- **Token URI**: Each token has an associated content URI pointing to its metadata.
  
- **Instructions**: A predefined instruction ("super jets") can be retrieved from the contract.

## Contract Details

### Properties

- `curator`: Address of the contract creator.
- `cap`: Maximum number of tokens that can be minted (default is 5).
- `baseURIContent`: Default base URI for token content.
- `instruction`: Predefined instruction string.

### Constructor

- Sets the `curator` as the message sender.
  
### Modifiers

#### `isCurator()`
- Ensures that the calling function can only be executed by the curator.

### Functions

#### `createArtifact(uint256 amount) external payable`

- Allows the curator to mint a specified `amount` of new tokens, ensuring the total does not exceed the cap.
  
#### `getInstruction() external view returns (string memory)`

- Returns the predefined instruction string.

## How to Use

1. Deploy the contract. The contract's deployer will automatically be set as the curator.
2. The curator can create new artifacts by calling the `createArtifact` function with the desired amount.
3. Anyone can view the instruction by calling the `getInstruction` function.

## Dependencies

- The contract imports and extends the `ERC721A` contract.

## Author

Aditya Singh

## License

This project is licensed under the MIT License.
