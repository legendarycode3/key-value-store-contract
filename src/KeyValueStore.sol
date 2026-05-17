// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

/**
 * @title  KeyValue Store Contract
 * @author LegendaryCode
 * @notice A flexible storage for storing bytes or strings mapped to keys.  A simple and flexible on-chain key-value store for mapping bytes or strings to unique keys in Solidity.
 */


contract KeyValueStore {

                /* State Variable */
    /// @notice flexible mapping to store any data associated with a unique hash.  Maps a unique 32-byte identifier (the key) to a specific byte (the value). Ensures it cannot be directly accessed by other contracts, though it remains visible on-chain.
    mapping (bytes32 => bytes) private store;

                /** Events */
    /// @notice Event for off-chain tracking.
    event EntrySet(bytes32 indexed key, bytes value);

                /** Errors */
    error KeyVal__NotExisting();
    error Input__KeyVal();


                /** Functions */
    /// @notice Function that "Set" a value for a specific key. With 2 input parameters, First You provide a normal word/name (the key) and Secondly , the data you want to save (the value).
    function setValue(string memory _key, string memory _value) public {
                // CHECKS (Validate state and inputs)
        //  Turns the plain-text name (_key) into a secure, fixed-length 32-byte code
        bytes32 hashedKey = keccak256(abi.encodePacked(_key));

        // Ensure that a value already exists before we allow an update
        if (store[hashedKey].length != 0) {
            revert Input__KeyVal();
        }

                // EFFECTS ( Mutate the state variables)
        // Save the value in the contract, locked under that secure code
        store[hashedKey] = bytes(_value);

                // INTERACTION (Emit events or call external contracts)
        //  Broadcasting an alert (Event) to the blockchain so apps know the data was saved
        emit EntrySet(hashedKey, bytes(_value));
    }


    
    /// @notice Function that Deletes a value to save gas (returns a gas refund)
    function deleteValue(string memory _key) public {
                // CHECKS (Validate state and inputs)

        //  Turn the plain text string into a fixed-length, scrambled hash (a bytes32 code). Hash the key to locate the data
        bytes32 hashedKey = keccak256(abi.encodePacked(_key));

        // Ensure the value exists before attempting to delete
        // If the length is 0, it means the key does not exist in the store
        if (store[hashedKey].length == 0) {
            revert KeyVal__NotExisting();
        }

                // EFFECTS
        // Erase the value attached to that hashed key from the smart contract's storage
        delete store[hashedKey];
    }



     /// @notice Function that "Get" a value for a specific key. Retrieves a value for a specific key 
    // Getter function for store mapping since it private , to access it on test contract
    function getValue(string memory _key ) public view returns (string memory){
                // CHECKS (Validate state and inputs)
        // Convert the plain text key (e.g., "name") into a unique 64-character bytes32 secret code
        bytes32 hashedKey = keccak256(abi.encodePacked(_key));

        if (store[hashedKey].length == 0) {
            revert KeyVal__NotExisting();
        }

                // INTERACTION 
        // Cast the bytes to a string and return the result. Looks up the secret code in the contract's "store" list, then convert the result back into readable text. Retrieve the string stored at the hashedKey, type-cast it from bytes (if applicable), and return
        return string(store[hashedKey]);
    }

   
}





