# 🔑 Key-Value Store Smart Contract

## Project Overview
* A key-value store smart contract which is a decentralized, on-chain database that maps unique identifiers `(keys)` to specific data `(values)`.
*  It eliminates the need for trusted third-party servers, guaranteeing data immutability, transparency, and automated retrieval across a blockchain network.

## 📌 Features

## 🧠 Key Concepts Applied

## 📂 Project Structure (Files)
* ****`KeyValueStore.sol`****: The main contract implementing setValue(), deleteValue() and getValue getter functions.
* ****`KeyValueStore.t.sol`****: Unit Test (suite) containing tests to validate contract functionalities.

## 🌐Technology Stack (Technologies Used)
* ****[Solidity](https://www.soliditylang.org/)**** - The programming language for writing the Smart contracts.
* ****[Remix IDE](https://remix.ethereum.org/)**** -  used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****[Foundry(forge, cast, anvil)](https://www.getfoundry.sh/)****  - Development framework and testing suite.
* ****[Visual Studio Code](https://code.visualstudio.com/)****  - Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.


## Getting Started

### Prerequisites
* Solidity Compiler, Version ^0.8.19 or higher.
* `Remix IDE` or `Foundry Development Kit`

### Recommendation (For Beginners)
****NOTE (Use Remix IDE, for quick prototyping):**** You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the code works while trying to build yours as you keep building.


## Usage

### Building the Project (Using Remix IDE):
1. Copy the core smart contract file code `StudentRegistry.sol` to Remix IDE (a browser based IDE, for quick prototyping).
2. Create a new file for the project on your Remix IDE and paste , to learn and build along faster.
3. And then Compile the smart contract file you have created on Remix IDE.

### Building the Project (Using Foundry Development Kit ) - only if you are good using foundry kit
1. Clone the repository:
   ```shell
      git clone https://github.com/legendarycode3/key-value-store-contract
   ```
2. Navigate to the directory you created and cloned the file to:
    ```shell
      cd key-value-store-contract
    ```
3.   Compile the smart contract:
   `forge build`
   

### Testing the contract (Using Foundry Development Kit )
Runing all tests:
  ```shell
     forge test
  ```
Runing specific test:
  ```shell
     forge test --mt testFunctionName
  ```


## 📋Contract Details
### Functions:

### Variables:

## Usage Guide (How to use - When using Remix IDE)

## Why This Matters (Student Smart Contract)

## Security Considerations

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

## Author
Built with ❤️ by [@legendarycode3](https://github.com/legendarycode3/)  </br>
Part of my  `60 Days of Solidity extensive Challenge`

`I Appreciate`


