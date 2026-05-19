# 🔑 Key-Value Store Smart Contract

## Project Overview
* A key-value store smart contract which is a decentralized, on-chain database that maps unique identifiers `(keys)` to specific data `(values)`.
*  It eliminates the need for trusted third-party servers, guaranteeing data immutability, transparency, and automated retrieval across a blockchain network.

## 📌 Features
* ****Deterministic Key Hashing:**** Each key is transformed into a fixed-size unique identifier.
* ****Set Values (setValue):**** Allows anyone to input a string key and a string value. The contract hashes the key using `keccak256` and maps it to the byte-encoded value.
* ****Get Values (getValue):**** Allows users to retrieve the original string value by inputting the corresponding string key.
* ****Delete Values (deleteValue):**** Allows the original creator (or anyone, as no access control modifiers exist) to permanently delete an entry using its key.
* ****Key–Value Storage:**** The contract stores data using a Solidity mapping.
* ****Custom Errors:****  Instead of using the older require statements with string messages,it uses custom errors to save on deployment and execution gas costs.
* ****Delete Functionality:**** Entries can be removed. verifies if the key exists, then deletes the stored bytes.
* ****Event Logging:**** When data is stored, an event is emitted. Enables off-chain indexing, transaction activity tracking.
* ****String-Based User Input:**** Users interact with the contract using human-readable strings.
* ****Duplicate Key Protection:**** The contract prevents overwriting existing keys. It Ensures immutability of stored entries , prevents accidental replacement.
* ****Data Privacy:**** The mapping is declared `private`. Raw storage cannot be directly accessed externally, access only through contract functions.
* ****Delete Keyword:**** Removes data from blockchain storage.
* ****Type Conversion:**** Converts one Solidity data type into another.



## 🧠 Key Concepts Applied
* ****Mapping:**** A Solidity key-value data structure.
* ****Access Modifier(`private`):****
* ****Custom Error:**** Gas-efficient error handling.
* ****bytes32 Data Type:**** A fixed-size 32-byte data type.
* ****bytes Data Type:**** A dynamically-sized byte array.
* ****String Data Type:**** Represents human-readable text.
* ****Functions:**** Reusable blocks of smart contract logic.
* ****Events:**** Blockchain logs for off-chain tracking.

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


