# Banking System Database 🏦

A comprehensive SQL-based banking system for managing customers, accounts, and financial transactions.

---

## 📊 Database Tables

**Customers Table**
- customer_id (Primary Key)
- name
- city

**Accounts Table**
- account_id (Primary Key)
- customer_id (Foreign Key)
- balance

**Transactions Table**
- transaction_id (Primary Key)
- account_id (Foreign Key)
- amount
- transaction_type (deposit/withdraw)
- transaction_date

---

## 🔑 Features

✅ Customer Management - Store customer information  
✅ Account Management - Track multiple accounts per customer  
✅ Transaction Tracking - Record all deposits and withdrawals  
✅ Balance Inquiry - View current account balances  
✅ Financial Reports - Generate transaction summaries  
✅ Transaction History - Track all customer transactions  
✅ Data Integrity - Foreign key relationships ensure consistency  

---

💡 8 Key Queries Explained
*View All Transactions - See all transactions with customer details
*Total Balance Per Customer - Calculate total balance for each customer
*Total Deposits - Sum of all deposits made
*Total Withdrawals - Sum of all withdrawals made
*Recent Transactions - View latest transactions first
*Transaction History Per Customer - Detailed history for each customer
*Customer Account Details - View all accounts with balances
*Net Balance Change - Track deposits vs withdrawals per account


💼 Skills Demonstrated
✅  Database Design with Normalization
✅  Multiple Table JOINs (3-table joins)
✅  Aggregate Functions (SUM, COUNT)
✅  GROUP BY and ORDER BY clauses
✅  WHERE Filtering and Conditions
✅  CASE WHEN Conditional Logic
✅  FOREIGN KEY Relationships
✅  LEFT JOIN operations
