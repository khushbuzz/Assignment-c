SELECT 
    CustomerID, 
    TransDate, 
    CASE TransType 
        WHEN 'C' THEN 'Credit' 
        WHEN 'D' THEN 'Debit' 
        ELSE TransType 
    END AS TransType, 
    Amount,
    DATENAME(dw, TransDate) AS WeekDay
FROM 
    Trans;