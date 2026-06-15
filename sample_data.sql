-- Insert Customers
INSERT INTO customers VALUES
(1, 'Ruchi', 'Delhi'),
(2, 'Amit', 'Mumbai');

-- Insert Accounts
INSERT INTO accounts VALUES
(101, 1, 50000),
(102, 2, 30000);

-- Insert Transactions
INSERT INTO transactions VALUES
(1, 101, 10000, 'deposit', '2026-04-01'),
(2, 101, 5000, 'withdraw', '2026-04-02'),
(3, 102, 7000, 'deposit', '2026-04-03');
