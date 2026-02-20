
--- TABLE TRANSACTIONS ---
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
(13, 820.10, '2025-01-17 11:50:00', 13, 14, 3),
(14, 60.00, '2025-01-18 14:15:00', 14, 15, 4),
(15, 9999.99, '2025-01-19 18:00:00', 15, 1, 5);

--- TABLE PAYMENT_CARD ---
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
(13, 13, 13, 'contactless', 'Spain', 'SUCCESS', '2025-01-17 11:52:00'),
(14, 14, 14, 'online', 'Italy', 'SUCCESS', '2025-01-18 14:17:00'),
(15, 15, 15, 'contactless', 'USA', 'SUCCESS', '2025-01-19 18:05:00');


--- TABLE TRANSFER ---
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
(13, 13, 13, 13, 'REF013', 'Friend refund ', '2025-01-16 11:00:00', '2025-01-17', 0.00),
(14, 14, 14, 14, 'REF014', 'School fees', '2025-01-17 12:00:00', '2025-01-18', 2.00),
(15, 15, 15, 15, 'REF015', 'Donation charity', '2025-01-18 13:00:00', '2025-01-19', 0.30);


--- TABLE AUDIT_LOGS ---
INSERT INTO audit_logs
(id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id)
VALUES
(1, 'INSERT', 1, 'transactions', '1000', '1500.00', 'amount', '2025-01-05 10:16:00', 1),
(2, 'INSERT', 2, 'transactions', '30.50', '230.50', 'amount', '2025-01-06 11:22:00', 2),
(3, 'UPDATE', 3, 'account', '1000', '1100', 'balance', '2025-01-07 09:15:00', 3),
(4, 'DELETE', 4, 'beneficiary', 'Ross', NULL, 'name', '2025-01-08 14:50:00', 4),
(5, 'INSERT', 5, 'transaction', '300.00', '500.00', 'amount', '2025-01-09 16:10:00', 5),
(6, 'UPDATE', 6, 'transactions', '75.30', '80.30', 'amount', '2025-01-10 12:35:00', 6),
(7, 'INSERT', 7, 'payment_card', 'FAILED', 'SUCCESS', 'three_ds_status', '2025-01-11 08:45:00', 7),
(8, 'UPDATE', 8, 'account', '2000', '1660', 'balance', '2025-01-12 14:00:00', 8),
(9, 'UPDATE', 9, 'account', '3000', '5000', 'balance', '2025-01-13 15:20:00', 9),
(10, 'UPDATE', 10, 'customers', 'inactive', 'active', 'status', '2025-01-14 17:30:00', 10),
(11, 'INSERT', 11, 'transactions', '1200.00', '1300.00', 'amount', '2025-01-15 09:05:00', 11),
(12, 'UPDATE', 12, 'account', '1500', '1030', 'balance', '2025-01-16 10:40:00', 12),
(13, 'INSERT', 13, 'payment_card', 'FAILED', 'SUCCESS', 'three_ds_status', '2025-01-17 11:55:00', 13),
(14, 'DELETE', 14, 'payment_card', 'FAILED', NULL, 'three_ds_status', '2025-01-18 14:20:00', 14),
(15, 'INSERT', 15, 'transactions', '5555.00', '9999.99', 'amount', '2025-01-19 18:10:00', 15);
