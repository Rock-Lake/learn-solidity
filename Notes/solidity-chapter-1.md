# Chapter 1
## Value Types

- **uint** - unsigned integer, it doesn't have a sign for positive or negative numbers. This form is a alias(shorthand) form of unint255, the maximum number of digits in binary form for a uint.

- **int** - signed integer, holds a range of positive and negative numbers. An alias for int255, the max digit in binary form for a int
- **bool** - boolean, either true or false, on default is false.
- **enum** - enumerate, a set of pre-defined choices. The chosen value use the datatype of the enum variable name; for example:
```sol
     enum Choice {
        Up,
        Down,
        Left,
        Right
    }

    Choice choice = Choice.Up;
```
- enum choices defined in other programs can be called separately like this: "Example.Choice.Right"
- To print strings in a solidity contract we use the **string** or **bytes** for messages larger than 32 bytes and **bytes32** for messages with less. Bytes and strings are dynamically allocated while bytes32 are pre-emptively allocated

- constructors in a contract can be used to test contracts
 
- To run a code in a solidity contract without any testing, we use an "unchecked" method and add the inner statement.
- To display a unint/int in hex mode, use "console.logBytes32();"

## Storage Variables
Solidity store variables of a contract scope in a 32 byte(256 bits) contiguous storage(state) slots. This is important to reduce the amount of money(Gas) needed to read/writing the storage slot of a contract in the Ethereum network.

Functions in Solidity are designed to be memory efficient. To implement this efficiency, most contract programmers implement low leveling programming in their solidity code. One of the following is using Etherium Virtual Machine(EVM) Opcodes.
Most undeclared variables are assumed to contain 0 in their storage except variables with the "constant" modifier where they shift the start of the storage variable with the size required to store the constant variable.
