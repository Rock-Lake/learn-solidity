Chapter 2

Message Calls

    -send value and calldata to contracts.
    -the first message call is the beginning of the transaction(EOA->contract).
    -each subsequent message call is part of the same transaction (contract->contract).
Revert

    -a contract can REVERT a call, nagating all state changes.
    -each calling contract can choose to handle that success or REVERT as well.

Targeting Functions

   Calldata( how to target functions)
   
     -Solidity doesn't know about the chain its deployed on.
     -if you tell solidity to call an address with calldata, it will do that.
 
