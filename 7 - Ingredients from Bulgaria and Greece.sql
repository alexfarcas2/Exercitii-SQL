/*SELECT TOP 15
    Ingredients.Name,
    Ingredients.Description,
    Countries.Name AS CountryName
FROM
    Ingredients
JOIN
    Countries ON Ingredients.OriginCountryId = Countries.CountryId
WHERE
    Countries.Name IN ('Bulgaria', 'Greece')
ORDER BY
    Ingredients.Name ASC,
    Countries.Name ASC;*/

