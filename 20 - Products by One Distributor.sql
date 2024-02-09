/*SELECT
    P.Name AS ProductName,
    AVG(F.Rate) AS ProductAverageRate,
    D.Name AS DistributorName,
    C.Name AS DistributorCountry
FROM
    Products P
JOIN
    ProductsIngredients PI ON P.ProductID = PI.ProductID
JOIN
    Ingredients I ON PI.IngredientID = I.IngredientID
JOIN
    Distributors D ON I.DistributorID = D.DistributorID
JOIN
    Countries C ON D.CountryID = C.CountryID
LEFT JOIN
    Feedbacks F ON P.ProductID = F.ProductID
GROUP BY
    P.ProductID, P.Name, D.DistributorID, D.Name, C.Name
HAVING
    COUNT(DISTINCT I.DistributorID) = 1
ORDER BY
    P.ProductID;*/
