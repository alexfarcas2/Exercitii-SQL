/*SELECT
    FirstName,
    Age,
    PhoneNumber
FROM
    Customers
WHERE
    (Age >= 21 AND CHARINDEX('an', FirstName) > 0)
    OR (RIGHT(PhoneNumber, 2) = '38' AND CountryID <> (SELECT CountryID FROM Countries WHERE Name = 'Greece'))
ORDER BY
    FirstName ASC,
    Age DESC;*/

