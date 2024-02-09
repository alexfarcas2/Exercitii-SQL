/*CREATE FUNCTION udf_GetRating (@ProductName NVARCHAR(25))
RETURNS NVARCHAR(10)
AS
BEGIN
    DECLARE @Rating NVARCHAR(10);

    SELECT
        @Rating = CASE
                     WHEN AVG(F.Rate) < 5 THEN 'Bad'
                     WHEN AVG(F.Rate) BETWEEN 5 AND 8 THEN 'Average'
                     WHEN AVG(F.Rate) > 8 THEN 'Good'
                     ELSE 'No rating'
                  END
    FROM
        Products P
    LEFT JOIN
        Feedbacks F ON P.ProductID = F.ProductID
    WHERE
        P.Name = @ProductName;

    RETURN @Rating;
END;*/

