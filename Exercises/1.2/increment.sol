// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;
    function increment() external {
         x++;
    }
    constructor(uint _x){
        x=_x;
    }
    
    
}

// roba
Create an external function called increment that will add 1 to the state variable x
// src/Contract.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;

    // Constructor sets initial value
    constructor(uint initialX) {
        x = initialX;
    }

    // Function to increment x
    function increment() public {
        x += 1;
    }
}
