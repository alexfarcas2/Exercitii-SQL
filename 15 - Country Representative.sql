/*WITH RankedDistributors AS (
    SELECT
        D.CountryID,
        D.Name AS DistributorName,
        ROW_NUMBER() OVER (PARTITION BY D.CountryID ORDER BY COUNT(I.IngredientID) DESC) AS Rank
    FROM
        Distributors D
    JOIN
        Ingredients I ON D.DistributorID = I.DistributorID
    GROUP BY
        D.CountryID, D.DistributorID, D.Name
)
SELECT
    C.Name AS CountryName,
    RD.DistributorName
FROM
    Countries C
JOIN
    RankedDistributors RD ON C.CountryID = RD.CountryID
WHERE
    RD.Rank = 1
ORDER BY
    CountryName ASC, DistributorName ASC;*/

