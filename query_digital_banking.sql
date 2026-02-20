BEGIN;
UPDATE comptes
SET solde = solde - [montant]
WHERE id = [compte_source_id];
UPDATE comptes
SET solde = solde + [montant]
WHERE id = [compte_destination_id];
COMMIT;