/*SELECT TOP 10
    Products.Name,
    Products.Description,
    AVG(Feedbacks.Rate) AS AverageRate,
    COUNT(Feedbacks.FeedbackID) AS FeedbacksAmount
FROM
    Products
LEFT JOIN
    Feedbacks ON Products.ProductID = Feedbacks.ProductID
GROUP BY
    Products.ProductID, Products.Name, Products.Description
ORDER BY
    AverageRate DESC,
    FeedbacksAmount DESC;*/

