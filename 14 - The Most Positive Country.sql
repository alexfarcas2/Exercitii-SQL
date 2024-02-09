/*SELECT
    C.Name AS CountryName,
    AVG(F.Rate) AS FeedbackRate
FROM
    Countries C
JOIN
    Customers Cu ON C.CountryID = Cu.CountryID
LEFT JOIN
    Feedbacks F ON Cu.CustomerID = F.CustomerID
WHERE
    F.Rate >= 5
GROUP BY
    C.CountryID, C.Name
HAVING
    AVG(F.Rate) = (SELECT TOP 1 AVG(F2.Rate) AS MaxRate
                   FROM Feedbacks F2
                   JOIN Customers Cu2 ON F2.CustomerID = Cu2.CustomerID
                   JOIN Countries C2 ON Cu2.CountryID = C2.CountryID
                   WHERE F2.Rate >= 5
                   GROUP BY C2.CountryID
                   ORDER BY MaxRate DESC)
ORDER BY
    CountryName ASC;*/

