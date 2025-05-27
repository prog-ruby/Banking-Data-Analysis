-- Sample branch records
INSERT INTO branches (branch_id, branch_name, city, manager_name) VALUES
(1, 'Branch_1', 'Seattle', 'Alice Johnson'),
(2, 'Branch_2', 'New York', 'Bob Smith'),
...

-- Sample customer records
INSERT INTO customers (customer_id, name, dob, gender, city, created_at) VALUES
(1, 'John Doe', '1985-06-15', 'Male', 'New York', '2021-03-25'),
...

-- Sample account records
INSERT INTO accounts (account_id, customer_id, account_type, balance, branch_id, opened_on) VALUES
(1, 1, 'savings', 15000.50, 1, '2021-04-01'),
...

-- Sample transactions
INSERT INTO transactions (transaction_id, account_id, type, amount, transaction_date) VALUES
(1, 1, 'deposit', 2000.00, '2023-01-10'),
...

-- Sample loans
INSERT INTO loans (loan_id, customer_id, loan_type, amount, status, issue_date) VALUES
(1, 1, 'home', 120000.00, 'approved', '2022-05-20'),
...
