/*SELECT
    D.Name AS DistributorName,
    I.Name AS IngredientName,
    P.Name AS ProductName,
    AVG(F.Rate) AS AverageRate
FROM
    Distributors D
JOIN
    Ingredients I ON D.DistributorID = I.DistributorID
JOIN
    ProductsIngredients PI ON I.IngredientID = PI.IngredientID
JOIN
    Products P ON PI.ProductID = P.ProductID
LEFT JOIN
    Feedbacks F ON P.ProductID = F.ProductID
GROUP BY
    D.DistributorID, D.Name, I.IngredientID, I.Name, P.ProductID, P.Name
HAVING
    AVG(F.Rate) BETWEEN 5 AND 8 OR AVG(F.Rate) IS NULL
ORDER BY
    D.Name ASC, I.Name ASC, P.Name ASC;*/

