--- TABLE TRANSACTIONS ---
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (1, 5950447, '1/14/2026', 1, 1, 1);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (2, 9593365, '5/30/2025', 2, 2, 2);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (3, 4579501, '5/18/2025', 3, 3, 3);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (4, 9069108, '6/23/2025', 4, 4, 4);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (5, 4986310, '11/9/2025', 5, 5, 5);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (6, 7696275, '5/22/2025', 6, 6, 6);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (7, 6271709, '1/16/2026', 7, 7, 7);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (8, 1071093, '5/14/2025', 8, 8, 8);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (9, 6354004, '11/15/2025', 9, 9, 9);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (10, 8103905, '3/6/2025', 10, 10, 10);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (11, 4466332, '1/26/2026', 11, 11, 11);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (12, 9152601, '9/27/2025', 12, 12, 12);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (13, 9734962, '8/8/2025', 13, 13, 13);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (14, 6269428, '1/24/2026', 14, 14, 14);
INSERT INTO transactions (id, amount, date_transac, source_account_id, destination_account_id, type_transaction_id) VALUES (15, 5720105, '8/19/2025', 15, 15, 15);

--- TABLE PAYMENT CARD ---
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (1, 1, 1, 'online', 'China', SUCCESS, '6/9/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (2, 2, 2, 'contactless payement', 'China', SUCCESS, '3/14/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (3, 3, 3, 'contactless payement', 'Indonesia', SKIPPED, '7/23/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (4, 4, 4, 'contactless payement', 'Indonesia', SKIPPED, '3/8/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (5, 5, 5, 'online', 'Sweden', SUCCESS, '11/1/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (6, 6, 6, 'online', 'France', SKIPPED, '2/21/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (7, 7, 7, 'online', 'Egypt', SUCCESS, '3/13/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (8, 8, 8, 'contactless payement', 'Brazil', FAILED, '8/8/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (9, 9, 9, 'contactless payement', 'Kazakhstan', SKIPPED, '11/19/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (10, 10, 10, 'contactless payement', 'Sweden', SUCCESS, '7/26/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (11, 11, 11, 'credit card', 'United States', FAILED, '5/16/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (12, 12, 12, 'credit card', 'Argentina', SUCCESS, '6/25/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (13, 13, 13, 'contactless payement', 'Russia', SKIPPED, '7/24/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (14, 14, 14, 'credit card', 'Nicaragua', SUCCESS, '7/25/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (15, 15, 15, 'online', 'Brazil', FAILED, '8/18/2025');

--- TABLE TRANSFER ---
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (1, 1, 1, 1, '604191262-X', 'Morbi porttitor lorem id ligula. In est risus,', '1/13/2026', '2/27/2025', '$2.10');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (2, 2, 2, 2, '902382231-A', 'Phasellus sit amet erat. Nulla tempus.', '1/29/2026', '12/9/2025', '$3.29');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (3, 3, 3, 3, '716918656-X', 'Nulla ac enim. In tempor,', '9/11/2025', '1/7/2026', '$2.18');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (4, 4, 4, 4, '261730452-B', 'Lorem ipsum dolor sit amet', '5/26/2025', '8/6/2025', '$0.47');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (5, 5, 5, 5, '399288244-C', 'Fusce posuere felis sed lacus, nisl.', '10/27/2025', '4/15/2025', '$1.36');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (6, 6, 6, 6, '842238202-X', 'Pellentesque ultrices mattis odio.', '1/5/2026', '5/5/2025', '$3.28');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (7, 7, 7, 7, '916077324-X', 'Proin at turpis a pede posuere nonummy.', '10/14/2025', '9/2/2025', '$1.72');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (8, 8, 8, 8, '175516613-Y', 'Aliquam quis turpis eget elit sodales scelerisque.', '8/14/2025', '3/9/2025', '$0.26');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (10, 10, 10, 10, '459707343-Q', 'In eleifend quam a odio.', '10/24/2025', '12/27/2025', '$2.09');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (11, 11, 11, 11, '592580441-Q', 'Nulla neque libero, convallis eget.', '12/10/2025', '1/1/2026', '$3.20');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (12, 12, 12, 12, '389685098-Y', 'Nulla justo.', '9/20/2025', '3/5/2025', '$3.81');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (13, 13, 13, 13, '234658169-Y', 'Maecenas tristique, est et tempus semper.', '3/26/2025', '11/15/2025', '$3.33');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (14, 14, 14, 14, '077292479-Z', 'Praesent blandit. Nam nulla.', '4/26/2025', '3/19/2025', '$1.04');
INSERT INTO transfer (id, transaction_id, beneficiary_id, account_id, reference, reason, creation_date, execution_date, fees) VALUES (15, 15, 15, 15, '042637994-2', 'Aenean lectus. Pellentesque eget nunc leo.', '3/4/2025', '7/22/2025', '$4.69');

--- TABLE AUDIT LOGS ---
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (1, 'add', 1, 'account','500', '530', 'balance', '7/1/2025', 1);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (2, 'add', 2, 'account','500', '530', 'balance', '10/10/2025', 2);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (3, 'add', 3, 'account','500', '530', 'balance', '6/16/2025', 3);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (4, 'update', 4, 'customers','50', '51', 'birthdate', '1/18/2026', 4);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (5, 'delete', 5, 'customers','eric@gmail.com', ' ', 'email', '4/9/2025', 5);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (6, 'add', 6, 'account','500', '530', 'balance', '10/27/2025', 6);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (7, 'update', 7, 'customers','50', '51', 'birthdate', '10/3/2025', 7);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (8, 'add', 8, 'account', '500', '530','balance', '10/12/2025', 8);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (9, 'update', 9, 'customers','50', '51', 'birthdate', '1/4/2026', 9);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (10, 'update', 10, 'customers','50', '51', 'birthdate', '9/23/2025', 10);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (11, 'add', 11, 'account','500', '530', 'balance', '3/12/2025', 11);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (12, 'update', 12, 'customer','50', '51', 'birthdate', '10/5/2025', 12);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (13, 'delete', 13, 'customers','dan@gmail.com', ' ', 'email', '3/10/2025', 13);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (14, 'update', 14, 'customers','50', '51', 'birthdate', '8/27/2025', 14);
INSERT INTO audit_logs (id, action_logs, customer_id, relevant_table, old_values, new_values, changed_fields, action_date, transaction_id) VALUES (15, 'update', 15, 'customers','50', '51', 'birthdate', '4/10/2025', 15);

