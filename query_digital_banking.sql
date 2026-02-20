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
