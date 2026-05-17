// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

import "forge-std/Test.sol";
import {KeyValueStore} from "../src/KeyValueStore.sol";


contract KeyValueStoreTest is Test {
    KeyValueStore keyvaluestore;

   
    /// @notice setUp function
    function setUp() public {
        keyvaluestore = new KeyValueStore();
    }


    /// @notice Function checkKeyValueIfSet(), it checks if the key value is set and inputed
    function testCheckKeyValueIfSet() public {
            // ARRANGE
        string memory key = "Name";
        string memory value = "LegendaryCode";

            // ACT
        keyvaluestore.setValue(key, value); // adding keyValue first 
        
        // Read from storage
        string memory result = keyvaluestore.getValue(key);

            // ASSERT
        assertEq(result, value, "Value mismatch");
     
    }

}

