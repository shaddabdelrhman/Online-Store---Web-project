-- Update Item procedure
CREATE OR ALTER PROCEDURE UpdateItem
    @Id          INT,
    @name        VARCHAR(50),
    @price       VARCHAR(50),
    @img_src     VARCHAR(50),
    @description VARCHAR(50)
AS
BEGIN
    UPDATE Items
    SET name = @name,
        price = @price,
        img_src = @img_src,
        description = @description
    WHERE Id = @Id
END
GO 