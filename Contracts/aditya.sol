// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./ERC721A.sol";

contract ETHArtifact is ERC721A {
    address private curator;
    uint256 private cap = 5;
    string private baseURIContent = "https://gateway.pinata.cloud/ipfs/QmatVruARCcaPM3MVs7GrdRJJyv1j7nCpZLhGvntHtJYBr/?_gl=1*fh5nac*_ga*MTg2MzE1ODUyOS4xNjkxMzEwNzIz*_ga_5RMPXG14TE*MTY5MTkzNTQ2Mi40LjEuMTY5MTkzNTYzNy41Ni4wLjA.";
    string private instruction = "super jets";

    constructor() ERC721A("super jets", "jet") {
        curator = msg.sender;
    }

    modifier isCurator() {
        require(msg.sender == curator, "Not authorized");
        _;
    }

    function createArtifact(uint256 amount) external payable isCurator {
        require(totalSupply() + amount <= cap, "Limit exceeded");
        for (uint256 i = 0; i < amount; i++) {
            _mint(msg.sender, totalSupply() + i + 1);
        }
    }


    function getInstruction() external view returns (string memory) {
        return instruction;
    }
}

