# 🪙 SmartWallet Contract

The **SmartWallet** contract provides a secure and efficient way for users to manage their funds with ownership control and recovery options. It allows the owner to deposit, withdraw, and transfer funds, while also enabling a designated recovery address to change ownership if needed.

## ✨ Features

- 💰 **Deposit**: Users can deposit Ether into the contract, which emits a `Deposit` event.
- 💵 **Withdraw**: The contract allows the owner to withdraw Ether to a specified address.
- 🔄 **Transfer**: The owner can transfer Ether to another address.
- 🛡️ **Owner Management**: Only the owner can perform certain operations, and the recovery address can change ownership.
- ⚡ **Event Logging**: Events such as deposits, withdrawals, transfers, and ownership changes are logged for transparency.

---

## 🔐 Smart Contracts

### 1. **SmartWallet Contract**
- **Name**: SmartWallet
- **Version**: 0.8.0 (Solidity)
  
This contract serves as a wallet for the owner, allowing them to manage their funds securely. Key functionalities include:
- 📥 **Deposit**: Users can deposit Ether into the contract.  
- 📤 **Withdraw**: The owner can withdraw Ether to any address.  
- 🔄 **Transfer**: The owner can transfer Ether to another address.  
- 🏷️ **Owner Change**: The recovery address can change the contract owner.  

#### Key Functions:
- `deposit()`: Accepts Ether and emits a `Deposit` event.
- `withdraw(uint256 amount, address payable to)`: Allows the owner to withdraw funds.
- `transferTo(address payable to, uint256 amount)`: Allows the owner to transfer funds to another address.
- `setNewOwner(address newOwner)`: Enables the recovery address to change the owner.
- `getBalance()`: Returns the current balance of the contract.

---

## 🔍 Explore Deployed Contract

- **Successfully verified contract SmartWallet on the block explorer.**: [View on Etherscan](https://sepolia.etherscan.io/address/0xbD53CF384FF46730E79bD928A8E4BD5f3f134225#code)  

## 🚀 Setup & Installation

1. Clone the repository:  
   ```bash
   git clone https://github.com/your-repo/blume-liquid-staking.git
   ```

2. Install dependencies:  
   ```bash
   npm install
   ```

3. Compile smart contracts:  
   ```bash
   npx hardhat compile
   ```

4. Deploy contracts:  
   ```bash
   npx hardhat run scripts/deploy.js --network your-network
   ```

5. Search the deployed contracts in Sepolia Etherscan (im using Sepolia Testnet for Deploying )

---

## 🔧 Environment Setup

Create a `.env` file with the following variables:
```
PRIVATE_KEY=your_private_key
INFURA_PROJECT_ID=your_infura_project_id
```

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## 🤝 Contributing

We welcome contributions to improve Blume Liquid Staking. To contribute:
1. 🍴 Fork the repository.
2. 🌿 Create a feature branch.
3. 💾 Commit your changes.
4. 🚀 Push to the branch.
5. 📬 Submit a pull request.

---

## 🛠 Acknowledgments

- **OpenZeppelin**: For secure and well-tested smart contract templates.
- **Ethereum Community**: For building and maintaining the Ethereum blockchain and its tools.

---
