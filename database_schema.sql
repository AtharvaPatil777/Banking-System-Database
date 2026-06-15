-- Create Banking Database
CREATE DATABASE Bank;
USE Bank;

-- Customers Table
CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Accounts Table
CREATE TABLE accounts(
    account_id INT PRIMARY KEY,
    customer_id INT,
    balance DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(20),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
