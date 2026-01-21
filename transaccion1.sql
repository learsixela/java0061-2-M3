use java0062;

START TRANSACTION;

update usuario 
set saldo =  saldo - 400 
where id = 1;

update usuario 
set saldo =  saldo + 400 
where id = 10;
-- ROLLBACK;

INSERT INTO transacciones
(remitente_usuario_id, destinatario_usuario_id, importe) 
VALUES ('1', '10', '400');
ROLLBACK;
COMMIT;