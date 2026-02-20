-- PROCEDURE STOCKE QUERY --

DELIMITER //

CREATE PROCEDURE transfer_funds_update_transac(
    IN p_source_account_id INT,          
    IN p_destination_account_id INT,     
    IN p_amount DECIMAL(15,2)            -- amount to transfer
)
BEGIN
    DECLARE v_balance_source DECIMAL(15,2);

    START TRANSACTION;

    -- Check source account balance
    SELECT balance INTO v_balance_source FROM account WHERE id = p_source_account_id;
    IF v_balance_source < p_amount THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Solde insuffisant';
    END IF;

    -- Debit source account
    UPDATE account
    SET balance = balance - p_amount
    WHERE id = p_source_account_id;

    -- Credit destination account
    UPDATE account
    SET balance = balance + p_amount
    WHERE id = p_destination_account_id;

    -- Save transaction in logs (type 1 = transfer)
    INSERT INTO transactions (amount, source_account_id, destination_account_id, type_transaction_id)
    VALUES (p_amount, p_source_account_id, p_destination_account_id, 1);

    COMMIT;
END //

DELIMITER ;

-- CALL transfer_funds_update_transac(1, 2, 50);


-- ANALYTICS QUERIES --

/*Q1: Top 10 Clients by total transaction volume or total deposited amounts.*/

WITH customer_volume AS (
    SELECT 
        c.id AS customer_id,
        c.lastname,
        c.firstname,
        SUM(t.amount) AS total_volume,
        COUNT(t.id) AS nb_transactions
    FROM customers c
    JOIN account a ON c.id = a.customer_id
    JOIN transactions t ON a.id = t.source_account_id
    GROUP BY c.id, c.lastname, c.firstname
),

ranked_clients AS (
    SELECT
        customer_id,
        lastname,
        firstname,
        total_volume,
        nb_transactions,
        RANK() OVER (ORDER BY total_volume DESC) AS ranking
    FROM customer_volume
)

SELECT
    customer_id,
    lastname,
    firstname,
    total_volume,
    nb_transactions,
    ranking
FROM ranked_clients
WHERE ranking <= 10
ORDER BY ranking;

/*Q2: Ranking with rank to display the average account balance */
    -- (CTE + agrégation AVG + fenêtre RANK)

-- Ranking by customer: average balance of their accounts
WITH avg_balance_by_customer AS (
    -- Agrégation : average balance by customer
    SELECT
        c.id AS customer_id,
        c.lastname,
        c.firstname,
        COUNT(a.id) AS nb_account,
        AVG(a.balance) AS avg_balance_acc
    FROM customers c
    JOIN account a ON a.customer_id = c.id
    WHERE a.status_account = 'active'
    GROUP BY c.id, c.lastname, c.firstname
)
SELECT
    customer_id,
    lastname,
    firstname,
    nb_account,
    avg_balance_acc,
    -- Window function: ranking by descending average balance
    RANK()       OVER (ORDER BY avg_balance_acc DESC) AS rank_acc,
    DENSE_RANK() OVER (ORDER BY avg_balance_acc DESC) AS dense_rank_acc,
    ROW_NUMBER() OVER (ORDER BY avg_balance_acc DESC) AS row_rank_acc
FROM avg_balance_by_customer
ORDER BY avg_balance_acc DESC;


-- OPTIMISATION QUERY --

/*Q1*/

/*Q1*/

/*Q1*/

/*Q1*/