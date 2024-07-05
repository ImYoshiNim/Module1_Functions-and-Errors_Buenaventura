# Functions and Error

Utilizing Solidity,  This project produces the "Wal_Lee_t" contract allows users to contribute money into a savings mechanism, with each deposit needing to satisfy a minimum threshold. In the event that a target amount is reached, the contract resets the daily contributions and monitors the overall savings. To protect contract management, include an ownership component. Savings are only gathered under favorable conditions since a crucial component called "Transaction" sets off a revert condition if daily savings fall short of a predetermined goal. Blockchain technology is being used in this project to provide safe and effective money management.

## Functions

Transact Function:
The Transact function in the "Wal_Lee_t" contract checks if the daily savings accumulated are sufficient to meet or exceed a predefined daily savings target. If the condition is not met, the function reverts the transaction with a specific error message, ensuring that savings can only be collected when the daily savings target is reached.

Deposit Function:
The Deposit function allows users to add funds to the smart contract's savings pool. It enforces a minimum deposit requirement to ensure that only deposits of 15 or more are accepted. Each deposit increases both the total savings held by the contract and the daily savings tally. The function emits a Deposit event to record the deposit transaction.

Owner Function:
The Owner function identifies the current owner of the "Wal_Lee_t" contract. This ownership designation is established during contract deployment and remains fixed unless explicitly transferred by the current owner. Ownership status grants privileged access to functions such as transferring ownership or self-destructing the contract, ensuring secure and controlled management of contract operations.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

The full program can accessed in the .sol file that is included in this repository. (file is named: Buenaventura_myToken.sol)

To compile the code, navigate to the "Solidity Compiler" tab in the left-hand side of the sidebar. Ensure the "Compiler" version is set to "0.8.18", and then click the "Compile Name_myToken.sol" button.

Once the contract has finished compiling, select the "Deploy & Run Transactions" tab located on the sidebar's left side. Click "Deploy" after selecting the "My Token - FinalProject.sol" contract from the dropdown menu.

## Authors

Metacrafter Student Adam
LinkedIn: www.linkedin.com/in/adam-buenaventura.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
