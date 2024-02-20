Create Databases if not exists emp




/*Data Base */

CREATE TABLE IF NOT EXISTS company 
( ID INT PRIMARY KEY NOT NULL,
 NAME VARCHAR (50) NOT NULL,
 AGE INT NOT NULL,
 ADDRESS VARCHAR(100),
 SALARY REAL) ;


/*Tableau */ 

Insert INTO company (ID,NAME,AGE,ADDRESS,SALARY)
             VALUES (2,'ALLEN',23,'TEXAS',20000.00);
Insert INTO company (ID,NAME,AGE,ADDRESS,SALARY)
             VALUES (1,'PAUL',22,'CALIFORNIA',30000.00);
       
INSERT INTO company (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (3, 'TEDDY', 24, 'NORWAY', 25000.00),
       (4, 'MARK', 25, 'RICHMOND', 50000.00);

/*select*/
select * from company ; 


/*update*/

UPDATE company SET SALARY = 25000.00 WHERE ID=1;
DELETE FROM company WHERE ID=2;
SELECT * FROM company;

/*delete*/

DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS emp;

/*create user*/

create user mary@localehost IDENTIFIED by '123';


GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
on emp.* to mary@mlocalehost
with GRANT OPTION;

GRANT SELECT ON mysql.* TO 'mary'@'montreal';

 
 GRANT all
 on emp.* to mary@montreal 
with grant option;

/*ca c'est faux */  show GRANTS for mary@montreal;
/* ca c/est le vrai*/  GRANT SELECT ON mysql.* TO 'mary'@'montreal';

GRANT all
 on *.* to mary@montreal 
with grant option;

BNB

/*effacer user*/
drop user mary@localhost;


/*ca c'est faux */show GRANTS for mary@montreal;


/* ca c/est le vrai*/  GRANT SELECT ON mysql.* TO 'mary'@'montreal';

REVOKE ALL PRIVILEGES ON *.* FROM mary@montreal;
REVOKE GRANT OPTION ON *.* FROM mary@montreal;

/*ca c est faux*/      show GRANTS for mary@montreal;
/* ca c/est le vrai*/  GRANT SELECT ON mysql.* TO 'mary'@'montreal';



REVOKE ALL PRIVILEGES ON emp.* FROM mary@montreal;
REVOKE GRANT OPTION ON emp.* FROM mary@montreal;

show GRANTS for mary@montreal;

drop user mary@montreal;


