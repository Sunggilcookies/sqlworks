-- tcl_test 테이블 생성
CREATE TABLE tcl_test(
    c1 NUMBER(2),
    c2 NUMBER(3)
);

SAVEPOINT   t1;
INSERT INTO tcl_test VALUES (10,100);

SAVEPOINT t2;
INSERT INTO tcl_test VALUES (10,200);
SELECT * FROM tcl_test;

ROLLBACK TO t1;
COMMIT;
DROP TABLE tcl_test;