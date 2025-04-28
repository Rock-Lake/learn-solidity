# Chapter 2

## Message Calls

- send value and calldata to contracts.
- the first message call is the beginning of the transaction(EOA->contract).
- each subsequent message call is part of the same transaction (contract->contract).
Rever
- Each message contains gas, value and call data. This is listed in solidity as global variables called:
    - `msg.sender` - the sender address of the previous message call, usually 20 bytes long
    - `msg.value` - the amount of ether sent 
    - `msg.data` - calldata of the message
    - `msg.sig` - the encoding of function in the contract
- A contract has the following syntax:
```
contract X{
    address deployer;
    address other Contract
}
    constructor(address _otherContract){
        deployer = msg.sender;
        otherContract = _otherContract;
    }
```
- Any function in a contract should be explicitly defined as `payable` in its [state mutability modifier](../Notes/solidity-chapter-1.md#functions)
- a contract can REVERT a call, nagating all state changes.
    -each calling contract can choose to handle that success or REVERT as well.

## Targeting Functions

Calldata( how to target functions)
   
- Solidity doesn't know about the chain its deployed on.
- if you tell solidity to call an address with calldata, it will do that.
 
