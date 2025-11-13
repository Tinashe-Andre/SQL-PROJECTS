--By defalut AUTOCOMMIT is on which saves transactions made in the database
--but setting it off can disable that

SET AUTOCOMMIT = OFF;

--creating a safe point/saving
COMMIT;

--TO UNDO CHANGES
ROLLBACK;