/*CREATE PROCEDURE usp_SendFeedback
    @CustomerId INT,
    @ProductId INT,
    @Rate DECIMAL(10, 2),
    @Description NVARCHAR(255)
AS
BEGIN
    DECLARE @FeedbackCount INT;

    -- Check the current feedback count for the customer and product
    SELECT @FeedbackCount = COUNT(*)
    FROM Feedbacks
    WHERE CustomerId = @CustomerId AND ProductId = @ProductId;

    -- Check if the customer has more than 3 feedbacks for the product
    IF @FeedbackCount >= 3
    BEGIN
        -- Rollback changes
        ROLLBACK;
        
        -- Throw an exception with the specified message, severity, and state
        THROW 50000, 'You are limited to only 3 feedbacks per product!', 1;
    END
    ELSE
    BEGIN
        -- Insert the new feedback
        INSERT INTO Feedbacks (Description, Rate, ProductId, CustomerId)
        VALUES (@Description, @Rate, @ProductId, @CustomerId);

        -- Commit changes
        COMMIT;
    END
END;*/

