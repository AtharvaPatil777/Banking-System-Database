-- ====================================
-- QUERY 1: View All Transactions
-- ====================================
-- Shows all transactions with customer name, account ID, amount, and type
SELECT c.name, a.account_id, t.amount, t.transaction_type, t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id;

-- ====================================
-- QUERY 2: Total Balance Per Customer
-- ====================================
-- Shows each customer's total account balance
SELECT c.name, SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_balance DESC;

-- ====================================
-- QUERY 3: Total Deposits
-- ====================================
-- Calculates total amount deposited by all customers
SELECT SUM(amount) AS total_deposits
FROM transactions
WHERE transaction_type = 'deposit';

-- ====================================
-- QUERY 4: Total Withdrawals
-- ====================================
-- Calculates total amount withdrawn by all customers
SELECT SUM(amount) AS total_withdrawals
FROM transactions
WHERE transaction_type = 'withdraw';

-- ====================================
-- QUERY 5: Recent Transactions
-- ====================================
-- Shows all transactions ordered by date (newest first)
SELECT transaction_id, account_id, amount, transaction_type, transaction_date
FROM transactions
ORDER BY transaction_date DESC;

-- ====================================
-- QUERY 6: Transaction History Per Customer
-- ====================================
-- Shows detailed transaction history for each customer
SELECT c.name, a.account_id, t.transaction_id, t.amount, 
       t.transaction_type, t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
ORDER BY c.name, t.transaction_date DESC;

-- ====================================
-- QUERY 7: Customer Account Details
-- ====================================
-- Shows customer name, city, account ID, and current balance
SELECT c.name, c.city, a.account_id, a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
ORDER BY c.name;

-- ====================================
-- QUERY 8: Net Balance Change Per Account
-- ====================================
-- Shows net change (deposits - withdrawals) for each account
SELECT a.account_id, c.name,
       SUM(CASE WHEN t.transaction_type = 'deposit' THEN t.amount ELSE 0 END) AS total_deposits,
       SUM(CASE WHEN t.transaction_type = 'withdraw' THEN t.amount ELSE 0 END) AS total_withdrawals,
       SUM(CASE WHEN t.transaction_type = 'deposit' THEN t.amount 
                WHEN t.transaction_type = 'withdraw' THEN -t.amount ELSE 0 END) AS net_change
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.account_id, c.name
ORDER BY a.account_id;
