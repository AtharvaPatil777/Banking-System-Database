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

## 🚀 How to Use

**Step 1: Create Database**
```sql
source database_schema.sql;

**Step 2: Load Sample Data**
```sql
source sample_data.sql;

**Step 3: Run Queries**
```sql
source queries.sql;
