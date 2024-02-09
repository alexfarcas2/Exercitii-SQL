/*CREATE TRIGGER trg_DeleteProductRelations
ON Products
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete all relations of the deleted product from ProductsIngredients table
    DELETE FROM ProductsIngredients
    WHERE ProductID IN (SELECT ProductID FROM DELETED);
    
    -- Delete all related feedbacks of the deleted product from Feedbacks table
    DELETE FROM Feedbacks
    WHERE ProductID IN (SELECT ProductID FROM DELETED);
END;*/

