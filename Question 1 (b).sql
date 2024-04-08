SELECT 
    CustomerID, 
    TransDate, 
    CASE TransType 
        WHEN 'C' THEN Amount 
        ELSE 0.00 
    END AS CreditAmount, 
    CASE TransType 
        WHEN 'D' THEN Amount 
        ELSE 0.00 
    END AS DebitAmount, 
    FORMAT(TransDate, 'MM/dd/yyyy') AS TransDateFormatted
FROM 
    Trans;