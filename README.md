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
* ****Access Modifier(`private`):**** Accessible only inside the contract.
* ****State Variables:**** Persistent blockchain storage variables.
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
* ****`setValue(string memory _key, string memory _value)`****: Stores a new key–value pair in the contract.
* ****`deleteValue(string memory _key)`****: Removes a stored value from the contract.
* ****`getValue(string memory _key)`****: Retrieves a stored value from the contract.

### Variables:
* ****`store`****: Core storage of the contract.
* ****`hashedKey`****: Converts string key into hash.
* ****`_key`****: Human-readable key.
* ****`_value`****: The Data to store.
* ****`bytes(_value)`****: Encodes string into bytes.
* ****`string(store[hashedKey])`****: Decodes bytes back to string.

## Usage Guide (How to use - When using Remix IDE)

## Security Considerations 
* ****Access Control(Anyone Can Write/Delete)**** anyone can grief
* ****No update logic:**** keys become permanently locked.
* ****No Event on Deletion:**** Off-chain indexers cannot track state transitions properly.
* Missing explicit existence tracking.


## Why This Matters (Key Value Store Smart Contract)
Key-Value Store (KVS) smart contracts matter because they are the blockchain's primary mechanism for organizing and tracking dynamic user data efficiently at scale. </br>

Here are the some reasons why they are essential:
* ****Efficient Data Lookups::****  Instead of searching through a massive list of thousands of records, KVS enables instant, 0(1) complexity lookups. You simply input the unique key, and the smart contract retrieves the corresponding value.
* ****Associative State Tracking:**** They are crucial for assigning balances or ownership to specific addresses. For example, a KVS matches a user's wallet address (the key) to their token balance or digital asset IDs (the value).
* ****Scalable Data Structure::**** Because EVM storage uses a hashed location calculation (keccak256) to find data, developers do not need to know the entire size of the dataset in advance. This allows the contract to store theoretically limitless,independent entries.
* ****Modular Upgrades::**** Upgradable smart contract architectures often use a central KVS to hold all user data, allowing the contract's business logic to be replaced without losing state history.


## Key Use Cases of `Key-Value Store` Smart Contracts
* ****On-Chain Voting:**** Stores each voter's public address (the key) paired with their chosen candidate's ID (the value) to ensure transparent tallying and individual vote verification.
* ****Decentralized Finance (DeFi) Allowances:**** Records wallet addresses (keys) and the specific token amounts or spending allowances (values) they are permitted to trade transfer, such as in standard ERC-20 token approvals.
* ****Escrow Services:****  Temporarily links an order  or transaction ID (key) to its specific escrow terms, locked funds, and involved party details (values) until predefined delivery conditions are met.
* ****Token Balances:****



## Core Benefits (Key-value store)
In blockchain, a "key-value store" smart contract uses a basic dictionary structure (mapping unique keys to specific data values) to manage data. </br>
This approach optimizes on-chain storage and retrieval, offering several core benefits:
* ****High Performance & Speed:**** Direct lookups by key avoid the need to scan through large arrays or loops,  ensuring highly efficient read and write operations.
* ****Cost Efficiency:****   Because key-value stores reduce complex computations and heavy data indexing,  they lower gas fees for executing transactions on networks.
* ****Optimized Storage:**** They eliminate the need for  empty database fields or "null"placeholders, saving valuable space on decentralized ledgers.
* ****Scalability:**** The simple and flat data architecture allows decentralized applications (dApps) to scale linearly as user bases and transaction volumes grow.
* ****Flexibility:**** They easily adapt to evolving datasets without requiring developers to completely restructure traditional row-and-column schemas.

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


