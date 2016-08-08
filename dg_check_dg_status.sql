set lines 132
col message for a80
col timestamp for a20
SELECT ERROR_CODE, SEVERITY, MESSAGE, 
       TO_cHAR(TIMESTAMP, 'DD-MON-RR HH24:MI:SS') TIMESTAMP
FROM V$DATAGUARD_STATUS
WHERE CALLOUT='YES'
AND TIMESTAMP > SYSDATE-1;
