SELECT 
    CustomerID, 
    TransDate, 
    CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END AS CreditAmount, 
    CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END AS DebitAmount, 
    FORMAT(TransDate, 'MM/dd/yyyy') AS TransDateFormatted
FROM 
    Trans
WHERE 
    DAY(TransDate) = 1;