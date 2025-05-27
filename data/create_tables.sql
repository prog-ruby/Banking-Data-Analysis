-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    city VARCHAR(50),
    created_at DATE
);

-- Table: accounts
CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    branch_id INT,
    opened_on DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table: transactions
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    type ENUM('deposit', 'withdrawal'),
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Table: loans
CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    loan_type VARCHAR(50),
    amount DECIMAL(10,2),
    status ENUM('approved', 'pending', 'rejected', 'defaulted'),
    issue_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table: branches
CREATE TABLE branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100),
    city VARCHAR(50),
    manager_name VARCHAR(100)
);

-- Table: users
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255)
);
