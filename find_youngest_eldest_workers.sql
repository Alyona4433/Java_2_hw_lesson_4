-- ���������� ���������
WITH EldestWorker AS (
    SELECT
        'ELDEST' AS TYPE,
        NAME,
        BIRTHDAY
    FROM
        WORKER
    WHERE
        BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM WORKER)
)
-- ����������� ���������
, YoungestWorker AS (
    SELECT
        'YOUNGEST' AS TYPE,
        NAME,
        BIRTHDAY
    FROM
        WORKER
    WHERE
        BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM WORKER)
)
-- ��'������� ����������
SELECT * FROM YoungestWorker
UNION ALL
SELECT * FROM EldestWorker;