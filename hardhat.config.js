require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    mumbai: {
      url: 'https://polygon-mumbai.g.alchemy.com/v2/wtgvQ9txaDK5BbJRmCN306lSXwsh1vAx',
      accounts: [process.env.PRIVATE_KEY],
    },
    sepolia: {
      url: 'https://eth-sepolia.g.alchemy.com/v2/wHhXQAZFI0aZ24AO_OvTxg7Sc2q2SiWa',
      accounts: [process.env.PRIVATE_KEY],
    },
  }
};
