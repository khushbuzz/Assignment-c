SELECT 
    CustomerID, 
    YEAR(TransDate) AS Year, 
    SUM(CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END) AS CreditTotalAmount, 
    SUM(CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END) AS DebitTotalAmount
FROM 
    Trans
GROUP BY 
    CustomerID, 
    YEAR(TransDate);