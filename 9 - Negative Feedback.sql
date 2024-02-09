/*SELECT
    Feedbacks.ProductID,
    Feedbacks.Rate,
    Feedbacks.Description,
    Customers.CustomerID,
    Customers.Age,
    Customers.Gender
FROM
    Feedbacks
JOIN
    Customers ON Feedbacks.CustomerID = Customers.CustomerID
WHERE
    Feedbacks.Rate < 5.0
ORDER BY
    Feedbacks.ProductID DESC,
    Feedbacks.Rate ASC;*/

