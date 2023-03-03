SELECT C.APNT_NO, A.PT_NAME, A.PT_NO, B.MCDP_CD, B.DR_NAME, C.APNT_YMD
FROM PATIENT A
JOIN APPOINTMENT C
ON A.PT_NO = C.PT_NO
JOIN DOCTOR B
ON B.DR_ID = C.MDDR_ID
WHERE C.APNT_YMD LIKE '2022-04-13%'
AND C.MCDP_CD = 'CS'
AND APNT_CNCL_YN = 'N'
ORDER BY C.APNT_YMD