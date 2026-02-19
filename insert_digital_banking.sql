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


INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (1, 1, 1, 'online', 'China', false, '6/9/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (2, 2, 2, 'contactless payement', 'China', false, '3/14/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (3, 3, 3, 'contactless payement', 'Indonesia', true, '7/23/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (4, 4, 4, 'contactless payement', 'Indonesia', true, '3/8/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (5, 5, 5, 'online', 'Sweden', false, '11/1/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (6, 6, 6, 'online', 'France', true, '2/21/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (7, 7, 7, 'online', 'Egypt', false, '3/13/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (8, 8, 8, 'contactless payement', 'Brazil', true, '8/8/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (9, 9, 9, 'contactless payement', 'Kazakhstan', true, '11/19/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (10, 10, 10, 'contactless payement', 'Sweden', false, '7/26/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (11, 11, 11, 'credit card', 'United States', false, '5/16/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (12, 12, 12, 'credit card', 'Argentina', false, '6/25/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (13, 13, 13, 'contactless payement', 'Russia', true, '7/24/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (14, 14, 14, 'credit card', 'Nicaragua', false, '7/25/2025');
INSERT INTO payment_card (id, transaction_id, banking_card_id, payment_method, merchant_country, three_ds_status, payment_date) VALUES (15, 15, 15, 'online', 'Brazil', false, '8/18/2025');
