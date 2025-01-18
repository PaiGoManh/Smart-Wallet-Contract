// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartWallet {
    address public owner;
    address public recoveryAddress;

    event Deposit(address indexed from, uint256 amount);
    event Withdraw(address indexed to, uint256 amount);
    event Transfer(address indexed to, uint256 amount);
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier onlyRecovery() {
        require(msg.sender == recoveryAddress, "Not the recovery address");
        _;
    }

    constructor(address _recoveryAddress) {
        owner = msg.sender;
        recoveryAddress = _recoveryAddress;
    }

    function deposit() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 amount, address payable to) external onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        to.transfer(amount);
        emit Withdraw(to, amount);
    }

    function transferTo(address payable to, uint256 amount) external onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        to.transfer(amount);
        emit Transfer(to, amount);
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function setNewOwner(address newOwner) external onlyRecovery {
        address oldOwner = owner;
        owner = newOwner;
        emit OwnerChanged(oldOwner, newOwner);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
