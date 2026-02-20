-- TABLE CUSTOMERS --
INSERT INTO customers (lastname, firstname, email, phone_number, birthdate, registration_date, status_customers) 
VALUES ('Toe', 'Jamesy', 'jtoe0@latimes.com', '0158278320', '1979-04-13', '2024-07-03', 'inactive'),
 ('Parmby', 'Lenka', 'lparmby1@sina.com.cn', '0423720663', '2019-12-01', '2024-12-17', 'active'),
 ('Vawton', 'Isidora', 'ivawton2@telegraph.co.uk', '0428075940', '1963-03-21', '2023-01-31', 'active'),
 ('Provis', 'Raphaela', 'rprovis3@cdbaby.com', '0139366197', '1997-07-05', '2023-05-27', 'suspended'),
 ('Brayshay', 'Frances', 'fbrayshay4@ezinearticles.com', '0436338187', '1967-12-16', '2024-07-31', 'inactive'),
 ('McGow', 'Ellswerth', 'emcgow5@indiegogo.com', '0188687244', '1966-12-04', '2022-01-05', 'active'),
 ('Bundy', 'Brook', 'bbundy6@google.ru', '0346253993', '1993-11-13', '2024-09-16', 'suspended'),
 ('Mapledoram', 'Abbie', 'amapledoram7@diigo.com', '0191226406', '1989-03-07', '2024-04-07', 'inactive'),
 ('McElmurray', 'Halette', 'hmcelmurray8@github.io', '0843166012', '2018-02-28', '2026-01-12', 'inactive'),
 ('Gateland', 'Anastasie', 'agateland9@51.la', '0813287962', '2023-03-06', '2024-04-08', 'active'),
 ('Jolly', 'Barbi', 'bjollya@aboutads.info', '0725768592', '2007-01-04', '2024-09-17', 'active'),
 ('Gornal', 'Tamera', 'tgornalb@wp.com', '0621310418', '1976-01-18', '2022-05-24', 'inactive'),
 ('Preedy', 'Adele', 'apreedyc@zimbio.com', '0431900141', '2026-07-01', '2023-09-19', 'suspended');

-- TABLE ACCOUNT --
INSERT INTO account (account_number, customer_id, iban, type_account, balance, currency, status_account, opening_date) 
VALUES 
('FR6160773145', 1, 'FR32 6725 7497 69AO QCJB EEUB G95', 'Current', 9667.87, 'USD', 'closed', '2025-02-22'),
('FR5883179443', 2, 'FR15 1638 4937 26CH BX83 GZAW B02', 'Current', 12613.47, 'EUR', 'closed', '2025-03-16'),
('FR8743901016', 3, 'AL86 1086 6932 BNOT WDVG YDSR E255', 'Business', 4172.41, 'GBP', 'active', '2025-04-27'),
('FR3621591773', 4, 'ME31 1559 0409 1182 7556 74', 'Current', 13669.76, 'GBP', 'active', '2025-05-19'),
('FR1537003081', 5, 'IE78 JNSK 7363 5391 4606 13', 'Savings', 8262.04, 'GBP', 'blocked', '2025-06-29'),
('FR2650878411', 6, 'MC77 6223 4809 57MZ BA9K WI5B M10', 'Savings', 19520.16, 'EUR', 'active', '2025-07-31'),
('FR3675461855', 7, 'FR85 8438 9399 328I B4TK UYFK Q98', 'Joint', 13064.88, 'EUR', 'blocked', '2025-08-20'),
('FR9415905482', 8, 'TR40 1403 1VIH RBBT I4OY 99OO FQ', 'Business', 2540.78, 'GBP', 'closed', '2025-09-12'),
('FR2582798954', 9, 'LV58 KUBU HUWC HXCY 2I2L O', 'Current', 8600.08, 'EUR', 'closed', '2025-10-03'),
('FR2148003511', 10, 'LU23 262R LPR3 GKFV JDHW', 'Joint', 4089.59, 'USD', 'blocked', '2025-11-21'),
('FR2653324228', 11, 'VG54 GSXL 5196 0767 2378 4182', 'Savings', 5908.43, 'EUR', 'blocked', '2025-12-14'),
('FR9678620271', 12, 'IL29 5674 4670 8700 1056 385', 'Business', 17434.52, 'GBP', 'closed', '2026-01-05'),
('FR1651612042', 13, 'FR78 3345 0942 23OU Y7HK LF2I 770', 'Business', 13065.45, 'EUR', 'active', '2026-01-23');


-- TABLE TYPE_TRANSACTION--
INSERT INTO type_transaction (code, label, description_transac, active)
VALUES
('CARD_PAY', 'Card Payment', 'Online card payment', true),
('VIR_EXT', 'External Transfer', 'Transfer to external account', true),
('VIR_INT', 'Internal Transfer', 'Transfer between internal accounts', true),
('REFUND', 'Refund', 'Customer refund', true),
('DEPOSIT', 'Cash Deposit', 'Deposit at branch or ATM', true),
('WITHDRAWAL', 'ATM Withdrawal', 'Cash withdrawal from ATM', true);



-- TABLE BENEFICIARY --
INSERT INTO beneficiary (customer_id, name_beneficiary, iban, bank_name, added_at) 
VALUES (1, 'Hinze Windham', 'MR21 3854 8722 9072 5214 2895 931', 'HSBC', '2023-10-23'),
(2, 'Towney Pinchback', 'LT13 7265 5533 7462 4173', 'La Banque Postale', '2025-05-03'),
(3, 'Theresina Hiers', 'NL16 EFBO 5991 3945 55', 'HSBC', '2024-02-07'),
(4, 'Alasdair O''Hone', 'FR66 9721 5896 18GK VDKM JEW4 642', 'HSBC', '2025-12-06'),
(5, 'Liane Keuneke', 'FR52 7621 1154 88CS WNCJ RJZD H83', 'LCL', '2025-02-07'),
(6, 'Hyacinth Cortin', 'SK37 7647 0812 2589 9359 9000', 'BNP Paribas', '2025-10-27'),
(7, 'Heinrik Kirby', 'NL84 EMLH 8504 5138 11', 'Société Générale', '2025-12-24'),
(8, 'Grace Karslake', 'MT87 UMDK 7938 4KC0 JC14 ZD6Y 9DWW R6O', 'Crédit Agricole', '2023-09-08'),
(9, 'Porter Lindberg', 'LV25 YEHO OLS5 A6YD DDDD R', 'HSBC', '2023-11-11'),
(10, 'Sammy Delaprelle', 'GB60 OUIF 2856 6265 9650 85', 'Crédit Agricole', '2024-10-21'),
(11, 'Maren Kiggel', 'FR77 2566 2188 91JC OYQD H5VR O90', 'BNP Paribas', '2025-10-12'),
(12, 'Carree Hartill', 'LU87 840U TZUS ZMBO 0AOA', 'Société Générale', '2023-07-15'),
(13, 'Mil Auckland', 'LI82 0682 3HYB HOF7 M1V5 Z', 'HSBC', '2024-02-03');

-- TABLE BANKING CARD--
INSERT INTO banking_card (card_number, account_id, card_type, expiration_date, payment_ceiling, withdrawal_limit, status_card) 
VALUES (5824555431158696, 1, 'Mastercard', '2030-07-06', 9965.71, 1028.51, 'blocked'),
(5165020551376869, 2, 'Gold', '2028-04-09', 5346.09, 1614.22, 'blocked'),
(4619801607599843, 3, 'Gold', '2028-01-09', 6774.54, 1733.59, 'active'),
(5729801766256674, 4, 'Platinum', '2027-08-10', 8868.5, 1325.0, 'expired'),
(5857348457557264, 5, 'Business', '2030-05-27', 9850.78, 1852.98, 'suspended'),
(5931248288429867, 6, 'Mastercard', '2030-02-19', 6164.19, 1142.22, 'blocked'),
(5606266712825977, 7, 'Visa', '2028-07-01', 7026.18, 309.97, 'expired'),
(4209281199380643, 8, 'Business', '2029-02-18', 1731.88, 524.42, 'suspended'),
(4418108435539432, 9, 'Business', '2030-03-10', 8996.97, 839.27, 'expired'),
(5104705505405595, 10, 'Gold', '2030-02-23', 3424.28, 1454.02, 'blocked'),
(5830379689550274, 11, 'Business', '2026-04-05', 2185.3, 372.03, 'expired'),
(4020372906833018, 12, 'Mastercard', '2027-12-17', 6868.16, 358.69, 'suspended'),
(4258037009783445, 13, 'Business', '2030-05-03', 4390.99, 500.03, 'suspended');


-- TABLE TRANSACTIONS --
INSERT INTO transactions
(id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id)
VALUES
(1, 1500.00, '2025-01-05 10:15:00', 1, 2, 1),
(2, 230.50, '2025-01-06 11:20:00', 2, 3, 2),
(3, 890.75, '2025-01-07 09:10:00', 3, 4, 3),
(4, 120.00, '2025-01-08 14:45:00', 4, 5, 4),
(5, 5600.00, '2025-01-09 16:00:00', 5, 6, 5),
(6, 75.30, '2025-01-10 12:30:00', 6, 7, 1),
(7, 980.00, '2025-01-11 08:40:00', 7, 8, 2),
(8, 340.60, '2025-01-12 13:55:00', 8, 9, 3),
(9, 4100.00, '2025-01-13 15:10:00', 9, 10, 4),
(10, 299.99, '2025-01-14 17:25:00', 10, 11, 5),
(11, 1300.00, '2025-01-15 09:00:00', 11, 12, 1),
(12, 470.45, '2025-01-16 10:35:00', 12, 13, 2),
(13, 820.10, '2025-01-17 11:50:00', 13, 1, 3);


-- TABLE PAYMENT_CARD --
INSERT INTO payment_card
(id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date)
VALUES
(1, 1, 1, 'online', 'France', 'SUCCESS', '2025-01-05 10:16:00'),
(2, 2, 2, 'contactless', 'Germany', 'SUCCESS', '2025-01-06 11:22:00'),
(3, 3, 3, 'online', 'Spain', 'FAILED', '2025-01-07 09:12:00'),
(4, 4, 4, 'contactless', 'Italy', 'SUCCESS', '2025-01-08 14:47:00'),
(5, 5, 5, 'online', 'USA', 'SUCCESS', '2025-01-09 16:05:00'),
(6, 6, 6, 'online', 'Canada', 'SKIPPED', '2025-01-10 12:31:00'),
(7, 7, 7, 'contactless', 'Belgium', 'SUCCESS', '2025-01-11 08:42:00'),
(8, 8, 8, 'online', 'Sweden', 'FAILED', '2025-01-12 13:57:00'),
(9, 9, 9, 'contactless', 'Portugal', 'SUCCESS', '2025-01-13 15:12:00'),
(10, 10, 10, 'online', 'Netherlands', 'SUCCESS', '2025-01-14 17:27:00'),
(11, 11, 11, 'contactless', 'France', 'SUCCESS', '2025-01-15 09:02:00'),
(12, 12, 12, 'online', 'Germany', 'FAILED', '2025-01-16 10:37:00'),
(13, 13, 13, 'contactless', 'Spain', 'SUCCESS', '2025-01-17 11:52:00');



-- TABLE TRANSFER --
INSERT INTO transfer
(id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees)
VALUES
(1, 1, 1, 1, 'REF001', 'January bill', '2025-01-04 09:00:00', '2025-01-05', 1.50),
(2, 2, 2, 2, 'REF002', 'Water bill', '2025-01-05 10:00:00', '2025-01-06', 0.80),
(3, 3, 3, 3, 'REF003', 'Electricity bill', '2025-01-06 08:00:00', '2025-01-07', 0.90),
(4, 4, 4, 4, 'REF004', 'Internet', '2025-01-07 12:00:00', '2025-01-08', 0.75),
(5, 5, 5, 5, 'REF005', 'Pay', '2025-01-08 15:00:00', '2025-01-09', 0.00),
(6, 6, 6, 6, 'REF006', 'Refund', '2025-01-09 11:00:00', '2025-01-10', 1.20),
(7, 7, 7, 7, 'REF007', 'Insurance', '2025-01-10 09:30:00', '2025-01-11', 0.60),
(8, 8, 8, 8, 'REF008', 'Amazon subscription', '2025-01-11 13:00:00', '2025-01-12', 0.50),
(9, 9, 9, 9, 'REF009', 'Car credit', '2025-01-12 14:00:00', '2025-01-13', 1.80),
(10, 10, 10, 10, 'REF010', 'Saving', '2025-01-13 16:00:00', '2025-01-14', 0.40),
(11, 11, 11, 11, 'REF011', 'Febuary bill', '2025-01-14 09:00:00', '2025-01-15', 1.50),
(12, 12, 12, 12, 'REF012', 'Fuel bill', '2025-01-15 10:00:00', '2025-01-16', 0.85),
(13, 13, 13, 13, 'REF013', 'Friend refund ', '2025-01-16 11:00:00', '2025-01-17', 0.00);



-- TABLE AUDIT_LOGS --
INSERT INTO audit_logs
(id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id)
VALUES
(1, 'INSERT', 1, 'transactions', '1000', '1500.00', '["amount"]', '2025-01-05 10:16:00', 1),
(2, 'INSERT', 2, 'transactions', '30.50', '230.50', '["amount"]', '2025-01-06 11:22:00', 2),
(3, 'UPDATE', 3, 'account', '1000', '1100', '["balance"]', '2025-01-07 09:15:00', 3),
(4, 'DELETE', 4, 'beneficiary', 'Ross', NULL, '["name"]', '2025-01-08 14:50:00', 4),
(5, 'INSERT', 5, 'transaction', '300.00', '500.00', '["amount"]', '2025-01-09 16:10:00', 5),
(6, 'UPDATE', 6, 'transactions', '75.30', '80.30', '["amount"]', '2025-01-10 12:35:00', 6),
(7, 'INSERT', 7, 'payment_card', 'FAILED', 'SUCCESS', '["three_ds_status"]', '2025-01-11 08:45:00', 7),
(8, 'UPDATE', 8, 'account', '2000', '1660', '["balance"]', '2025-01-12 14:00:00', 8),
(9, 'UPDATE', 9, 'account', '3000', '5000', '["balance"]', '2025-01-13 15:20:00', 9),
(10, 'UPDATE', 10, 'customers', 'inactive', 'active', '["status"]', '2025-01-14 17:30:00', 10),
(11, 'INSERT', 11, 'transactions', '1200.00', '1300.00', '["amount"]', '2025-01-15 09:05:00', 11),
(12, 'UPDATE', 12, 'account', '1500', '1030', '["balance"]', '2025-01-16 10:40:00', 12),
(13, 'INSERT', 13, 'payment_card', 'FAILED', 'SUCCESS', '["three_ds_status"]', '2025-01-17 11:55:00', 13);


-- FRAUD --
INSERT INTO fraud (id, status_fraud, detection_date, risk_level, transaction_id) VALUES
(1, 'fraudulent sms', '2025-10-15', 2, 1),
(2, 'fraudulent sms', '2025-12-10', 2, 2),
(3, 'deepfake', '2026-01-06', 5, 3),
(4, 'phishing', '2025-03-09', 4, 4),
(5, 'phishing', '2026-01-30', 4, 5),
(6, 'phishing', '2025-11-04', 4, 6),
(7, 'fraudulent sms', '2025-04-17', 2, 7),
(8, 'deepfake', '2025-12-04', 5, 8),
(9, 'deepfake', '2025-05-06', 5, 9),
(10, 'fraudulent sms', '2025-04-12', 2, 10),
(11, 'fraudulent sms', '2025-03-06', 2, 11),
(12, 'fraudulent sms', '2025-02-27', 2, 12),
(13, 'fraudulent sms', '2025-07-12', 2, 13);