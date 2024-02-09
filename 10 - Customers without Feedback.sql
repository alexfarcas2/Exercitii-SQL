/*SELECT
    CONCAT(FirstName, ' ', LastName) AS CustomerName,
    PhoneNumber,
    Gender
FROM
    Customers
WHERE
    CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Feedbacks)
ORDER BY
    CustomerID ASC;*/

