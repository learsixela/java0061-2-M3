use java0062;

START TRANSACTION;

update usuario 
set saldo =  saldo - 100 
where id = 6;

update usuario 
set saldo =  saldo + 100 
where id = 1;

INSERT INTO transacciones
(remitente_usuario_id, destinatario_usuario_id, importe) 
VALUES ('6', '1', '100');

COMMIT;