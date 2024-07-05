// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wal_Lee_t {
    uint256 public totalSavings;
    uint256 public dailySavings;
    uint256 public dailySavingsTarget = 200; // Example daily target
    address public owner;

    // Event to log deposits
    event Deposit(address indexed from, uint256 amount);
    event SavingsCollected(address indexed by, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    // Modifier to ensure a minimum deposit of 15
    modifier minimumDeposit(uint256 amount) {
        require(amount >= 15, "Minimum deposit is 15");
        _;
    }

    // Function to deposit money into the piggy bank
    function deposit(uint256 amount) public minimumDeposit(amount) {
        totalSavings += amount;
        dailySavings += amount;
        
        // Emit deposit event
        emit Deposit(msg.sender, amount);
        
        // Check if the daily savings target is not exceeded
        assert(dailySavings <= dailySavingsTarget);
    }


    // Function to revert a transaction with a custom reason (callable by anyone)
    function Transaction() public {
        if (dailySavings < dailySavingsTarget) {
            revert("You cannot collect");
        }
        
        dailySavings = 0;
    }
}
