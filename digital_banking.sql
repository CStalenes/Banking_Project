DROP DATABASE IF EXISTS digital_banking;
CREATE DATABASE digital_banking;
USE digital_banking;

CREATE TABLE customers(
   id INT AUTO_INCREMENT PRIMARY KEY,
   lastname VARCHAR(50) NOT NULL,
   firstname VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   phone_number VARCHAR(20) NOT NULL,
   birthdate DATE NOT NULL,
   registration_date DATE DEFAULT CURRENT_DATE NOT NULL,
   status_customers BOOLEAN
);

CREATE TABLE account(
   id INT AUTO_INCREMENT PRIMARY KEY,
   account_number VARCHAR(34) UNIQUE NOT NULL,
   customer_id INT(50) NOT NULL,
   iban VARCHAR(34) UNIQUE NOT NULL,
   type_account VARCHAR(50) NOT NULL,
   balance DECIMAL(15,2) DEFAULT 0 NOT NULL,
   currency VARCHAR(10) NOT NULL,
   status_account VARCHAR(50) NOT NULL,
   opening_date DATE DEFAULT CURRENT_DATE,
   FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE type_transaction(
   id INT AUTO_INCREMENT PRIMARY KEY,
   code VARCHAR(20) NOT NULL UNIQUE,
   label VARCHAR(50) NOT NULL,
   description_transac VARCHAR(255),
   active BOOLEAN
);

CREATE TABLE beneficiary(
   id INT AUTO_INCREMENT PRIMARY KEY,
   customer_id INT NOT NULL,
   name_beneficiary VARCHAR(100) NOT NULL,
   iban VARCHAR(34) NOT NULL,
   bank_name VARCHAR(100) NOT NULL,
   added_at DATETIME NOT NULL,
   FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE banking_card(
   id INT AUTO_INCREMENT PRIMARY KEY,
   card_number VARCHAR(25) NOT NULL,
   account_id INT NOT NULL,
   card_type VARCHAR(50) NOT NULL,
   expiration_date DATE NOT NULL,
   payment_ceiling DECIMAL(15,2) NOT NULL,
   withdrawal_limit DECIMAL(15,2) NOT NULL,
   status_card VARCHAR(50) NOT NULL,
   FOREIGN KEY(account_id) REFERENCES account(id)
);

CREATE TABLE transactions(
   id INT AUTO_INCREMENT PRIMARY KEY,
   amount DECIMAL(15,2) NOT NULL,
   date_transac TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   source_account_id INT NOT NULL,
   destination_account_id INT NOT NULL,
   type_transaction_id INT NOT NULL,
   FOREIGN KEY(source_account_id) REFERENCES account(id),
   FOREIGN KEY(destination_account_id) REFERENCES account(id),
   FOREIGN KEY(type_transaction_id) REFERENCES type_transaction(id)
);

CREATE TABLE payment_card(
   id INT AUTO_INCREMENT PRIMARY KEY,
   transaction_id INT NOT NULL UNIQUE,
   banking_card_id INT NOT NULL,
   payment_method VARCHAR(50),
   merchant_country VARCHAR(50),
   three_ds_status VARCHAR(50),
   payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FOREIGN KEY(transaction_id) REFERENCES transactions(id),
   FOREIGN KEY(banking_card_id) REFERENCES banking_card(id)
);

CREATE TABLE transfer(
   id INT AUTO_INCREMENT PRIMARY KEY,
   transaction_id INT NOT NULL UNIQUE,
   beneficiary_id INT NOT NULL,
   account_id INT NOT NULL,
   reference VARCHAR(50) NOT NULL,
   reason VARCHAR(255),
   creation_date DATE DEFAULT CURRENT_DATE NOT NULL,
   execution_date DATE DEFAULT CURRENT_DATE NOT NULL,
   fees DECIMAL(15,2) NOT NULL,
   FOREIGN KEY(transaction_id) REFERENCES transactions(id),
   FOREIGN KEY(account_id) REFERENCES account(id),
   FOREIGN KEY(beneficiary_id) REFERENCES beneficiary(id)
);

CREATE TABLE audit_logs(
   id INT AUTO_INCREMENT PRIMARY KEY,
   action_logs VARCHAR(50) NOT NULL,
   customer_id INT NOT NULL,
   relevant_table VARCHAR(50) NOT NULL,
   old_values VARCHAR5(250) NOT NULL,
   new_values VARCHAR(250),
   changed_fields JSON,
   action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   transaction_id INT,
   FOREIGN KEY(transaction_id) REFERENCES transactions(id)
);

CREATE TABLE fraud(
   id INT AUTO_INCREMENT PRIMARY KEY,
   status_fraud VARCHAR(50) NOT NULL,
   detection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   risk_level VARCHAR(50),
   transaction_id INT NOT NULL,
   FOREIGN KEY(transaction_id) REFERENCES transactions(id)
);


